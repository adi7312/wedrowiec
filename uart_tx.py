import time
import os
import serial

def send_binary_numbers_over_com(file_path, port, baudrate=9600, delay=0.1):
    """
    Parses space-separated numbers from a file and sends them as raw binary bytes.
    Example text: "0 0 0 0 0 0 0 0" -> Transmitted as: b'\x00\x00\x00\x00\x00\x00\x00\x00'
    """
    if not os.path.exists(file_path):
        print(f"Error: The file '{file_path}' does not exist.")
        return

    try:
        print(f"Opening {port} at {baudrate} baud...")
        ser = serial.Serial(port, baudrate, timeout=1)
        
        # Guard time for target hardware reset (e.g., Arduino bootloader)
        time.sleep(2) 
        
        print(f"Starting binary transmission of '{file_path}'...")
        
        with open(file_path, 'r', encoding='utf-8') as file:
            for line_num, line in enumerate(file, 1):
                # Split line by spaces and convert valid numeric tokens to integers
                try:
                    numbers = [int(token) for token in line.split() if token.strip().isdigit()]
                except ValueError:
                    print(f"[Line {line_num}] Warning: Skipped line due to formatting error.")
                    continue

                if not numbers:
                    continue  # Skip blank lines

                # Pack the integers directly into an 8-bit byte array
                # Note: Integer values must be in the range 0 <= x <= 255
                try:
                    payload = bytes(numbers)
                except ValueError:
                    print(f"[Line {line_num}] Error: Value out of 0-255 range. Skipping line.")
                    continue

                # Write raw binary payload to the serial hardware
                ser.write(payload)
                
                # Console output displays the raw integer list being sent
                print(f"[Line {line_num}] Sent {len(payload)} bytes -> {list(payload)}")
                
                time.sleep(delay)
                
        print("\nTransmission completed successfully!")

    except serial.SerialException as e:
        print(f"\nSerial Error: Could not interface with port {port}.\nDetails: {e}")
    except Exception as e:
        print(f"\nAn unexpected error occurred: {e}")
    finally:
        if 'ser' in locals() and ser.is_open:
            ser.close()
            print(f"Closed port {port}.")

# --- Hardware Configuration ---
if __name__ == "__main__":
    FILE_TO_SEND = "image_test_data.txt"
    COM_PORT = "COM3"          # Adjust to your specific COM port or '/dev/tty...'
    BAUD_RATE = 115200
    LINE_DELAY = 2          # 200ms delay between lines to safeguard device buffers

    send_binary_numbers_over_com(FILE_TO_SEND, COM_PORT, BAUD_RATE, LINE_DELAY)

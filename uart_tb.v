`timescale 1ns / 1ps

module uart_text_tb;

    // Parameters
    parameter CLK_HZ     = 100_000_000;
    parameter BAUD_RATE  = 115200;
    parameter BIT_PERIOD = 1_000_000_000 / BAUD_RATE; // Time per bit in ns

    real CLK_PERIOD = (1_000_000_000.0 / CLK_HZ);
    // Signals
    reg uart_tx = 1'b1; // UART Idle state is High
    integer file_handle;
    integer status = 0;
    reg [7:0] char_buffer = 8'b0;
    wire tvalid;
    wire tready = 1'b0;
    wire [7:0] tdata;
    reg rst = 1'b1, clk = 1'b0;

    uart_rx dut (
        .clk(clk), 
        .rst(rst), 
        .rxd(uart_tx), 
        .uart_tvalid(tvalid),
        .uart_tready(tready), 
        .uart_tdata(tdata)
    );

    // --- UART Send Task ---
    // This task simulates the hardware transmitter
    task send_uart_byte(input [7:0] data);
        integer i;
        begin
            // Start Bit (Low)
            uart_tx = 1'b0;
            #(BIT_PERIOD);

            // Data Bits (LSB First)
            for (i = 0; i < 8; i = i + 1) begin
                uart_tx = data[i];
                #(BIT_PERIOD);
            end

            // Stop Bit (High)
            uart_tx = 1'b1;
            #(BIT_PERIOD);
            
            $display("Sent Character: %c (0x%h)", data, data);
        end
    endtask

    always begin
        clk <= 1'b0;
        #(CLK_PERIOD/2.0);
        clk <= 1'b1;
        #(CLK_PERIOD/2.0);
    end

    // --- Main Simulation Block ---
    initial begin
        // Open the text file
        file_handle = $fopen("/home/szymon/projects/wedrowiec/input.txt", "r");
        
        if (file_handle == 0) begin
            $display("Error: Could not open input.txt");
            $finish;
        end

        rst <= 1'b1;
        #(CLK_PERIOD*10);
        rst <= 1'b0;

        $display("Starting UART Text Transmission...");
        #(BIT_PERIOD * 10); // Wait a few cycles

        // Read file character by character until EOF
        while (!$feof(file_handle)) begin
            status = $fscanf(file_handle, "%c", char_buffer);
            if (status == 1) begin
                send_uart_byte(char_buffer);
            end
        end

        $fclose(file_handle);
        $display("Transmission Complete.");
        #1000;
        $finish;
    end

endmodule
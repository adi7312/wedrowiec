import numpy as np

def main():
    # Load the archive
    test_data = np.load('arrows8_keras_format.npz')

    # List the keys to see what's inside
    print("Keys in file:", test_data.files)

    # Extract images and labels (replace 'x_test'/'y_test' with your actual keys)
    x_train = test_data['x_train']
    y_train = test_data['y_train']

    x_val = test_data['x_val']
    y_val = test_data['y_val']

    x_test = test_data['x_test']
    y_test = test_data['y_test']

    x_train = prepare_data(x_train)
    x_val = prepare_data(x_val)
    x_test = prepare_data(x_test)

    print(f"Test data shape: {x_test.shape}")

    with open('test_data.txt', 'w') as f:
        for image in x_test:
            for row in image:
                for pixel in row:
                    f.write(f"{int(pixel[0])} ")
            f.write('\n')



def prepare_data(x):
    x_normalized = x / 255.0 if x.max() > 1.0 else x

    # 2. Apply threshold (0.5) and cast to integer
    x_binarized = (x_normalized > 0.5).astype(np.float32)
    return x_normalized

if __name__ == "__main__":
    main()

`timescale 1ns / 1ps

module wedrowiec_tb;

    // Parameters
    parameter CLK_HZ     = 100_000_000;
    parameter BAUD_RATE  = 115200;
    parameter BIT_PERIOD = 1_000_000_000 / BAUD_RATE; // Time per bit in ns

    real CLK_PERIOD = (1_000_000_000.0 / CLK_HZ);

    // Signals
    reg uart_tx = 1'b1; // UART Idle state is High
    integer file_handle, out_fhandle;
    integer status = 0;
    reg [7:0] image [0:63];
    reg rst = 1'b1, clk = 1'b0;
    wire wedrowiec_tvalid;
    wire wedrowiec_tready = 1'b1;
    wire signed [31:0] wedrowiec_result;
    wire signed [24:0] wedrowiec_result2;
    reg signed [24:0] pred_vec [0:3];
    reg signed [24:0] max_val;
    integer predicted_label;

    assign wedrowiec_result2 = wedrowiec_result;

    wedrowiec_top dut(
        .clk(clk),
        .rst(rst),
        .rxd(uart_tx),
        .wedrowiec_tdata(wedrowiec_result),
        .wedrowiec_tvalid(wedrowiec_tvalid),
        .wedrowiec_tready(wedrowiec_tready)
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

    integer i;
    initial begin
        file_handle = $fopen("/home/szymon/projects/wedrowiec/test_data.txt", "r");
        out_fhandle = $fopen("predictions.txt", "w");
        
        if (file_handle == 0) begin
            $display("Error: Could not open input.txt");
            $finish;
        end

        rst <= 1'b1;
        #(CLK_PERIOD*10);
        rst <= 1'b0;

        $display("Starting UART Text Transmission...");
        #(BIT_PERIOD * 10);

        while (!$feof(file_handle)) begin
            
            for (i = 0; i < 64; i = i + 1) begin
                status = $fscanf(file_handle, "%d", image[i]);
            end

            for(i = 0; i < 64; i = i + 1) begin
                send_uart_byte(image[i] << 7);
            end

            @(posedge wedrowiec_tvalid);
            for(i = 0; i < 4; i = i + 1) begin
                #(CLK_PERIOD);
                pred_vec[i] = wedrowiec_result2;
            end
            max_val = -25'd5120;
            max_val = {1'b1, max_val[24:0]};
            for (i = 0; i < 4; i = i + 1) begin
                if (pred_vec[i] > max_val) begin
                    max_val = pred_vec[i];
                    predicted_label = i;
                end
            end
            $fdisplay(out_fhandle, "%d", predicted_label);
            $fflush(out_fhandle);
            #0;
        end


        $fclose(file_handle);
        $fclose(out_fhandle);
        $display("Transmission Complete.");
        #1000;
        $finish;
    end


    
endmodule
`timescale 1ns / 1ps

module uart_rx (
    input wire clk,
    input wire rst,
    input wire rxd,
    
    (* MARK_DEBUG = "TRUE" *) output reg uart_tvalid,
    (* MARK_DEBUG = "TRUE" *) input wire uart_tready,
    (* MARK_DEBUG = "TRUE" *) output reg [7:0] uart_tdata
);

localparam IDLE = 3'h0;
localparam START = 3'h1;
localparam SHIFT = 3'h2;
localparam STOP = 3'h3;
localparam SWAIT = 3'h4;

(* MARK_DEBUG = "TRUE" *) reg [2:0] stan;
(* MARK_DEBUG = "TRUE" *) reg din;
(* MARK_DEBUG = "TRUE" *) reg [7:0] shreg;
(* MARK_DEBUG = "TRUE" *) reg [12:0] timbit;
(* MARK_DEBUG = "TRUE" *) reg [3:0] bit_cnt;
localparam FULL_BIT_TIME = 32'd867; // baudrate 115200 bps
localparam HALF_BIT_TIME = (FULL_BIT_TIME+1)/2-1; 

always @(posedge clk) begin
    if (rst == 1'b1) begin
        stan <= IDLE;
        shreg <= 7'b0;
        din <= 1'b1;
        bit_cnt <= 3'd0;
    end else begin
        din <= rxd;
        if (stan == IDLE) begin
            if (din == 1'b0) begin
                timbit <= 13'b0;
                stan <= START;
            end else begin
                stan <= IDLE;
            end
        end else if (stan == START) begin
            if (din ==  1'b0) begin
                timbit <= timbit + 1;
            end else begin
                stan <= IDLE;
            end
            if (timbit >= HALF_BIT_TIME) begin
                stan <= SHIFT;
                bit_cnt <= 4'b0;
                timbit <= 13'b0;
            end
        end else if (stan == SHIFT) begin
            if (timbit >= FULL_BIT_TIME) begin
                bit_cnt <= bit_cnt + 1;
                timbit <= 13'b0;
                shreg <= {din, shreg[7:1]};
            end else begin
                timbit <= timbit + 1;
            end
            if (bit_cnt == 8) begin
                stan <= STOP;
            end
        end
        else if (stan == STOP) begin
            if (timbit >= FULL_BIT_TIME) begin
                if (din == 1) begin
                    stan <= SWAIT;
                end else begin
                    stan <= IDLE;
                end
            end else begin
                timbit <= timbit + 1;
            end
        end else if (stan == SWAIT) begin
            stan <= IDLE;
        end
    end
end

always @(posedge clk) begin
    if (rst == 1) begin
        uart_tvalid <= 1'b0;
        uart_tdata <= 8'b0;
    end else begin
        if ((uart_tvalid == 1 && uart_tready == 1) || stan == SHIFT) begin
            uart_tvalid <= 0;
        end
        else if (stan == SWAIT) begin
            uart_tvalid <= 1;
            uart_tdata <= shreg;
        end
    end
end
    
endmodule
module wedrowiec_top (
    input wire clk,
    input wire rst,
    input wire rxd,

    output wire [127:0] wedrowiec_tdata,
    output wire wedrowiec_tvalid,
    input wire wedrowiec_tready,

    output wire ap_done,
    output wire ap_idle,
    output wire ap_ready,
    input wire ap_start
);

wire uart_tvalid;
wire uart_tready;
wire [7:0] uart_tdata;

uart_rx uart(
    .clk(clk),
    .rst(rst),
    .rxd(rxd),
    .uart_tvalid(uart_tvalid),
    .uart_tready(uart_tready),
    .uart_tdata(uart_tdata)
);

assign uart_tready = 1'b1;

reg [63:0] image_row_in;
wire row_ready;
reg row_valid;

wedrowiec_hls_0 wedrowiec_hls (
  .input_layer_TDATA(image_row_in),    // input wire [63 : 0] input_layer_TDATA
  .input_layer_TREADY(row_ready),  // output wire input_layer_TREADY
  .input_layer_TVALID(row_valid),  // input wire input_layer_TVALID
  .layer9_out_TDATA(wedrowiec_tdata),      // output wire [127 : 0] layer9_out_TDATA
  .layer9_out_TREADY(wedrowiec_tready),    // input wire layer9_out_TREADY
  .layer9_out_TVALID(wedrowiec_tvalid),    // output wire layer9_out_TVALID
  .ap_clk(clk),                          // input wire ap_clk
  .ap_rst_n(~rst),                      // input wire ap_rst_n
  .ap_done(ap_done),                        // output wire ap_done
  .ap_idle(ap_idle),                        // output wire ap_idle
  .ap_ready(ap_ready),                      // output wire ap_ready
  .ap_start(ap_start)                      // input wire ap_start
);

reg [15:0] row_cnt, col_cnt;
always @(posedge clk ) begin
    if(rst == 1) begin
        row_cnt <= 0;
        col_cnt <= 0;
        row_valid <= 0;
        image_row_in <= 0;    
    end else if(uart_tvalid == 1 && row_cnt < 8) begin
        image_row_in <= {uart_tdata, image_row_in[63:8]};
        //image_row_in <= {image_row_in[55:0], uart_tdata};
        col_cnt <= col_cnt + 1;
        row_valid <= 0;
    end else if(col_cnt == 8) begin
        row_valid <= 1;
    end
    if(row_valid == 1 && row_ready == 1) begin
        col_cnt <= 0;
        row_valid <= 0;
    end
end
    
endmodule
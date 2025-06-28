// Code your design here
module fir_filter (
    input clk,
    input rst,
    input signed [7:0] x_in,          // Input sample
    output reg signed [15:0] y_out    // Filtered output
);

    // 3-tap filter coefficients (changeable)
    parameter signed [7:0] h0 = 8'd1;
    parameter signed [7:0] h1 = 8'd2;
    parameter signed [7:0] h2 = 8'd3;

    // Delay line to store input samples
    reg signed [7:0] x_reg0, x_reg1, x_reg2;

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            x_reg0 <= 0;
            x_reg1 <= 0;
            x_reg2 <= 0;
            y_out <= 0;
        end else begin
            // Shift input samples
            x_reg2 <= x_reg1;
            x_reg1 <= x_reg0;
            x_reg0 <= x_in;

            // FIR calculation: y[n] = h0*x[n] + h1*x[n−1] + h2*x[n−2]
            y_out <= h0 * x_reg0 + h1 * x_reg1 + h2 * x_reg2;
        end
    end

endmodule

// Code your testbench here
// or browse Examples
module tb_fir_filter;

    reg clk, rst;
    reg signed [7:0] x_in;
    wire signed [15:0] y_out;

    fir_filter uut (
        .clk(clk),
        .rst(rst),
        .x_in(x_in),
        .y_out(y_out)
    );

    // Clock generation
    initial clk = 0;
    always #5 clk = ~clk;

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, tb_fir_filter);
        $dumpvars(1, uut);

        // Reset and initialize
        rst = 1;
        x_in = 0;
        #10;
        rst = 0;

        // Feed input samples
        x_in = 8'd1; #10;
        x_in = 8'd2; #10;
        x_in = 8'd3; #10;
        x_in = 8'd4; #10;
        x_in = 8'd0; #10;

        $finish;
    end

endmodule

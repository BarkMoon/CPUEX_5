`default_nettype none
module fdiv #(parameter NSTAGE = 4)(
    input wire [31:0] x1,
    input wire [31:0] x2,
    output wire [31:0] y,
    //output wire ovf,
    input wire clk,
    input wire rstn);

// stage = 0 (x1, x2 -> x1i, x2i)

wire isinf = (&x1[30:23]) | (&x2[30:23]);
wire [7:0] x1es = ((&x2[30:25]) && ~isinf && (|x1[30:24])) ? x1[30:23] - 2 : x1[30:23];
wire [7:0] x2es = ((&x2[30:25]) && ~isinf && (|x1[30:24])) ? x2[30:23] - 2 : x2[30:23];
wire [31:0] x1i = {x1[31], x1es, x1[22:0]};
wire [31:0] x2i = {x2[31], x2es, x2[22:0]};

reg [31:0] x1ir[1:0];
wire [31:0] x2inv;

finv u1 (x2i, x2inv, clk, rstn);  // NSTAGE = 2

wire [31:0] ans;
wire ovf;

fmul u2 (x1ir[1], x2inv, ans, ovf, clk, rstn);  // NSTAGE = 2

assign y = ans;

always @(posedge clk) begin
    if(~rstn) begin
        x1ir[0] <= 'b0;
    end else begin
        x1ir[0] <= x1i;
        x1ir[1] <= x1ir[0];
    end
end

endmodule
`default_nettype wire
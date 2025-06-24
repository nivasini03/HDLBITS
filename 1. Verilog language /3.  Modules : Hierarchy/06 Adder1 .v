module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
   
    wire cin1,cin2,cout1,cout2;
    wire [15:0]sum1,sum2;
    add16 a1(.a(a[15:0]),.b(b[15:0]),.cin(cin1),.sum(sum1),.cout(cout1));
    add16 a2(.a(a[31:16]),.b(b[31:16]),.cin(cout1),.sum(sum2),.cout(cout2));
    assign sum[15:0] = sum1;
    assign sum[31:16] = sum2;

endmodule

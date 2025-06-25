module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
); 
    wire [31:0] b1;
    assign b1 = (sub)?(~b):b;
    wire [15:0] sum1,sum2;
    wire cout1,cout2;
    add16 a1(.a(a[15:0]),.b(b1[15:0]),.cin(sub),.sum(sum1),.cout(cout1));
    add16 a2(.a(a[31:16]),.b(b1[31:16]),.cin(cout1),.sum(sum2),.cout(cout2));
    assign sum = {sum2,sum1};
endmodule

module top_module( 
    input [99:0] a, b,
    input cin,
    output cout,
    output [99:0] sum );
    wire [100:0] c ;
    assign c[0] = cin;
    genvar i;
    generate
        for(i = 0;i<=99;i=i+1)begin : add
           assign sum[i] = a[i]^b[i]^c[i];
            assign c[i+1] = (a[i] & b[i]) | (c[i] & b[i]) | (c[i] & a[i]);
            
        end
        endgenerate
    assign cout = c[100];

endmodule

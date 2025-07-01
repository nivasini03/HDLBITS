module top_module (
    input [3:0] x,
    input [3:0] y, 
    output [4:0] sum);
    wire c1,c2,c3,c4;
    FA f1(x[0],y[0],0,c1,sum[0]);
    FA f2(x[1],y[1],c1,c2,sum[1]);
    FA f3(x[2],y[2],c2,c3,sum[2]);
    FA f4(x[3],y[3],c3,c4,sum[3]);
    assign sum[4] = c4;
endmodule
module FA(
    input a,b,cin,
    output cout,sum);
    assign sum = a^b^cin;
    assign cout = a&b | b&cin | a&cin; 
endmodule

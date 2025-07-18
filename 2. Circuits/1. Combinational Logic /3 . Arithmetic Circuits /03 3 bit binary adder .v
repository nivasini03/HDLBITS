module top_module( 
    input [2:0] a, b,
    input cin,
    output [2:0] cout,
    output [2:0] sum );
    FA f1(a[0],b[0],cin,cout[0],sum[0]);
    FA f2(a[1],b[1],cout[0],cout[1],sum[1]);
    FA f3(a[2],b[2],cout[1],cout[2],sum[2]);
    

endmodule
module FA( input a,b,cin,
          output cout ,sum);
    assign cout = (a&b)|(b&cin)|(cin&a);
    assign sum = a^b^cin;
endmodule

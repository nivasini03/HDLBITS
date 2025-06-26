module top_module( 
    input [99:0] a, b,
    input cin,
    output [99:0] cout,
    output [99:0] sum );
    reg [99:0] s,c;
    reg carry;
    integer i;
    always @(*)begin
        carry = cin;
        for(i=0;i<100;i=i+1)begin
            s[i] =a[i] ^ b[i] ^carry;
            c[i] = (a[i]&b[i])|(b[i]&carry)|(carry&a[i]);
            carry = c[i];
        end
    end
    assign sum = s;
    assign cout = c;  

endmodule

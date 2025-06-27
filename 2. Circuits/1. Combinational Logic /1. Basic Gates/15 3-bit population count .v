module top_module( 
    input [2:0] in,
    output [1:0] out );
    integer i;
    reg [1:0]count;
    always @(*)begin
        count = 2'b0;
        for(i =0;i<3;i=i+1)begin
            if(in[i])begin
                count = count +1 ;
            end
        end
    end
    assign out = count;
            

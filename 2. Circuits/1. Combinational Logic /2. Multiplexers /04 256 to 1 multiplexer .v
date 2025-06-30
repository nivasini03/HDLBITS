module top_module( 
    input [255:0] in,
    input [7:0] sel,
    output out );
    reg o;
    integer i;
    always @(*)begin
        for( i =0;i<=255;i=i+1)begin
            case(sel)
                i: o = in[i];
            endcase
        end
    end
    assign out =o;
endmodule

module top_module( 
    input [15:0] a, b, c, d, e, f, g, h, i,
    input [3:0] sel,
    output [15:0] out );
    assign out = (sel == 4'd0) ? a :
                 (sel == 4'd1) ? b :
                 (sel == 4'd2) ? c :
                 (sel == 4'd3) ? d :
                 (sel == 4'd4) ? e :
                 (sel == 4'd5) ? f :
                 (sel == 4'd6) ? g :
                 (sel == 4'd7) ? h :
                 (sel == 4'd8) ? i :
                 16'hFFFF;  // Default for sel 9–15
    

endmodule

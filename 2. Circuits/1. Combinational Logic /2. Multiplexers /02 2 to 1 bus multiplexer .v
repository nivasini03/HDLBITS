module top_module( 
    input [99:0] a, b,
    input sel,
    output [99:0] out );
    genvar i;
    generate
      for(i=0;i<=99;i=i+1)begin:mux
            assign out[i] = (sel)?b[i]:a[i];
        end
    endgenerate
    

endmodule

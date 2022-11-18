module mux #(
    D_WIDTH = 32
) (
    input   logic                ALUsrc,
    input   logic[D_WIDTH-1:0]   regOp2,
    input   logic[D_WIDTH-1:0]   ImmOp,
    output  logic[D_WIDTH-1:0]   ALUop2
);
always_comb
    if(ALUsrc)
        ALUsrc = ImmOp;
    else
        AlUsrc = regOp2;
    
endmodule

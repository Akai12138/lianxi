module PC_counter #(
    parameters D_WIDTH = 32
) (
    input   logic                   clk,
    input   logic                   rst,
    input   logic                   PCsrc,// decide jump or increment by 4
    input   logic[D_WIDTH-1:0]      ImmOp,
    input   logic[D_WIDTH-1:0]      branch_PC
    input   logic[D_WIDTH-1:0]      pc,
    output  logic[D_WIDTH-1:0]      pc_next
);


assign branch_PC = pc + ImmOp;//for jump instruction

always_ff @(posedge clk)
begin

    if      ( rst )         pc_next <= {D_WIDTH{1'h0}};
    else if (PCsrc)         pc_next <= branch_PC;
    else                    pc_next <= pc + {{D_WIDTH-3{1'h0}},{3'h4}};
    
    
end
    
endmodule

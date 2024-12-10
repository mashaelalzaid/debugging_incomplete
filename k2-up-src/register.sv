module register#(
    parameter n = 4
)(
    input logic clk,
    input logic resetn,
    input logic wen,
    input logic [n-1:0]D,
    output logic [n-1:0]Q
);

    always_ff @(clk)
    begin 
        if(~resetn) Q <= 0;
        else if(wen) Q <= D;
    end
endmodule : register
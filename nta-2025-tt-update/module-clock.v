module assign_byte (
    input wire [7:0] byte,
    input wire       addr,
    input wire       clk,
);
    reg [15:0] internal_register;
    always @(posedge clk) begin // HLa
        if (!addr) begin
            internal_register[7:0] = byte; // HLa
        end else begin
            internal_register[15:8] = byte; // HLa
        end
    end
endmodule

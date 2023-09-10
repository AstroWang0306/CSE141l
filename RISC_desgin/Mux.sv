// Module Name:    Mux

module Mux (
    input [1:0]         Sel,        // selector for the mux
    input [7:0]         A, B, C,    // inputs to the mux
    output logic [7:0]  Out );      // output of the mux

    // A if Sel==0
    // B if Sel==1
    // C if Sel==2
    // 0 if Sel==3 (will never occur)
    always_comb begin
        case(Sel)
            2'b00   : Out = A;
            2'b01   : Out = B;
            2'b10   : Out = C;
            default : Out = 0;
        endcase
    end
endmodule
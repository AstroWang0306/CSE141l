// Module Name:    DatMem

module DataMem (
  input               Clk,
                      Reset,
                      WriteEn,
  input       [7:0]   ReadA,  // 8-bit-wide pointer to 256-deep memory
  input       [7:0]   ReadB, 
  input       [7:0]   DataIn,		    // 8-bit-wide data path, also
  output logic[7:0]   DataOut);

  logic [7:0] Core[256];       // 8x256 two-dimensional array -- the memory itself
									 
               // reads are combinational
    assign DataOut = Core[ReadA];        // yes, DataOut will always be the value at ReadB
                             // even during a write. This is fine, since
                                  // the output will only be used with relevant instructions
                                  
  always_ff @ (posedge Clk)
   if (Reset) begin		    // writes are sequential
    if(WriteEn) begin
      Core[ReadA] <= DataIn;
	end	
   end
endmodule

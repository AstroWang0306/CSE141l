module InstROM (
  input       [10:0] InstAddress,    // 10-bit addressing for instructions in case we have need for that many instructions
  output logic[8:0] InstOut);       // 9-bit instructions per project specification
	 
  logic[8:0] inst_rom[2**11];
  always_comb InstOut = inst_rom[InstAddress];

  // Load instruction memory from external file
  
  initial begin
    $readmemb("C:/UCSD/CSE141L/Milestone2/final/prog1_prog2_prog3.hex", inst_rom);
  end 
  
endmodule
// Module Name:    Reg

module RegFile (		  
  input                Reset    ,
                       Clk      ,
                       WriteEn  ,
  input        [1:0]   RaddrA   ,				
                       RaddrB   ,
                       Waddr    ,
  input        [7:0]   DataIn   ,        
  output logic [7:0]   DataOutA ,
                       DataOutB
);

logic [7:0] Registers[4];

// combinational reads 
always_comb begin 
  DataOutA = Registers[RaddrA];	 
  DataOutB = Registers[RaddrB];	
end

// sequential writes 
always_ff @ (posedge Clk) begin
  // clear on reset bc it might come in handy for debugging purposes
  if (Reset) begin
    Registers[0] <= 0;
    Registers[1] <= 0;
    Registers[2] <= 0;
    Registers[3] <= 0;
  end
  
  // when WriteEn set, write input data (DataIn) to the reg at write address (Waddr)
  if (WriteEn) begin	           
    Registers[Waddr] <= DataIn; 
  end
end

endmodule

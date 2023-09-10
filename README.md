CSE141L: 23S2
To run my program in Modelsim, add all of the .sv files in RISC_desgin. It is important to put Definitions.sv file in the first order. Otherwise, there are some errors in ALU.sv and CtrlDcd.sv files. 
Select the test files and add it into the Modelsim. 
In InstMem.sv file, change the insturction files such as program1_machine.hex based on which program is being tested. 
Now, it is able to run the program. 

In my implementation, I was able to compile all of the RSIC files without eny errors. However, when sync with the test files, there are some issues that does not generate any outputs. 
Below is the picture of the transcript:
![image](https://github.com/AstroWang0306/CSE141l/assets/97696773/71ae8124-32bd-4f8d-b100-747cf15e2093)

![image](https://github.com/AstroWang0306/CSE141l/assets/97696773/d7f96487-d989-4f20-913e-0cceb3900be2)

One of the reasons that causes this issue is becuase the variables in DatMem.sv files does not match the test files. Also, these files are created first so it is hard to debug and correct to sync ether the test files or my RSIC_design files. 

Another reason may be there are some logical errors in my .sv files or program files, which cause infinite loop. As I tested my program on EDAplayground, it compiles without any errors. However, the runtime exceeds the limits thus it shuts down the whle program. 

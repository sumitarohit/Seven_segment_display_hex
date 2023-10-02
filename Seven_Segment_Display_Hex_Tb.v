`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: NIELIT NEW DELHI
// Engineer: ROHIT KUMAR
// 
// Create Date: 23.08.2023 10:59:58
// Design Name: Seven_Segment_Display_Of_Hexadecimal_Number_Testbench
// Module Name: Seven_Segment_Display_Hex_Tb
// Project Name: Seven_Segment_Display_Of_Hexadecimal_Number

//////////////////////////////////////////////////////////////////////////////////

module Seven_Segment_Display_Hex_Tb();

reg [3:0] hex;
wire [6:0] seg;
integer i;

   // Instantiate the Unit Under Test (UUT)
 Seven_Segment_Display_Hex  uut(.hex(hex),.seg(seg));

//Apply inputs
    initial begin
        for(i = 0; i< 16; i = i+1) //run loop for 0 to 15.
        begin
            hex = i; 
            #100; //wait for 100 ns
        end     
    end
endmodule

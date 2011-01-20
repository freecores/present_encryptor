//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
// Design Name: Present Cipher S-BOX                                         //
// Module Name: sbox                                                         //
// Language:    Verilog                                                      //
// Date Created: 1389/10/26                                                  //
// Description:                                                              //
//                                                                           //
// Company:                                                                  //
// Engineer: Reza Ameli                                                      //
//                                                                           //
// Dependencies:                                                             //
//                                                                           //
// Revision:                                                                 //
//                                                                           //
// Additional Comments:                                                      //
//      Target Device:                                                       //
//      Simulation Tool: Active-HDL                                          //
//      Synthesis Tool:  ISE 12.2                                            //
//      Known Bugs:                                                          //
//                                                                           //
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

module sbox (data_o,data_i);

//- Module IOs ----------------------------------------------------------------

output reg [3:0] data_o;
input  wire [3:0] data_i;

//- Continuous Assigments------------------------------------------------------

always @(data_i)
    case (data_i)
        4'h0 : data_o = 4'hC;
        4'h1 : data_o = 4'h5;
        4'h2 : data_o = 4'h6;
        4'h3 : data_o = 4'hB;
        4'h4 : data_o = 4'h9;
        4'h5 : data_o = 4'h0;
        4'h6 : data_o = 4'hA;
        4'h7 : data_o = 4'hD;
        4'h8 : data_o = 4'h3;
        4'h9 : data_o = 4'hE;
        4'hA : data_o = 4'hF;
        4'hB : data_o = 4'h8;
        4'hC : data_o = 4'h4;
        4'hD : data_o = 4'h7;
        4'hE : data_o = 4'h1;
        4'hF : data_o = 4'h2;
    endcase 

//-----------------------------------------------------------------------------
endmodule
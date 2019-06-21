module instructionMemory (ck, clk, endereco, write_enable, position, copy_inst, saida);
	input ck, clk, write_enable;
	input [10:0] position, endereco;	
	input [31:0] copy_inst;
	reg [31:0] MEM_INSTRUCTION[1200:0];
	output reg[31:0] saida;





	always @(posedge clk) begin
	if(write_enable)
		MEM_INSTRUCTION[position] = copy_inst;			
	if(endereco ==0) begin
MEM_INSTRUCTION[0] = 32'b00110100000000000000000000000001; /*jump    1  */
MEM_INSTRUCTION[1] = 32'b00110100000000000000000000000010; /*JMP     2  */
MEM_INSTRUCTION[2] = 32'b00100111100000000000000000000101;/*LOI    $28  5  */
MEM_INSTRUCTION[3] = 32'b00001011100111000000000000000001;/*ADCI   $28 $28  1 */
MEM_INSTRUCTION[4] = 32'b00100111010000000000000000000001;/*LOI    $26  1  */
MEM_INSTRUCTION[5] = 32'b00100110000000000000000000000000;/*LOI    $16  0  */
MEM_INSTRUCTION[6] = 32'b00100101000000000000000000000000;/*LOI    $8   0  */
MEM_INSTRUCTION[7] = 32'b00100111001000000000000000110010;/*LOI    $25  50 */
MEM_INSTRUCTION[8] = 32'b00100110111000000000000001000110;/*LOI    $23  70 */
MEM_INSTRUCTION[9] = 32'b00100111000000000000000000000000;/*LOI    $24  0  */
MEM_INSTRUCTION[10] = 32'b00100111011000000000000000000001;/*LOI    $27  1  */
MEM_INSTRUCTION[11] = 32'b00100010111110101101100000000000; /*STWO   $23 $26  $27*/
MEM_INSTRUCTION[12] = 32'b00100111110000000000001100100000;/*LOI    $30  800 */
MEM_INSTRUCTION[13] = 32'b10011111011111100000000000000000;/*renameProgReg $27 $30  0 */
MEM_INSTRUCTION[14] = 32'b00001011010110100000000000000001;/*ADCI   $26 $26  1 */
MEM_INSTRUCTION[15] = 32'b00100111011000000000000000000010;/*LOI    $27  2  */
MEM_INSTRUCTION[16] = 32'b00100010111110101101100000000000; /*STWO   $23 $26  $27*/
MEM_INSTRUCTION[17] = 32'b00100111110000000000001101011100;/*LOI    $30  860 */
MEM_INSTRUCTION[18] = 32'b10011111011111100000000000000000;/*renameProgReg $27 $30  0 */
MEM_INSTRUCTION[19] = 32'b00001011010110100000000000000001;/*ADCI   $26 $26  1 */
MEM_INSTRUCTION[20] = 32'b00100111011000000000000000000011;/*LOI    $27  3  */
MEM_INSTRUCTION[21] = 32'b00100010111110101101100000000000; /*STWO   $23 $26  $27*/
MEM_INSTRUCTION[22] = 32'b00100111110000000000001110011000;/*LOI    $30  920 */
MEM_INSTRUCTION[23] = 32'b10011111011111100000000000000000;/*renameProgReg $27 $30  0 */
MEM_INSTRUCTION[24] = 32'b00001011010110100000000000000001;/*ADCI   $26 $26  1 */
MEM_INSTRUCTION[25] = 32'b00100111011000000000000000000100;/*LOI    $27  4  */
MEM_INSTRUCTION[26] = 32'b00100010111110101101100000000000; /*STWO   $23 $26  $27*/
MEM_INSTRUCTION[27] = 32'b00100111110000000000001111010100;/*LOI    $30  980 */
MEM_INSTRUCTION[28] = 32'b10011111011111100000000000000000;/*renameProgReg $27 $30  0 */
MEM_INSTRUCTION[29] = 32'b00001011010110100000000000000001;/*ADCI   $26 $26  1 */
MEM_INSTRUCTION[30] = 32'b00100111011000000000000000000101;/*LOI    $27  5  */
MEM_INSTRUCTION[31] = 32'b00100010111110101101100000000000; /*STWO   $23 $26  $27*/
MEM_INSTRUCTION[32] = 32'b00100111110000000000010000010000;/*LOI    $30  1040 */
MEM_INSTRUCTION[33] = 32'b10011111011111100000000000000000;/*renameProgReg $27 $30  0 */
MEM_INSTRUCTION[34] = 32'b10001000000000000000000000001011; /*li6     11 */
MEM_INSTRUCTION[35] = 32'b10000100000000000000000000000000; /*emit    0  */
MEM_INSTRUCTION[36] = 32'b01010011111000000000000000000000;/*IN     $31  0  */
MEM_INSTRUCTION[37] = 32'b00100111110000000000000000000001;/*LOI    $30  1  */
MEM_INSTRUCTION[38] = 32'b01000011110111110000000000101011;/*BNEQ   $30 $31  43*/
MEM_INSTRUCTION[39] = 32'b10001000000000000000000000001101; /*li6     13 */
MEM_INSTRUCTION[40] = 32'b10000100000000000000000000000000; /*emit    0  */
MEM_INSTRUCTION[41] = 32'b00110100000000000000000000100010; /*JMP     34 */
MEM_INSTRUCTION[42] = 32'b00110100000000000000000000100010; /*JMP     34 */
MEM_INSTRUCTION[43] = 32'b00100111110000000000000000000010;/*LOI    $30  2  */
MEM_INSTRUCTION[44] = 32'b01000011110111110000000000110001;/*BNEQ   $30 $31  49*/
MEM_INSTRUCTION[45] = 32'b10001000000000000000000000001110; /*li6     14 */
MEM_INSTRUCTION[46] = 32'b10000100000000000000000000000000; /*emit    0  */
MEM_INSTRUCTION[47] = 32'b00110100000000000000000001110010; /*JMP     114 */
MEM_INSTRUCTION[48] = 32'b00110100000000000000000000100010; /*JMP     34 */
MEM_INSTRUCTION[49] = 32'b00100111110000000000000000000011;/*LOI    $30  3  */
MEM_INSTRUCTION[50] = 32'b01000011110111110000000000110111;/*BNEQ   $30 $31  55*/
MEM_INSTRUCTION[51] = 32'b10001000000000000000000000001111; /*li6     15 */
MEM_INSTRUCTION[52] = 32'b10000100000000000000000000000000; /*emit    0  */
MEM_INSTRUCTION[53] = 32'b00110100000000000000000000111101; /*JMP     61 */
MEM_INSTRUCTION[54] = 32'b00110100000000000000000000100010; /*JMP     34 */
MEM_INSTRUCTION[55] = 32'b00100111110000000000000000000100;/*LOI    $30  4  */
MEM_INSTRUCTION[56] = 32'b01000011110111110000000000100010;/*BNEQ   $30 $31  34*/
MEM_INSTRUCTION[57] = 32'b10001000000000000000000000010000; /*li6     16 */
MEM_INSTRUCTION[58] = 32'b10000100000000000000000000000000; /*emit    0  */
MEM_INSTRUCTION[59] = 32'b00110100000000000000000001011111; /*JMP     95 */
MEM_INSTRUCTION[60] = 32'b00110100000000000000000000100010; /*JMP     34 */
MEM_INSTRUCTION[61] = 32'b10001000000000000000000000010011; /*li6     19 */
MEM_INSTRUCTION[62] = 32'b10000100000000000000000000000000; /*emit    0  */
MEM_INSTRUCTION[63] = 32'b01010011111000000000000000000000;/*IN     $31  0  */
MEM_INSTRUCTION[64] = 32'b00100111010000000000000000000001;/*LOI    $26  1  */
MEM_INSTRUCTION[65] = 32'b01001011010111001110100000000000; /*SLET   $26 $28  $29*/
MEM_INSTRUCTION[66] = 32'b00100111110000000000000000000001;/*LOI    $30  1  */
MEM_INSTRUCTION[67] = 32'b01000011101111100000000001011101;/*BNEQ   $29 $30  93*/
MEM_INSTRUCTION[68] = 32'b00011110111110101111000000000000; /*LOWO   $23 $26  $30*/
MEM_INSTRUCTION[69] = 32'b01000011111111100000000001011011;/*BNEQ   $31 $30  91*/
MEM_INSTRUCTION[70] = 32'b10011011110101010000000000000000;/*switchCtx $30 $21  0 */
MEM_INSTRUCTION[71] = 32'b00101011110110110000000000000000;/*MOV    $30 $27  0 */
MEM_INSTRUCTION[72] = 32'b10001000000000000000000000010100; /*li6     20 */
MEM_INSTRUCTION[73] = 32'b10000100000000000000000000000000; /*emit    0  */
MEM_INSTRUCTION[74] = 32'b01010010100000000000000000000000;/*IN     $20  0  */
MEM_INSTRUCTION[75] = 32'b00100100011000000000000000000001;/*LOI    $3   1  */
MEM_INSTRUCTION[76] = 32'b01001000011111001110100000000000; /*SLET   $3  $28  $29*/
MEM_INSTRUCTION[77] = 32'b00100111110000000000000000000001;/*LOI    $30  1  */
MEM_INSTRUCTION[78] = 32'b01000011101111100000000001010110;/*BNEQ   $29 $30  86*/
MEM_INSTRUCTION[79] = 32'b00011110111000111111000000000000; /*LOWO   $23 $3   $30*/
MEM_INSTRUCTION[80] = 32'b01000010100111100000000001010100;/*BNEQ   $20 $30  84*/
MEM_INSTRUCTION[81] = 32'b10001000000000000000000000011010; /*li6     26 */
MEM_INSTRUCTION[82] = 32'b10000100000000000000000000000000; /*emit    0  */
MEM_INSTRUCTION[83] = 32'b00110100000000000000000001001010; /*JMP     74 */
MEM_INSTRUCTION[84] = 32'b00001000011000110000000000000001;/*ADCI   $3  $3   1 */
MEM_INSTRUCTION[85] = 32'b00110100000000000000000001001100; /*JMP     76 */
MEM_INSTRUCTION[86] = 32'b10011110100101010000000000000000;/*renameProgReg $20 $21  0 */
MEM_INSTRUCTION[87] = 32'b00100010111110101010000000000000; /*STWO   $23 $26  $20*/
MEM_INSTRUCTION[88] = 32'b10001000000000000000000000010100; /*li6     20 */
MEM_INSTRUCTION[89] = 32'b10000100000000000000000000000000; /*emit    0  */
MEM_INSTRUCTION[90] = 32'b00110100000000000000000001011100; /*JMP     92 */
MEM_INSTRUCTION[91] = 32'b00001011010110100000000000000001;/*ADCI   $26 $26  1 */
MEM_INSTRUCTION[92] = 32'b00110100000000000000000001000001; /*JMP     65 */
MEM_INSTRUCTION[93] = 32'b00110100000000000000000000100010; /*JMP     34 */
MEM_INSTRUCTION[94] = 32'b01011000000000000000000000000000; /*NOP     0  */
MEM_INSTRUCTION[95] = 32'b10001000000000000000000000010101; /*li6     21 */
MEM_INSTRUCTION[96] = 32'b10000100000000000000000000000000; /*emit    0  */
MEM_INSTRUCTION[97] = 32'b01010011111000000000000000000000;/*IN     $31  0  */
MEM_INSTRUCTION[98] = 32'b00101011111101000000000000000000;/*MOV    $31 $20  0 */
MEM_INSTRUCTION[99] = 32'b00100111010000000000000000000001;/*LOI    $26  1  */
MEM_INSTRUCTION[100] = 32'b01001011010111001110100000000000; /*SLET   $26 $28  $29*/
MEM_INSTRUCTION[101] = 32'b00100111110000000000000000000001;/*LOI    $30  1  */
MEM_INSTRUCTION[102] = 32'b01000011101111100000000001110000;/*BNEQ   $29 $30  112*/
MEM_INSTRUCTION[103] = 32'b00011110111110101111000000000000; /*LOWO   $23 $26  $30*/
MEM_INSTRUCTION[104] = 32'b01000011111111100000000001101110;/*BNEQ   $31 $30  110*/
MEM_INSTRUCTION[105] = 32'b10001000000000000000000000010110; /*li6     22 */
MEM_INSTRUCTION[106] = 32'b10000100000000000000000000000000; /*emit    0  */
MEM_INSTRUCTION[107] = 32'b00100111110000000000000000000000;/*LOI    $30  0  */
MEM_INSTRUCTION[108] = 32'b00100010111110101111000000000000; /*STWO   $23 $26  $30*/
MEM_INSTRUCTION[109] = 32'b00110100000000000000000001110000; /*JMP     112 */
MEM_INSTRUCTION[110] = 32'b00001011010110100000000000000001;/*ADCI   $26 $26  1 */
MEM_INSTRUCTION[111] = 32'b00110100000000000000000001100100; /*JMP     100 */
MEM_INSTRUCTION[112] = 32'b01011000000000000000000000000000; /*NOP     0  */
MEM_INSTRUCTION[113] = 32'b00110100000000000000000000100010; /*JMP     34 */
MEM_INSTRUCTION[114] = 32'b10001000000000000000000000011011; /*li6     27 */
MEM_INSTRUCTION[115] = 32'b10000100000000000000000000000000; /*emit    0  */
MEM_INSTRUCTION[116] = 32'b01010011111000000000000000000000;/*IN     $31  0  */
MEM_INSTRUCTION[117] = 32'b00100111110000000000000000000001;/*LOI    $30  1  */
MEM_INSTRUCTION[118] = 32'b00100111101000000000000000000010;/*LOI    $29  2  */
MEM_INSTRUCTION[119] = 32'b01000011111111100000000011111001;/*BNEQ   $31 $30  249*/
MEM_INSTRUCTION[120] = 32'b10001000000000000000000000011100; /*li6     28 */
MEM_INSTRUCTION[121] = 32'b10000100000000000000000000000000; /*emit    0  */
MEM_INSTRUCTION[122] = 32'b01010011111000000000000000000000;/*IN     $31  0  */
MEM_INSTRUCTION[123] = 32'b00100111010000000000000000000001;/*LOI    $26  1  */
MEM_INSTRUCTION[124] = 32'b01001011010111001111000000000000; /*SLET   $26 $28  $30*/
MEM_INSTRUCTION[125] = 32'b00100111101000000000000000000001;/*LOI    $29  1  */
MEM_INSTRUCTION[126] = 32'b01000011101111100000000000100010;/*BNEQ   $29 $30  34*/
MEM_INSTRUCTION[127] = 32'b00011110111110101101100000000000; /*LOWO   $23 $26  $27*/
MEM_INSTRUCTION[128] = 32'b01000011111110110000000011110111;/*BNEQ   $31 $27  247*/
MEM_INSTRUCTION[129] = 32'b10011011011101010000000000000000;/*switchCtx $27 $21  0 */
MEM_INSTRUCTION[130] = 32'b01110010101000000000001111101000; /*COPY    21, 1000*/
MEM_INSTRUCTION[131] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[132] = 32'b01110010101000000000001111101001; /*COPY    21, 1001*/
MEM_INSTRUCTION[133] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[134] = 32'b01110010101000000000001111101010; /*COPY    21, 1002*/
MEM_INSTRUCTION[135] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[136] = 32'b01110010101000000000001111101011; /*COPY    21, 1003*/
MEM_INSTRUCTION[137] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[138] = 32'b01110010101000000000001111101100; /*COPY    21, 1004*/
MEM_INSTRUCTION[139] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[140] = 32'b01110010101000000000001111101101; /*COPY    21, 1005*/
MEM_INSTRUCTION[141] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[142] = 32'b01110010101000000000001111101110; /*COPY    21, 1006*/
MEM_INSTRUCTION[143] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[144] = 32'b01110010101000000000001111101111; /*COPY    21, 1007*/
MEM_INSTRUCTION[145] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[146] = 32'b01110010101000000000001111110000; /*COPY    21, 1008*/
MEM_INSTRUCTION[147] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[148] = 32'b01110010101000000000001111110001; /*COPY    21, 1009*/
MEM_INSTRUCTION[149] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[150] = 32'b01110010101000000000001111110010; /*COPY    21, 1010*/
MEM_INSTRUCTION[151] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[152] = 32'b01110010101000000000001111110011; /*COPY    21, 1011*/
MEM_INSTRUCTION[153] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[154] = 32'b01110010101000000000001111110100; /*COPY    21, 1012*/
MEM_INSTRUCTION[155] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[156] = 32'b01110010101000000000001111110101; /*COPY    21, 1013*/
MEM_INSTRUCTION[157] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[158] = 32'b01110010101000000000001111110110; /*COPY    21, 1014*/
MEM_INSTRUCTION[159] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[160] = 32'b01110010101000000000001111110111; /*COPY    21, 1015*/
MEM_INSTRUCTION[161] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[162] = 32'b01110010101000000000001111111000; /*COPY    21, 1016*/
MEM_INSTRUCTION[163] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[164] = 32'b01110010101000000000001111111001; /*COPY    21, 1017*/
MEM_INSTRUCTION[165] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[166] = 32'b01110010101000000000001111111010; /*COPY    21, 1018*/
MEM_INSTRUCTION[167] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[168] = 32'b01110010101000000000001111111011; /*COPY    21, 1019*/
MEM_INSTRUCTION[169] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[170] = 32'b01110010101000000000001111111100; /*COPY    21, 1020*/
MEM_INSTRUCTION[171] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[172] = 32'b01110010101000000000001111111101; /*COPY    21, 1021*/
MEM_INSTRUCTION[173] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[174] = 32'b01110010101000000000001111111110; /*COPY    21, 1022*/
MEM_INSTRUCTION[175] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[176] = 32'b01110010101000000000001111111111; /*COPY    21, 1023*/
MEM_INSTRUCTION[177] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[178] = 32'b01110010101000000000010000000000; /*COPY    21, 1024*/
MEM_INSTRUCTION[179] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[180] = 32'b01110010101000000000010000000001; /*COPY    21, 1025*/
MEM_INSTRUCTION[181] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[182] = 32'b01110010101000000000010000000010; /*COPY    21, 1026*/
MEM_INSTRUCTION[183] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[184] = 32'b01110010101000000000010000000011; /*COPY    21, 1027*/
MEM_INSTRUCTION[185] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[186] = 32'b01110010101000000000010000000100; /*COPY    21, 1028*/
MEM_INSTRUCTION[187] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[188] = 32'b01110010101000000000010000000101; /*COPY    21, 1029*/
MEM_INSTRUCTION[189] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[190] = 32'b01110010101000000000010000000110; /*COPY    21, 1030*/
MEM_INSTRUCTION[191] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[192] = 32'b01110010101000000000010000000111; /*COPY    21, 1031*/
MEM_INSTRUCTION[193] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[194] = 32'b01110010101000000000010000001000; /*COPY    21, 1032*/
MEM_INSTRUCTION[195] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[196] = 32'b01110010101000000000010000001001; /*COPY    21, 1033*/
MEM_INSTRUCTION[197] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[198] = 32'b01110010101000000000010000001010; /*COPY    21, 1034*/
MEM_INSTRUCTION[199] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[200] = 32'b01110010101000000000010000001011; /*COPY    21, 1035*/
MEM_INSTRUCTION[201] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[202] = 32'b01110010101000000000010000001100; /*COPY    21, 1036*/
MEM_INSTRUCTION[203] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[204] = 32'b01110010101000000000010000001101; /*COPY    21, 1037*/
MEM_INSTRUCTION[205] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[206] = 32'b01110010101000000000010000001110; /*COPY    21, 1038*/
MEM_INSTRUCTION[207] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[208] = 32'b01110010101000000000010000001111; /*COPY    21, 1039*/
MEM_INSTRUCTION[209] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[210] = 32'b01110010101000000000010000010000; /*COPY    21, 1040*/
MEM_INSTRUCTION[211] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[212] = 32'b01110010101000000000010000010001; /*COPY    21, 1041*/
MEM_INSTRUCTION[213] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[214] = 32'b01110010101000000000010000010010; /*COPY    21, 1042*/
MEM_INSTRUCTION[215] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[216] = 32'b01110010101000000000010000010011; /*COPY    21, 1043*/
MEM_INSTRUCTION[217] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[218] = 32'b01110010101000000000010000010100; /*COPY    21, 1044*/
MEM_INSTRUCTION[219] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[220] = 32'b01110010101000000000010000010101; /*COPY    21, 1045*/
MEM_INSTRUCTION[221] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[222] = 32'b01110010101000000000010000010110; /*COPY    21, 1046*/
MEM_INSTRUCTION[223] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[224] = 32'b01110010101000000000010000010111; /*COPY    21, 1047*/
MEM_INSTRUCTION[225] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[226] = 32'b01110010101000000000010000011000; /*COPY    21, 1048*/
MEM_INSTRUCTION[227] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[228] = 32'b01110010101000000000010000011001; /*COPY    21, 1049*/
MEM_INSTRUCTION[229] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[230] = 32'b01110010101000000000010000011010; /*COPY    21, 1050*/
MEM_INSTRUCTION[231] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[232] = 32'b01110010101000000000010000011011; /*COPY    21, 1051*/
MEM_INSTRUCTION[233] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[234] = 32'b01110010101000000000010000011100; /*COPY    21, 1052*/
MEM_INSTRUCTION[235] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[236] = 32'b01110010101000000000010000011101; /*COPY    21, 1053*/
MEM_INSTRUCTION[237] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[238] = 32'b01110010101000000000010000011110; /*COPY    21, 1054*/
MEM_INSTRUCTION[239] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[240] = 32'b01110010101000000000010000011111; /*COPY    21, 1055*/
MEM_INSTRUCTION[241] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[242] = 32'b01110010101000000000010000100000; /*COPY    21, 1056*/
MEM_INSTRUCTION[243] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[244] = 32'b00100110101000000000010001001100;/*LOI    $21  1100 */
MEM_INSTRUCTION[245] = 32'b01110010101000000000010000100001; /*COPY    21, 1057*/
MEM_INSTRUCTION[246] = 32'b00110100000000000000001111101000; /*JMP     1000 */
MEM_INSTRUCTION[247] = 32'b00001011010110100000000000000001;/*ADCI   $26 $26  1 */
MEM_INSTRUCTION[248] = 32'b00110100000000000000000001111100; /*JMP     124 */
MEM_INSTRUCTION[249] = 32'b10001000000000000000000000010001; /*li6     17 */
MEM_INSTRUCTION[250] = 32'b10000100000000000000000000000000; /*emit    0  */
MEM_INSTRUCTION[251] = 32'b00100110100000000000000000000000;/*LOI    $20  0  */
MEM_INSTRUCTION[252] = 32'b01010011111000000000000000000000;/*IN     $31  0  */
MEM_INSTRUCTION[253] = 32'b00101011111101100000000000000000;/*MOV    $31 $22  0 */
MEM_INSTRUCTION[254] = 32'b00100100111000000000000000000000;/*LOI    $7   0  */
MEM_INSTRUCTION[255] = 32'b01001000111101101110100000000000; /*SLET   $7  $22  $29*/
MEM_INSTRUCTION[256] = 32'b00100111110000000000000000000001;/*LOI    $30  1  */
MEM_INSTRUCTION[257] = 32'b01000011101111100000000100010001;/*BNEQ   $29 $30  273*/
MEM_INSTRUCTION[258] = 32'b10001000000000000000000000010010; /*li6     18 */
MEM_INSTRUCTION[259] = 32'b10000100000000000000000000000000; /*emit    0  */
MEM_INSTRUCTION[260] = 32'b01010011111000000000000000000000;/*IN     $31  0  */
MEM_INSTRUCTION[261] = 32'b00100111010000000000000000000001;/*LOI    $26  1  */
MEM_INSTRUCTION[262] = 32'b01001011010111001111000000000000; /*SLET   $26 $28  $30*/
MEM_INSTRUCTION[263] = 32'b00100111101000000000000000000001;/*LOI    $29  1  */
MEM_INSTRUCTION[264] = 32'b01000011101111100000000011111111;/*BNEQ   $29 $30  255*/
MEM_INSTRUCTION[265] = 32'b00011110111110101111000000000000; /*LOWO   $23 $26  $30*/
MEM_INSTRUCTION[266] = 32'b01000011110111110000000100001101;/*BNEQ   $30 $31  269*/
MEM_INSTRUCTION[267] = 32'b00100011001001111111100000000000; /*STWO   $25 $7   $31*/
MEM_INSTRUCTION[268] = 32'b00110100000000000000000100001111; /*JMP     271 */
MEM_INSTRUCTION[269] = 32'b00001011010110100000000000000001;/*ADCI   $26 $26  1 */
MEM_INSTRUCTION[270] = 32'b00110100000000000000000100000110; /*JMP     262 */
MEM_INSTRUCTION[271] = 32'b00001000111001110000000000000001;/*ADCI   $7  $7   1 */
MEM_INSTRUCTION[272] = 32'b00110100000000000000000011111111; /*JMP     255 */
MEM_INSTRUCTION[273] = 32'b01011000000000000000000000000000; /*NOP     0  */
MEM_INSTRUCTION[274] = 32'b10001000000000000000000000010111; /*li6     23 */
MEM_INSTRUCTION[275] = 32'b10000100000000000000000000000000; /*emit    0  */
MEM_INSTRUCTION[276] = 32'b00100100111000000000000000000000;/*LOI    $7   0  */
MEM_INSTRUCTION[277] = 32'b01001000111101101111000000000000; /*SLET   $7  $22  $30*/
MEM_INSTRUCTION[278] = 32'b00100111101000000000000000000001;/*LOI    $29  1  */
MEM_INSTRUCTION[279] = 32'b01000011101111100000000111000000;/*BNEQ   $29 $30  448*/
MEM_INSTRUCTION[280] = 32'b00011111001001111111000000000000; /*LOWO   $25 $7   $30*/
MEM_INSTRUCTION[281] = 32'b00101011110110110000000000000000;/*MOV    $30 $27  0 */
MEM_INSTRUCTION[282] = 32'b01010111011000000000000000000000;/*OUT    $27  0  */
MEM_INSTRUCTION[283] = 32'b10011011011101010000000000000000;/*switchCtx $27 $21  0 */
MEM_INSTRUCTION[284] = 32'b01110010101000000000001111101000; /*COPY    21, 1000*/
MEM_INSTRUCTION[285] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[286] = 32'b01110010101000000000001111101001; /*COPY    21, 1001*/
MEM_INSTRUCTION[287] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[288] = 32'b01110010101000000000001111101010; /*COPY    21, 1002*/
MEM_INSTRUCTION[289] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[290] = 32'b01110010101000000000001111101011; /*COPY    21, 1003*/
MEM_INSTRUCTION[291] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[292] = 32'b01110010101000000000001111101100; /*COPY    21, 1004*/
MEM_INSTRUCTION[293] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[294] = 32'b01110010101000000000001111101101; /*COPY    21, 1005*/
MEM_INSTRUCTION[295] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[296] = 32'b01110010101000000000001111101110; /*COPY    21, 1006*/
MEM_INSTRUCTION[297] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[298] = 32'b01110010101000000000001111101111; /*COPY    21, 1007*/
MEM_INSTRUCTION[299] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[300] = 32'b01110010101000000000001111110000; /*COPY    21, 1008*/
MEM_INSTRUCTION[301] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[302] = 32'b01110010101000000000001111110001; /*COPY    21, 1009*/
MEM_INSTRUCTION[303] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[304] = 32'b01110010101000000000001111110010; /*COPY    21, 1010*/
MEM_INSTRUCTION[305] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[306] = 32'b01110010101000000000001111110011; /*COPY    21, 1011*/
MEM_INSTRUCTION[307] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[308] = 32'b01110010101000000000001111110100; /*COPY    21, 1012*/
MEM_INSTRUCTION[309] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[310] = 32'b01110010101000000000001111110101; /*COPY    21, 1013*/
MEM_INSTRUCTION[311] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[312] = 32'b01110010101000000000001111110110; /*COPY    21, 1014*/
MEM_INSTRUCTION[313] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[314] = 32'b01110010101000000000001111110111; /*COPY    21, 1015*/
MEM_INSTRUCTION[315] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[316] = 32'b01110010101000000000001111111000; /*COPY    21, 1016*/
MEM_INSTRUCTION[317] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[318] = 32'b01110010101000000000001111111001; /*COPY    21, 1017*/
MEM_INSTRUCTION[319] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[320] = 32'b01110010101000000000001111111010; /*COPY    21, 1018*/
MEM_INSTRUCTION[321] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[322] = 32'b01110010101000000000001111111011; /*COPY    21, 1019*/
MEM_INSTRUCTION[323] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[324] = 32'b01110010101000000000001111111100; /*COPY    21, 1020*/
MEM_INSTRUCTION[325] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[326] = 32'b01110010101000000000001111111101; /*COPY    21, 1021*/
MEM_INSTRUCTION[327] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[328] = 32'b01110010101000000000001111111110; /*COPY    21, 1022*/
MEM_INSTRUCTION[329] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[330] = 32'b01110010101000000000001111111111; /*COPY    21, 1023*/
MEM_INSTRUCTION[331] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[332] = 32'b01110010101000000000010000000000; /*COPY    21, 1024*/
MEM_INSTRUCTION[333] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[334] = 32'b01110010101000000000010000000001; /*COPY    21, 1025*/
MEM_INSTRUCTION[335] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[336] = 32'b01110010101000000000010000000010; /*COPY    21, 1026*/
MEM_INSTRUCTION[337] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[338] = 32'b01110010101000000000010000000011; /*COPY    21, 1027*/
MEM_INSTRUCTION[339] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[340] = 32'b01110010101000000000010000000100; /*COPY    21, 1028*/
MEM_INSTRUCTION[341] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[342] = 32'b01110010101000000000010000000101; /*COPY    21, 1029*/
MEM_INSTRUCTION[343] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[344] = 32'b01110010101000000000010000000110; /*COPY    21, 1030*/
MEM_INSTRUCTION[345] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[346] = 32'b01110010101000000000010000000111; /*COPY    21, 1031*/
MEM_INSTRUCTION[347] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[348] = 32'b01110010101000000000010000001000; /*COPY    21, 1032*/
MEM_INSTRUCTION[349] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[350] = 32'b01110010101000000000010000001001; /*COPY    21, 1033*/
MEM_INSTRUCTION[351] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[352] = 32'b01110010101000000000010000001010; /*COPY    21, 1034*/
MEM_INSTRUCTION[353] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[354] = 32'b01110010101000000000010000001011; /*COPY    21, 1035*/
MEM_INSTRUCTION[355] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[356] = 32'b01110010101000000000010000001100; /*COPY    21, 1036*/
MEM_INSTRUCTION[357] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[358] = 32'b01110010101000000000010000001101; /*COPY    21, 1037*/
MEM_INSTRUCTION[359] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[360] = 32'b01110010101000000000010000001110; /*COPY    21, 1038*/
MEM_INSTRUCTION[361] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[362] = 32'b01110010101000000000010000001111; /*COPY    21, 1039*/
MEM_INSTRUCTION[363] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[364] = 32'b01110010101000000000010000010000; /*COPY    21, 1040*/
MEM_INSTRUCTION[365] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[366] = 32'b01110010101000000000010000010001; /*COPY    21, 1041*/
MEM_INSTRUCTION[367] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[368] = 32'b01110010101000000000010000010010; /*COPY    21, 1042*/
MEM_INSTRUCTION[369] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[370] = 32'b01110010101000000000010000010011; /*COPY    21, 1043*/
MEM_INSTRUCTION[371] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[372] = 32'b01110010101000000000010000010100; /*COPY    21, 1044*/
MEM_INSTRUCTION[373] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[374] = 32'b01110010101000000000010000010101; /*COPY    21, 1045*/
MEM_INSTRUCTION[375] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[376] = 32'b01110010101000000000010000010110; /*COPY    21, 1046*/
MEM_INSTRUCTION[377] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[378] = 32'b01110010101000000000010000010111; /*COPY    21, 1047*/
MEM_INSTRUCTION[379] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[380] = 32'b01110010101000000000010000011000; /*COPY    21, 1048*/
MEM_INSTRUCTION[381] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[382] = 32'b01110010101000000000010000011001; /*COPY    21, 1049*/
MEM_INSTRUCTION[383] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[384] = 32'b01110010101000000000010000011010; /*COPY    21, 1050*/
MEM_INSTRUCTION[385] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[386] = 32'b01110010101000000000010000011011; /*COPY    21, 1051*/
MEM_INSTRUCTION[387] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[388] = 32'b01110010101000000000010000011100; /*COPY    21, 1052*/
MEM_INSTRUCTION[389] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[390] = 32'b01110010101000000000010000011101; /*COPY    21, 1053*/
MEM_INSTRUCTION[391] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[392] = 32'b01110010101000000000010000011110; /*COPY    21, 1054*/
MEM_INSTRUCTION[393] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[394] = 32'b01110010101000000000010000011111; /*COPY    21, 1055*/
MEM_INSTRUCTION[395] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[396] = 32'b01110010101000000000010000100000; /*COPY    21, 1056*/
MEM_INSTRUCTION[397] = 32'b00001010101101010000000000000001;/*ADCI   $21 $21  1 */
MEM_INSTRUCTION[398] = 32'b01110100111000000000000000000000;/*LR     $7   0  */
MEM_INSTRUCTION[399] = 32'b01110100111000000000000000000001;/*LR     $7   1  */
MEM_INSTRUCTION[400] = 32'b01110100111000000000000000000010;/*LR     $7   2  */
MEM_INSTRUCTION[401] = 32'b01110100111000000000000000000011;/*LR     $7   3  */
MEM_INSTRUCTION[402] = 32'b01110100111000000000000000000100;/*LR     $7   4  */
MEM_INSTRUCTION[403] = 32'b01110100111000000000000000000101;/*LR     $7   5  */
MEM_INSTRUCTION[404] = 32'b01110100111000000000000000000110;/*LR     $7   6  */
MEM_INSTRUCTION[405] = 32'b01110100111000000000000000001000;/*LR     $7   8  */
MEM_INSTRUCTION[406] = 32'b01110100111000000000000000001001;/*LR     $7   9  */
MEM_INSTRUCTION[407] = 32'b01110100111000000000000000001010;/*LR     $7   10 */
MEM_INSTRUCTION[408] = 32'b01110100111000000000000000001011;/*LR     $7   11 */
MEM_INSTRUCTION[409] = 32'b01110100111000000000000000001100;/*LR     $7   12 */
MEM_INSTRUCTION[410] = 32'b01110100111000000000000000001101;/*LR     $7   13 */
MEM_INSTRUCTION[411] = 32'b01110100111000000000000000001110;/*LR     $7   14 */
MEM_INSTRUCTION[412] = 32'b01110100111000000000000000001111;/*LR     $7   15 */
MEM_INSTRUCTION[413] = 32'b01110100111000000000000000010001;/*LR     $7   17 */
MEM_INSTRUCTION[414] = 32'b01110100111000000000000000010010;/*LR     $7   18 */
MEM_INSTRUCTION[415] = 32'b01110100111000000000000000010011;/*LR     $7   19 */
MEM_INSTRUCTION[416] = 32'b01110100111000000000000000011101;/*LR     $7   29 */
MEM_INSTRUCTION[417] = 32'b01110100111000000000000000011110;/*LR     $7   30 */
MEM_INSTRUCTION[418] = 32'b01110100111000000000000000011111;/*LR     $7   31 */
MEM_INSTRUCTION[419] = 32'b00100111110000000000000000000000;/*LOI    $30  0  */
MEM_INSTRUCTION[420] = 32'b01000011110100000000000110100111;/*BNEQ   $30 $16  423*/
MEM_INSTRUCTION[421] = 32'b00100101000000000000000000000000;/*LOI    $8   0  */
MEM_INSTRUCTION[422] = 32'b00001001000010000000001111100111;/*ADCI   $8  $8   999*/
MEM_INSTRUCTION[423] = 32'b00011000000000000000000000000000; /*CPC     0  */
MEM_INSTRUCTION[424] = 32'b00111001000000000000000000000000;/*JMPR   $8   0  */
MEM_INSTRUCTION[425] = 32'b01111000111000000000000000000000;/*SR     $7   0  */
MEM_INSTRUCTION[426] = 32'b01111000111000000000000000000001;/*SR     $7   1  */
MEM_INSTRUCTION[427] = 32'b01111000111000000000000000000010;/*SR     $7   2  */
MEM_INSTRUCTION[428] = 32'b01111000111000000000000000000011;/*SR     $7   3  */
MEM_INSTRUCTION[429] = 32'b01111000111000000000000000000100;/*SR     $7   4  */
MEM_INSTRUCTION[430] = 32'b01111000111000000000000000000101;/*SR     $7   5  */
MEM_INSTRUCTION[431] = 32'b01111000111000000000000000000110;/*SR     $7   6  */
MEM_INSTRUCTION[432] = 32'b01111000111000000000000000001000;/*SR     $7   8  */
MEM_INSTRUCTION[433] = 32'b01111000111000000000000000001001;/*SR     $7   9  */
MEM_INSTRUCTION[434] = 32'b01111000111000000000000000001010;/*SR     $7   10 */
MEM_INSTRUCTION[435] = 32'b01111000111000000000000000001011;/*SR     $7   11 */
MEM_INSTRUCTION[436] = 32'b01111000111000000000000000001100;/*SR     $7   12 */
MEM_INSTRUCTION[437] = 32'b01111000111000000000000000001101;/*SR     $7   13 */
MEM_INSTRUCTION[438] = 32'b01111000111000000000000000001110;/*SR     $7   14 */
MEM_INSTRUCTION[439] = 32'b01111000111000000000000000001111;/*SR     $7   15 */
MEM_INSTRUCTION[440] = 32'b01111000111000000000000000010001;/*SR     $7   17 */
MEM_INSTRUCTION[441] = 32'b01111000111000000000000000010010;/*SR     $7   18 */
MEM_INSTRUCTION[442] = 32'b01111000111000000000000000010011;/*SR     $7   19 */
MEM_INSTRUCTION[443] = 32'b01111000111000000000000000011101;/*SR     $7   29 */
MEM_INSTRUCTION[444] = 32'b01111000111000000000000000011110;/*SR     $7   30 */
MEM_INSTRUCTION[445] = 32'b01111000111000000000000000011111;/*SR     $7   31 */
MEM_INSTRUCTION[446] = 32'b00001000111001110000000000000001;/*ADCI   $7  $7   1 */
MEM_INSTRUCTION[447] = 32'b00110100000000000000000100010101; /*JMP     277 */
MEM_INSTRUCTION[448] = 32'b00100110000000000000000000001010;/*LOI    $16  10 */
MEM_INSTRUCTION[449] = 32'b00100100111000000000000000000000;/*LOI    $7   0  */
MEM_INSTRUCTION[450] = 32'b00110100000000000000000100010101; /*JMP     277 */
MEM_INSTRUCTION[451] = 32'b01011100000000000000000000000000; /*HALT    0  */
MEM_INSTRUCTION[452] = 32'b01011000000000000000000000000000; /*NOP     0  */
MEM_INSTRUCTION[453] = 32'b00100111000000000000000000000000;/*LOI    $24  0  */
MEM_INSTRUCTION[454] = 32'b00001011000110000000000000000001;/*ADCI   $24 $24  1 */
MEM_INSTRUCTION[455] = 32'b00110100000000000000000110111110; /*JMP     446 */
MEM_INSTRUCTION[456] = 32'b00110100000000000000000111000100; /*JMP     452 */
MEM_INSTRUCTION[457] = 32'b01011100000000000000000000000000; /*HALT    0  */
	end 
	end
	
	always @(posedge ck) begin


	saida = MEM_INSTRUCTION[endereco];
	end

endmodule
  
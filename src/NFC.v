`timescale 1ns/100ps
module NFC(clk, rst, done, F_IO_A, F_CLE_A, F_ALE_A, F_REN_A, F_WEN_A, F_RB_A, F_IO_B, F_CLE_B, F_ALE_B, F_REN_B, F_WEN_B, F_RB_B);

input clk;
input rst;
output done;
inout [7:0] F_IO_A;
output F_CLE_A; //read F_IO command,when posedge 
output F_ALE_A; //read F_IO Address,when posedge
output F_REN_A; //address++,and read data,negedge 
output F_WEN_A; //command,address,write need to set high
input  F_RB_A;  //when high,can access data
inout [7:0] F_IO_B;
output F_CLE_B;
output F_ALE_B;
output F_REN_B;
output F_WEN_B;
input  F_RB_B;

reg done;
//Thi-state Buffer A
wire OUT_EN_A;
wire [7:0] F_IN_A;
reg [7:0] F_OUT_A;
assign F_IO_A = OUT_EN_A ? F_OUT_A : 'bz;
assign F_IN_A = F_IO_A;
  
//Thi-state Buffer B
wire OUT_EN_B;
wire [7:0] F_IN_B;
reg [7:0] F_OUT_B;
assign F_IO_B = OUT_EN_B ? F_OUT_B : 'bz;
assign F_IN_B = F_IO_B;
 
//state machine A
reg [3:0] cs_A,ns_A; //current state , next state
parameter 	IDLE_A = 4'd1,
		 	CMD_A = 4'd2,//command
			ADDRESS_A_0 = 4'd3,
			ADDRESS_A_1 = 4'd4,
			ADDRESS_A_2 = 4'd5,
			WAIT_A = 4'd6,//wait memory
			REVC_A = 4'd7, // receive data
			DONE_A = 4'd8,
			WRITE_B = 4'd10,
			WAIT_B = 4'd11; //wait write

//counter mem_A address
reg [17:0] counter_MEM_A;
reg flag;
always@(posedge clk or posedge rst)
begin
	if(rst) cs_A <= IDLE_A;
	else cs_A <= ns_A;
end

always@(*)
begin
	case(cs_A)
	IDLE_A: ns_A = CMD_A;
	CMD_A: ns_A = ADDRESS_A_0;
	ADDRESS_A_0: ns_A = ADDRESS_A_1;
	ADDRESS_A_1: ns_A = ADDRESS_A_2;
	ADDRESS_A_2: ns_A = WAIT_A;
	WAIT_A: 
	begin
		if(F_RB_A) ns_A = REVC_A;
		else ns_A = WAIT_A;
	end
	REVC_A:
	begin
		if( counter_MEM_A[8:0] == 9'd511 && flag == 1'd0) ns_A = WRITE_B;
		else ns_A = REVC_A;
	end
	WRITE_B:
	begin
		ns_A = WAIT_B;	
	end
	WAIT_B:
	begin
		if(F_RB_B && counter_MEM_A == 18'd262143) ns_A = DONE_A;	
		else if(F_RB_B) ns_A = IDLE_A;
		else ns_A = WAIT_B;
	end
	DONE_A: ns_A = DONE_A;
	default: ns_A = IDLE_A;
	endcase
end


always@(posedge clk or posedge rst)
begin
	if(rst) flag <= 1'd1;
	else if(cs_A == REVC_A && flag == 1'd1) flag <= 1'd0; 
	else if(cs_A == WAIT_B) flag <= 1'd1;
end

//F_CLE
wire F_CLE_A = (cs_A == CMD_A) ? 1'd1 : 1'd0;
wire F_CLE_B = (cs_A == CMD_A || cs_A == WRITE_B ) ? 1'd1 : 1'd0;

//F_REN
wire F_REN_A = (cs_A == REVC_A) ? clk : 1'd1;	
wire F_REN_B = 1'd1;

//F_WEN
wire F_WEN_A = (cs_A == CMD_A || cs_A == ADDRESS_A_0 || cs_A == ADDRESS_A_1 || cs_A == ADDRESS_A_2) ? (~clk) : 1'd1;
reg F_WEN_B;
always@(*)
begin
	if( F_CLE_B == 1'd1 || cs_A == ADDRESS_A_0 || cs_A == ADDRESS_A_1 || cs_A == ADDRESS_A_2) F_WEN_B = (~clk);
	else if(counter_MEM_A[8:0] != 9'd511 ) F_WEN_B = clk;
	else F_WEN_B = 1'd0;	
end

//F_ALE 
wire F_ALE_A = (cs_A == ADDRESS_A_0 || cs_A == ADDRESS_A_1 || cs_A == ADDRESS_A_2) ? 1'd1 : 1'd0; 
wire F_ALE_B = F_ALE_A;

//OUT_EN
assign OUT_EN_A = (cs_A == CMD_A || cs_A == ADDRESS_A_0 || cs_A == ADDRESS_A_1 || cs_A == ADDRESS_A_2)? 1'd1 : 1'd0; 
//assign OUT_EN_B = (cs_A == IDLE_A || cs_A == WAIT_A) ? 1'd0 : 1'd1;
assign OUT_EN_B = 1'd1;

wire [17:0] counter_MEM_A_ADD_ONE = (counter_MEM_A == 18'd0) ? counter_MEM_A : counter_MEM_A + 18'd1;

//F_OUT_A
always@(posedge clk or posedge rst)
begin
	if(rst) F_OUT_A <= 8'd0;
	else if(ns_A == CMD_A) F_OUT_A <= {7'd0,counter_MEM_A_ADD_ONE[8]};
   	else if(ns_A == ADDRESS_A_0) F_OUT_A <= counter_MEM_A_ADD_ONE[7:0];
    else if(ns_A == ADDRESS_A_1) F_OUT_A <= counter_MEM_A_ADD_ONE[16:9];
   	else if(ns_A == ADDRESS_A_2) F_OUT_A <= {7'd0,counter_MEM_A_ADD_ONE[17]};
	
end

//F_OUT_B
always@(*)
begin
	if(cs_A == CMD_A) F_OUT_B = 8'h80;
	else if( cs_A == ADDRESS_A_0 || cs_A == ADDRESS_A_1 || cs_A == ADDRESS_A_2) F_OUT_B = F_OUT_A;
	else if( cs_A == WRITE_B ) F_OUT_B = 8'h10;
	else F_OUT_B = F_IN_A;
end

//counter_MEM_A
always@(posedge clk or posedge rst)
begin
	if(rst) counter_MEM_A <= 18'd262143;
	else if(cs_A == REVC_A && ns_A == REVC_A) counter_MEM_A <= counter_MEM_A + 18'd1;
end

//done
always@(posedge clk or posedge rst)
begin
	if(rst) done <= 1'd0;
	else if(cs_A == DONE_A) done <= 1'd1;
end

endmodule

module sad_controlpath(A,B,clk,rst,go,sad_reg,i,data_load);
input [7:0] A,B;
input rst,clk,go;
output [31:0]sad_reg;
output [8:0] i;
output data_load;


wire[7:0] diff;
wire bout;
wire [31:0]abs_diff;

parameter [2:0] s0=3'b000;
parameter [2:0] s1=3'b001;
parameter [2:0] s2=3'b010;
parameter [2:0] s3=3'b011;
parameter [2:0] s4=3'b100;
reg[8:0] i;

reg sum_clr,sum_load,i_clr,i_inc,sad_load,data_load;
reg [2:0]pst,nxt;
reg [31:0]sum,sad_reg;

//*********************************************************
//# CONTROLLER #//
//*********************************************************
always @ (posedge clk,posedge rst) //present state logic
begin
	if (rst) 
		begin
		pst<=s0;
		end
	else 
		begin
		pst<=nxt;
		end
end		

always @ (*) //next state logic
begin
		data_load = 1'b0;		//default value of data_load signal
		case(pst)
	
		s0: nxt = (go==1)?s1:s0;
	
		s1: begin
			sum_clr = 1'b1;
			i_clr = 1'b1; 
			nxt = s2;
			end
		
		s2: begin
			nxt = (i<256)?s3:s4;
			data_load = 1'b1;	//data_load signal is used to load the data into reg A and B from FIFO data_out port to keep the data ready for the operations in state S3
			end
			
		s3: begin
			data_load = 1'b0;	//data_load is made 0 in order to stop the reading of the data from FIFO into reg A and B			
			sum_load = 1'b1;
			i_inc = 1'b1; 
			nxt = s2;
			end
		
		s4: begin
			sad_load = 1'b1;
			nxt = s0;
			end
	
		endcase
end
//*********************************************************
//# DATA PATH #//
//*********************************************************
         
cla_8bit_subtractor x1 (A,B,diff,bout);

always @ (posedge clk)
begin
	if(i_clr || (i == 256)) 
	begin
		i<=1'b0;
		i_clr<=1'b0;
	end
	else if(i_inc)
	begin
		i<=i+1;
		i_inc<=1'b0;
	end
	else 
		i<=i;
end

always @(posedge clk)
begin
		if(sum_clr)
		begin
			sum<=32'b0;
			sum_clr<=1'b0;
		end
		else if(sum_load) 
		begin
			sum<=sum+abs_diff;
			sum_load<=1'b0;
		end
		else 
			sum<=sum;	 
end

always @(posedge clk)
begin
	if(sad_load)
	begin
		sad_reg<=sum;
		sad_load<=1'b0;
	end
	else 
		sad_reg<=sad_reg;

end                  
assign abs_diff = diff;

endmodule

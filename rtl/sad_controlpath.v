module sad_controlpath(clk,rst,go,sad_reg,i);
input rst,clk,go;
output [31:0]sad_reg;
output [8:0] i;

wire[7:0] abs_difference,A,B;
wire bout;
wire [31:0]sum_output,sum_reg;

parameter [2:0] s0=3'b000;
parameter [2:0] s1=3'b001;
parameter [2:0] s2=3'b010;
parameter [2:0] s3=3'b011;
parameter [2:0] s4=3'b100;
reg[8:0] i;

reg sum_clr,sum_load,i_clr,i_inc,i_lt256,sad_load;
reg [2:0]p_state,n_state;
reg [31:0]sum,sad_reg;

//*********************************************************
//# Controller #//
//*********************************************************

always @(posedge clk)
begin
	if(rst)
	begin
		p_state<=s0;
	end
	else
	begin
		p_state<=n_state;
	end
end

always @(*)
begin	
	case(p_state)
	s0:
	if(go==1)
		n_state=s1;
	else
		n_state=s0;
		
	s1:
	sum_clr=1;
	i_clr=1;
	n_state=s2;
	
	s2:
	if(i<256)
		n_state=s3;
	else
		n_state=s4;
	
	s3:
	sum_load=1;
	i_inc=1;
	greater=(A>=B)?A:B;
	smaller=(A>=B)?B:A;
	abs_difference=greater-smaller;
	sum_reg=sum_output+abs_difference;
	n_state=s2;

	s4:
	sad_load=1;
	n_state=s0;
	
	endcase
end

module SAD_tb;
reg[7:0]data_in1,data_in2;
// rd1,rd2 signals are controlled in top module
reg clk,rst,wr1,wr2;
wire empty1,full1,empty2,full2;
wire [8:0] FIFO_count1,FIFO_count2;
wire [7:0]data_out1,data_out2;
wire [31:0]sad_reg;
wire [8:0] I;
reg [7:0]A,B;
SAD_top top_module(.data_in1(A),.data_in2(B),.clk(clk),.rst(rst),.wr1(wr1),.wr2(wr2),.empty1(empty1),.full1(full1),.empty2(empty2),.full2(full2),.FIFO_count1(FIFO_count1),.FIFO_count2(FIFO_count2),.data_out1(data_out1),.data_out2(data_out2),.sad_reg(sad_reg),.i(I));
reg [127:0] data1 [0:15];
reg [127:0] data2 [0:15];
initial $readmemb("/home/userdata/22mvd0107/SAD_module/top/tb/f1.bin", data1);
initial $readmemb("/home/userdata/22mvd0107/SAD_module/top/tb/f2.bin", data2);
integer i1,j1,i2,j2;
reg a=1;
reg [0:15][7:0] part1,part2;
initial 
begin
	clk=1;
	rst=1;
	#55 rst=0;
	wr1=0;
	wr2=0;
end
initial
begin
	#55
	for(i1=0;i1<16;i1=i1+1)
	begin
		//$display("%b",data1[i]);
		{part1} = data1[i1];
		for(j1=0;j1<16;j1=j1+1)
		begin
			$display("A:%b,",part1[j1]);
			#20 A=part1[j1];
			wr1=1;
		end	
	end
	#20 if(full1==1)
	begin
		wr1=0;
	end
end
initial
begin
	#55
	for(i2=0;i2<16;i2=i2+1)
	begin
		//$display("%b",data2[i]);
		{part2} = data2[i2];
		for(j2=0;j2<16;j2=j2+1)
		begin
			$display("B:%b,",part2[j2]);
			#20 B=part2[j2];
			wr2=1;
		end	
	end
	#20 if(full2==1)
	begin
		wr2=0;
	end
end
always #10 clk=!clk;
endmodule
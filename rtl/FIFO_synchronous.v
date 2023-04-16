module FIFO_synchronous(input [7:0]data_in_1,data_in_2, input clk,rst,rd_1,wr_1,rd_2,wr_2,output reg empty_1,empty_2,full_1,full_2,output reg [8:0] FIFO_count_1,FIFO_count_2,output reg [7:0]data_out_1,data_out_2);
reg [7:0]FIFO_memory_1[255:0];				//2*256 memories each of 1 byte are declared 
reg [7:0]FIFO_memory_2[255:0];				//memory1 is for the current frame and memory 2 is for the reference frame
reg [7:0]rd_ptr_1,rd_ptr_2,wr_ptr_1,wr_ptr_2;		
			//8 bit pointer declared as 8 memory locations are present. 9-bit FIFO_count is taken in order to flag full, as it's not possible if 8bit FIFO_count can count till only 255
always @(posedge clk)
begin							//write operation while block for FIFO_1
	if(wr_1 && !full_1)
	begin
		FIFO_memory_1[wr_ptr_1]<=data_in_1;
	end
	else if(wr_1 && rd_1)
	begin
		FIFO_memory_1[wr_ptr_1]<=data_in_1;
	end
end

always @(posedge clk)
begin							//write operation while block for FIFO_2
	if(wr_2 && !full_2)
	begin
		FIFO_memory_2[wr_ptr_2]<=data_in_2;
	end
	else if(wr_2&&rd_2)
	begin
		FIFO_memory_2[wr_ptr_2]<=data_in_2;
	end
end

always @(posedge clk)
begin							//read operation while block for FIFO_1
	if(rd_1 && !empty_1)
	begin
		data_out_1<=FIFO_memory_1[rd_ptr_1];
	end
	else if(rd_1&&wr_1)
	begin
		data_out_1<=FIFO_memory_1[rd_ptr_1];
	end
end

always @(posedge clk)
begin							//read operation while block for FIFO_2
	if(rd_2 && !empty_2)
	begin
		data_out_2<=FIFO_memory_2[rd_ptr_2];
	end
	else if(rd_2 && wr_2)
	begin
		data_out_2<=FIFO_memory_2[rd_ptr_2];
	end
end

always @(posedge clk)					//read pointer and write pointer update for FIFO_1 and FIFO_2
begin
	if(rst)
	begin
		{wr_ptr_1,rd_ptr_1}<=0;
		{wr_ptr_2,rd_ptr_2}<=0;
	end
	else
	begin
		wr_ptr_1<=((wr_1 && !full_1)||(rd_1 && wr_1))?wr_ptr_1 + 1:wr_ptr_1;
		rd_ptr_1<=((rd_1 && !empty_1)||(rd_1 && wr_1))?rd_ptr_1 + 1:rd_ptr_1;
		wr_ptr_2<=((wr_2 && !full_2)||(rd_2 && wr_2))?wr_ptr_2 + 1:wr_ptr_2;
		rd_ptr_2<=((rd_2 && !empty_2)||(rd_2 && wr_2))?rd_ptr_2 + 1:rd_ptr_2;
	end
end

always @(posedge clk)					//FIFO count update block for FIFO_1
begin
	if(rst)
	begin
		FIFO_count_1<=0;
	end
	else
	begin
		case({rd_1,wr_1})
		2'b00:FIFO_count_1<=FIFO_count_1;
		2'b01:FIFO_count_1<=(FIFO_count_1==256)?256:FIFO_count_1+1;
		2'b10:FIFO_count_1<=(FIFO_count_1==0)?0:FIFO_count_1-1;
		2'b11:FIFO_count_1<=FIFO_count_1;
		endcase
	end
end

always @(posedge clk)					//FIFO count update block for FIFO_2
begin
	if(rst)
	begin
		FIFO_count_2<=0;
	end
	else
	begin
		case({rd_2,wr_2})
		2'b00:FIFO_count_2<=FIFO_count_2;
		2'b01:FIFO_count_2<=(FIFO_count_2==256)?256:FIFO_count_2+1;
		2'b10:FIFO_count_2<=(FIFO_count_2==0)?0:FIFO_count_2-1;
		2'b11:FIFO_count_2<=FIFO_count_2;
		endcase
	end
end

always @(posedge clk)
begin
	empty_1<=(FIFO_count_1==0);
	full_1<=(FIFO_count_1==256);
	empty_2<=(FIFO_count_2==0);
	full_2<=(FIFO_count_2==256);
end
endmodule
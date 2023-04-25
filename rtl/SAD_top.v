module SAD_top(data_in1,data_in2,clk,rst,rd1,wr1,rd2,wr2,empty1,full1,empty2,full2,FIFO_count1,FIFO_count2,data_out1,data_out2,sad_reg,i);
input [7:0]data_in1,data_in2;
input clk,rst,rd1,wr1,rd2,wr2;
output empty1,full1,empty2,full2;
output wire [8:0] FIFO_count1,FIFO_count2;
output wire [7:0]data_out1,data_out2;
output [31:0]sad_reg;
output [8:0] i;
wire go;
FIFO_synchronous fifo1(.data_in(data_in1),.clk(clk),.rst(rst),.rd(rd1),.wr(wr1),.empty(empty1),.full(full1),.FIFO_count(FIFO_count1),.data_out(data_out1));
FIFO_synchronous fifo2(.data_in(data_in2),.clk(clk),.rst(rst),.rd(rd2),.wr(wr2),.empty(empty2),.full(full2),.FIFO_count(FIFO_count2),.data_out(data_out2));
assign go=(full1&&full2)?1:0;
sad_controlpath controlpath(.A(data_out1),.B(data_out2),.clk(clk),.rst(rst),.go(go),.sad_reg(sad_reg),.i(i));
endmodule
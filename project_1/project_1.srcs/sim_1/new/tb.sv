`timescale 1ns / 1ps


module tb;
logic clk;
logic reset_n;
logic load;
logic [3:0] load_data;
 logic [3:0] count;


counter_4bit counter(
.clk(clk),
.reset_n(reset_n),
.load(load),
.load_data(load_data),
.count(count)
);

    always #5 clk = ~clk;     
    
    initial begin
    //reset
            clk = 0;
        reset_n = 0;
        load = 0;

        #10;

    
        reset_n = 1;
        load=1;
        load_data = 4'b0010;
//
//        #10;
//        reset_n = 0;
        load=0;

        #10;

        load_data = 4'b0110;
        
                        //reset_n = 1;


        #10;
        
        load_data = 4'b0111;        

        load_data = 4'b1111;        

    end


endmodule

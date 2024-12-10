// This counter is designed using register, adder and a multiplexer. 
// Normally we don't use this appraoch as this requires more hardware there a simple counter 
// that adds constant value "1'b1".

module counter_4bit(
    input logic clk,
    input logic reset_n,
    input logic load,
    input logic [3:0] load_data,
    output logic [3:0] count
);

 logic next_count;
 assign next_count = load ? (count + 1) : (load_data);


    always @(posedge clk, negedge reset_n)
    begin 
        if(!reset_n)  //Dec added ! to reset_n
            count = 0;
        //else if(load) 
        else
        count<=next_count;
        //count=load_data;
            //count <= /next_count;
//             else 
            
//            count = count + 1;
     
    end

endmodule
module chip(input clk, output led);

    reg [7:0] counter = 0;

    always @(posedge clk) 
        counter <= counter + 1'b1;

    assign led = counter[7];

endmodule

// module nrzi_encoder (
//     input clk,
//     input rst,
//     input data_in,
//     output reg nrzi_out
// );
//     // NRZI Encoding: 0 -> invert, 1 -> stay same
//     always @(posedge clk or posedge rst) begin
//         if (rst)
//             nrzi_out <= 1'b1; // Initial state
//         else if (data_in == 1'b0)
//             nrzi_out <= ~nrzi_out; // Invert on 0
//         else
//             nrzi_out <= nrzi_out; // Stay same on 1
//     end
// endmodule


module blink (
    input wire clk,
    output reg led = 1'b1
);

    reg [23:0] counter = 0;

    always @(posedge clk) begin
        if (counter == 13_499_999) begin
            counter <= 0;
            led <= ~led;
        end else begin
            counter <= counter + 1;
        end
    end

endmodule

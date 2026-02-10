module t_ff(
    input clk,
    input t,
    input rst,
    output reg q,
    output reg q_bar
    );

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            q <= 0;
            q_bar <= 1;
        end else begin
            if (t) begin
                q <= ~q;
                q_bar <= ~q_bar;
            end
        end
    end
endmodule

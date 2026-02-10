module sr_ff_tb;
    reg clk, s, r;
    wire q, q_bar;

    sr_ff uut (
        .clk(clk),
        .s(s),
        .r(r),
        .q(q),
        .q_bar(q_bar)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        $monitor("Time=%0t S=%b R=%b Q=%b Q_bar=%b", $time, s, r, q, q_bar);

        s = 0; r = 1; #10;
        s = 0; r = 0; #10;
        s = 1; r = 0; #10;
        s = 0; r = 0; #10;
        s = 1; r = 1; #10;

        $finish;
    end
endmodule

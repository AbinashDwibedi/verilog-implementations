module d_ff_tb;
    reg clk, d;
    wire q, q_bar;

    d_ff uut (
        .clk(clk),
        .d(d),
        .q(q),
        .q_bar(q_bar)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        $monitor("Time=%0t D=%b Q=%b Q_bar=%b", $time, d, q, q_bar);

        d = 0; #10;
        d = 1; #10;
        d = 0; #10;
        d = 1; #10;

        $finish;
    end
endmodule

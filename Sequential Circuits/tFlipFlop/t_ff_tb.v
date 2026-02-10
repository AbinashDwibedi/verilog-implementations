module t_ff_tb;
    reg clk, t, rst;
    wire q, q_bar;

    t_ff uut (
        .clk(clk),
        .t(t),
        .rst(rst),
        .q(q),
        .q_bar(q_bar)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        $monitor("Time=%0t T=%b RST=%b Q=%b Q_bar=%b", $time, t, rst, q, q_bar);

        rst = 1; t = 0; #10;
        rst = 0; t = 1; #20;
        t = 0; #10;
        t = 1; #20;

        $finish;
    end
endmodule

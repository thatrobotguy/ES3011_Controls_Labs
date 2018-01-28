b1 = figure;
a1 = axes;
axis(a1, [0 10 -10 10 ]);

x = tf('s');

x = 0:0.1:10;
Y = sin(x);
plot( x, Y);

title("Plot of x vs. Sin(x)")
xlabel(" X Input ");
ylabel(" Sin(x) Output ");
grid on;
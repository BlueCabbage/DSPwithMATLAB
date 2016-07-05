%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%55
%%%% Convolution Calculate
%%%%
%%%%             zhaochao
%%%%                2016-7-5
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5

%%%% y(n) = x(n)*h(n) = conv(x, y)
%%%% hb(n) = delta(n) + 2.5*delta(n-1) + 2.5*delta(n-2) + delta(n-3)
%%%% xa(t) = A * exp(-alpha * n * T) * sin(omega0 * n * T), 0 <= n <= 50


n = 1 : 50;
hb = zeros(1, 50);
hb(1) = 1;
hb(2) = 2.5;
hb(3) = 2.5;
hb(4) = 1;

close all;
subplot(3, 1, 1);
stem(hb);
title('System hb[n]');

m = 1 : 50;
A = 444.128;
a = 50 * sqrt(2.0) * pi;
T = 0.001;
w0 = 50 * sqrt(2.0) * pi;
x = A * exp(-a * m * T) .* sin(w0 * m * T);

subplot(3, 1, 2);
stem(x);
title('Input x[n]');

y = conv(x, hb);
subplot(3, 1, 3);
stem(y);
title('Output y[n]');





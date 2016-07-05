%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%55
%%%% Special Pulse Sequeces
%%%%
%%%%             zhaochao
%%%%                2016-7-5
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5

%%%% signal sequence
%%%%    x(n) = delta(n) + 2.5*delta(n-1) + 2.5*delta(n-2) + delta(n-3)

n = 1: 50;
x = zeros(1, 50);
x(1) = 1;
x(2) = 2.5;
x(3) = 2.5;
x(4) = 1;

close all;

subplot(3, 1, 1);
stem(x);
title('Pulse sequence');

k = -25 : 25;
X = x * (exp((-j * 2 * pi) / size(k, 2))) .^ (n' * k);

magX = abs(x);
subplot(3, 1, 2);
stem(magX);
title('Spectrum');

angX = angle(X);
subplot(3, 1, 3);
stem(angX);
title('Pharse');



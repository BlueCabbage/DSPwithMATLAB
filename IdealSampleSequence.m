%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%55
%%%% Ideal Sample Sequence
%%%%
%%%%             zhaochao
%%%%                2016-7-5
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5


%%%% 1, create a single: x(n), 0 <= n <= 50

n = 0 : 50;
A = 444.128;
a = 50 * sqrt(2.0) * pi;
T = 0.001; % sample rate

w0 = 50 * sqrt(2.0) * pi;
x = A * exp(-a *n * T) .* sin(w0 * n * T); 


% close all;
figure(1);
subplot(3, 1, 1);
stem(x);
title('Ideal sample sequences');


%%%% 2, draw the spectium and pharse of x(n)
k = -25 : 25;
W = (pi / 12.5) * k;

X = x * (exp((-j * 2 * pi) / size(k, 2))) .^ (n'*k); % DFT
magX = abs(X);  % Spectrium

subplot(3, 1, 2);
stem(magX);
title('Spectrium');

angX = angle(magX);  % Pharse
subplot(3, 1, 3);
stem(angX);
title('Pharse');


%%%% 3, change the signal's parameters
%%%%         A = 1, alpha = 0x4, Omega = 2.0734, T = 1

n = 0 : 50;
A = 1;
a = 0.4;
T = 1;

w0 = 2.0734;
x = A * exp(-a * n * T) .* sin(w0 * n * T);


% close all;
figure(2);
subplot(3, 1, 1);
stem(x);
title('Ideal sample sequences');

k = -25 : 25;
W = x * (exp((-j * 2 * pi) / size(k, 2))) .^ (n'*k);

magX = abs(X);
subplot(3, 1, 2);
stem(magX);
title('Spectrium');

angX = angle(X);
subplot(3, 1, 3);
stem(angX); 
title('Pharse');


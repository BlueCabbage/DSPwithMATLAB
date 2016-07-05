%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%55
%%%% Prove Convolution
%%%%
%%%%             zhaochao
%%%%                2016-7-5
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5
figure(1);

n = 1 : 50;
A = 444.128;
a = 50 * sqrt(2.0) * pi;
T = 0.001;
w0 = 50 * sqrt(2.0) * pi;
x = A * exp(-a * n * T) .* sin(w0 * n * T);

k = -25 : 25;
X = x * (exp((-j * 2 * pi)/size(k, 2))) .^ (n'*k);
magX = abs(X);

subplot(3, 2, 1);
stem(magX);
title('Input Spectrum');
angX = angle(X);
subplot(3, 2, 2);
stem(angX);
title('Input Pharse');

n = 1 : 50;
hb = zeros(1, 50);
hb(1) = 1;
hb(2) = 2.5;
hb(3) = 2.5;
hb(4) = 1;
Hb = hb * (exp((-j * 2 * pi)/size(n, 2))).^(n'*k);
magHb = abs(Hb);
subplot(3, 2, 3);
stem(magHb);
title('System Spectrum');
angHb = angle(Hb);
subplot(3, 2, 4);
stem(angHb);
title('System Pharse');


y=conv(x,hb);

n = 1 : 99;
k = 1: 99;
Y = y*(exp((-j * pi/12.5))).^(n'*k);
magY = abs(Y);
subplot(3, 2, 5);
stem(magY);
title('Output Spectrum');
angY = angle(Y);
subplot(3, 2, 6);
stem(angY);
title('Output Pharse');


%%%% show the result of prove 
figure(2);

XHb = X .* Hb;
subplot(2, 1, 1);
stem(abs(XHb));
title('x[n] Spectrum product with hb[n] Spectrum');
subplot(2, 1, 2);
stem(abs(Y));
title('y[n] Spectrum');

axis([0, 60, 0, 8000]);

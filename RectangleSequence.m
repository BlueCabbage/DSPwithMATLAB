%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%55
%%%% Rectangle Sequeces
%%%%
%%%%             zhaochao
%%%%                2016-7-5
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5

n = 1: 50;
x = sign(sign(10 - n) + 1);

close all;
subplot(3, 1, 1);
stem(x);
title('Rectangle Sequence');

k = -25 : 25;
X = x * (exp((-j * 2 * pi) / size(k, 2))).^(n'*k);

magX = abs(X);
subplot(3, 1, 2);
stem(magX);
title('Spectrum');

angX = angle(X);
subplot(3, 1, 3);
stem(angX);
title('Pharse');



clear all;
close all;
clc
bk = [0 4/pi 0 4/(3*pi) 0 4/(5*pi)  0 4/(7*pi)  0 4/(9*pi) 0 4/(11*pi) 0 4/(13*pi)];
ak = zeros(length(bk));
Ta = 0.0001;
[x,t] = somatorio(Ta, 1, 10, ak, bk);
[ak,bk] = calc_coef_fourier(Ta, 1, x, 5)


plot(t,x);


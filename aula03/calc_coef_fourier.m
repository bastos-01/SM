function [ak,bk] = calc_coef_fourier(Ta, To, x, k)
    N = length(x); % numero de amostras do sinal
    t = [0: (N-1)]' * Ta;
    ak = zeros(k+1,1);
    bk = zeros(k+1,1);
    ak(1) = mean(x);
    bk(1) = 0;
    
    for n=2: k
        ak(n) = (2/N) * x' * cos(2*pi*(n-1)*t/To);
        bk(n) = (2/N) * x' * sin(2*pi*(n-1)*t/To);
    end
end
    
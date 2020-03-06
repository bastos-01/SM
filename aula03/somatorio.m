function [x,t] = somatorio(Ta, f0, Np, ak, bk)
    Ttotal = Np * 1/f0; %Tempo total
    t = [0:Ta: Ttotal]'; %vetor de instantes de tempo
    x = zeros(size(t));%x=zeros(N,1);
    for k = 1: length(ak)
        x = x + (ak(k) * cos(2*pi*(k-1)*f0*t) + bk(k)*sin(2*pi*(k-1)*f0*t));
    end
end
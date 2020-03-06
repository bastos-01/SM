
function ReconstroiSinal (x, Ta)
    fa = 1/Ta; 
    N = length(x);
    set = zeros(N*100,1); %set é o sinal reconstruído das amostras de x
    Ts = Ta/100; %periodo de aostragem do set (por causa de aumentar as amostras 100 vezes)
    t = [0: (N*100 - 1)]' * Ts; %instantes do tempo do set 
    for n = 1: N
        set = set + x(n)*sinc(fa * (t - (n-1)*Ta));
    end
    plot(t,set, [0: (N-1)]' * Ta, x, '.');
    xlabel('Tempo(seg)');
    ylabel('Sinal');
    grid;
end
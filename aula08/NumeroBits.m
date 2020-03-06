% 0
% 1 0
% 1 1 0
% ...
% 1 1 1 1 1 1 1 1 0

function NumBits = NumeroBits(Texto)
    N = length(Texto);
    [Simb, Freq] = Alfabeto2(Texto);
    [Freq, i] = sort(Freq, 'descend');
    Simb = Simb(i);
    NumBits = 0;
    for k = 1: length(Simb)
        NumBits = NumBits + Freq(k) * N/100 * k; %porque a frequencia ta em percentagem, temos que passar para o numero de ocorrencias do Simb(n) e multiplicar pelo num de bits de cada 
    end
end
    
    
    
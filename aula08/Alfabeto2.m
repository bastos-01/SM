function [Simbolos, Frequencia] = Alfabeto2(Texto)
      N = length(Texto);
      n=1;
      Simbolos(n,1)= Texto(1);
      Frequencia(n,1) = sum(Texto == Simbolos(n,1))/N*100;
    
    for i = 2: N
        if(sum(Simbolos==Texto(i)) == 0)
            n = n + 1;
            Simbolos(n,1) = Texto(i);
            Frequencia(n,1) = sum(Texto == Simbolos(n,1))/N*100;
        end
    end
end
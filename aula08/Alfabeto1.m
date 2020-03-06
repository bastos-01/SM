function Simbolos = Alfabeto1(Texto)
    N = length(Texto);
    n=1;
    Simbolos(n,1)= Texto(1);
    
    for i = 2: N
        if(sum(Simbolos==Texto(i)) == 0)
            n = n + 1;
            Simbolos(n,1) = Texto(i);
        end
    end
end

        
function H = Entropia(Texto)
    [Simbolos, Frequencia] = Alfabeto2(Texto);
    pk = Frequencia/100
    H = pk' * log2(1./pk);
end
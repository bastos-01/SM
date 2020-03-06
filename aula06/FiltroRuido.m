function y = FiltroRuido(f, X)
    
    H = zeros(size(f));
    
    H(f < 5) = 1;
    H(f < - 5) = 0;
    
    y = H.*X;
end
        
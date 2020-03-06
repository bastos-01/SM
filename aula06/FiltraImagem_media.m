function FiltraImagem_media(Imagem, Np)
    
q = size(Imagem);
    
if length(q) == 3
    NumBasicColors = 3;
end

if length(q) == 2
    NumBasicColors = 1;
end

for m = - (Np-1)/2 : (Np-1)/2
    for n = - (Np-1)/2 : (Np-1)/2
        ImageTemp()
    end
end
    
end
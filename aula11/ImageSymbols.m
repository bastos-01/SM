function [Symb, Freq] = ImageSymbols(Image)
    [N,M] = size(Image);
    n=1;
    Symb = [];
    
    for i = 1: N
        for w = 1: M
            if(sum(Symb==Image(i,w)) == 0)
                n = n + 1;
                Symb(n,1) = Image(i,w);
                Freq(n,1) = sum(sum(Image == Symb(n,1)))/N / M *100;
            end
        end
    end
end
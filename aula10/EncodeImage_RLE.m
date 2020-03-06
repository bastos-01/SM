function Stream = EncodeImage_RLE(Image)
    [N, M] = size(Image);
    contador = uint8(0);
    k=1;
    Stream(k,1) = Image(1,1);
    for n = 1: N 
        for m = 2: M
            if Image(n,m) == Stream(k,1)
                contador = contador + 1;
                if(contador == 255)
                    k = k + 1;
                    Stream(k,1) = contador;
                    k = k + 1;
                    Stream(k,1) = Image(n,m);
                    contador = 1;
                end
            else
                k = k+1;
                Stream(k,1) = contador;
                k = k+1;
                Stream(k,1) = Image(n,m);
                contador = 1;
            end
        end
    end
    k = k+1;
    Stream(k,1)= contador;
end

        
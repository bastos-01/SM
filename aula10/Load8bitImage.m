function [N, M, Image] = Load8bitImage(Filename)
    
    fp = fopen(Filename,'rb');
    
    N = fread(fp, 1, 'uint16');
    M = fread(fp, 1, 'uint16');
    
    Image = fread(fp, [N M], 'uint8'); %uint8 apenas força a ir buscar um bit de cada vez, mas não força a matriz 'Image' a ser de uint8s
    Image = uint8(Image); % Assim já se força a matriz a ser matriz de valores uint8, sem isto as cores ficam ligeiramente diferentes 
    fclose(fp);
end

% ex8

[M8bit, ColorMap] = imread('Arca_8bit.bmp');
image(M8bit);
colormap(ColorMap);

Save8bitImage('teste2', M8bit);

[N, M, Image] = Load8bitImage('teste2');
figure(2);
image(Image);
colormap(ColorMap);

Stream = EncodeImage_RLE(Image);

Save8bitStream('testeStream2', N, M, Stream);
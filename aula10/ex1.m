% ex1

[M8bit, ColorMap] = imread('Parede_8bit.bmp');
image(M8bit);
colormap(ColorMap);

Save8bitImage('teste', M8bit);

[N, M, Image] = Load8bitImage('teste');
figure(2);
image(Image);
colormap(ColorMap);

Stream = EncodeImage_RLE(Image);

Save8bitStream('testeStream', N, M, Stream);

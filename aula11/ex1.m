[Im, ColorMap] = imread('Arca_8bit.bmp');

%image(Im);
%colormap(ColorMap);

%[Symb, Freq] = ImageSymbols(Im);

Stream = EncodeImage_LZ77(Im, 8, 4);
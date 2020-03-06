function Stream = EncodeImage_LZ77(Image, Nw, Mw)
    
    [Symb, Image2] = MatrizIndices(Image);
    %[N,M] = size(Image2);
    vetorImagem = MatrixToVector(Image2);
    M = length(vetorImagem);
    Stream = vetorImagem(1:Nw); %coloca a primeira janela deslizante
    
    n = 1; %apontador para o inicio da janela deslizante
    m = Nw + 1; % ""    ""    ""     ""    "" de observação
    k = Nw + 1; % "" "" "" ponto de inserção do proximo simbolo em stream

    while k <= M
        [Pos, Len] = FindPositionLengthPair(vetorImagem(n:(n+Nw-1)), vetorImagem(m : min([M m+Mw-1])));
        if Pos > 0
            %Encontrar um par posição-comprimento
            Stream(k) = uint8(Pos + 128);
            k=k+1;
            Stream(k) = uint8(Len);
            k=k+1;
            n = n + Len;
            m = m + Len;
        else
            Stream(k) = vetorImagem(n);
            k=k+1;
            n=n+1;
            m=m+1;
        end
    end
    
end

function [Symb, Image2] = MatrizIndices(Image)
    [Symb,~] = ImageSymbols(Image);
    Image2 = uint8(zeros(size(Image)));
    for i=1:length(Symb)
        Image2(Image == Symb(i)) = i;
    end
end

function v = MatrixToVector(M)
    [n,m] = size(M);
    v = zeros(1, n*m);
    for i = 1: n
        v(((i-1) * m + 1) : (i*m)) = M(i,:);
    end
end

%{
function M = Mv(M)
    M = M';
    M = M(:)';
end
%}

function [Pos, Len] = FindPositionLengthPair(janDes, janObs)
    Pos = 0;
    Len = 0;
    flag = 0;
    n = length(janObs);
    
    while (~flag) && (n>1)
        i = strfind(janDes, janObs(1:n));
        if isempty(i)
            n = n-1;
        else
            Pos = i(1);
            Len = n;
            flag = 1;
        end
    end
end

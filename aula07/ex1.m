load Guitar01.mat
N = length(x);
t = [0:(N-1)]'/fa;
%plot(t,x);
xlabel('Tempo (seg)');
%sound(x,fa);
Ta = 1/fa;
[x,f] = Espetro(x, Ta, 0);

Filtro = zeros(size(f));
    
Filtro(f < 2000) = 1;
Filtro(f < 1000) = 0;
Filtro(f < -1000) = 1;
Filtro(f < -2000) = 0;
    
filtrado = x.*Filtro;
[x,t] = Reconstroi(filtrado,fa);

sound(x,fa);
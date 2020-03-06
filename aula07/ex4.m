clc;
load Guitar01.mat;
N = length(x);

[m, i] = min(abs(t-0.2));% retorna o valor minimo (m) da reta |t-0.2| e o índice (i) que isso acontece
x02 = [zeros(i-1, 1); x(1:(N-(i-1)))]; %coloca zeros antes de 0 ate 0.2 segundos e coloca o vetor de 0.2 segundos até N-i (para ficar do mesmo tamanho), mas perdemos as amostras de N-i ate N

[m, i] = min(abs(t-0.4)); 
x04 = [zeros(i-1, 1); x(1:(N-(i-1)))];

[m, i] = min(abs(t-0.6)); 
x06 = [zeros(i-1, 1); x(1:(N-(i-1)))];

[m, i] = min(abs(t-0.8)); 
x08 = [zeros(i-1, 1); x(1:(N-(i-1)))];

y = (x + 0.5*x02 + 0.3*x04 + 0.2*x06 + 0.1*x08)/1.2;

sound(y,fa);

Ta = 1/fa;

[x,f] = Espetro(y, Ta, 0);

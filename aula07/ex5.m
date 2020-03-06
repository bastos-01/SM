
load Guitar01.mat

N = length(x);
t = [0: (N-1)]'/fa;

Ta = 1/fa;

z = 0.2 * tanh(1000 * x);

%sound(z,fa);

% Espetro distorcido

[x, f] = Espetro(z, Ta, 0);

% ex6)) Aplicar Eco ao som distorcido z (ex4)

[m, i] = min(abs(t-0.2)); 
z02 = [zeros(i-1, 1); z(1:(N-(i-1)))]; 

[m, i] = min(abs(t-0.4)); 
z04 = [zeros(i-1, 1); z(1:(N-(i-1)))];

[m, i] = min(abs(t-0.6)); 
z06 = [zeros(i-1, 1); z(1:(N-(i-1)))];

[m, i] = min(abs(t-0.8)); 
z08 = [zeros(i-1, 1); z(1:(N-(i-1)))];

y = (z + 0.5*z02 + 0.3*z04 + 0.2*z06 + 0.1*z08)/1.2;

%sound(y, fa); 

% ex7)) aplicar uma fa de metade

fa = fa/2;

sound(z,fa);



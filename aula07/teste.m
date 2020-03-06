load Guitar01.mat

%sound(x(1:0.5:end),fa);
Ta = 1/fa;
[x, f] = Espetro(x(1:10:end), Ta, 0);
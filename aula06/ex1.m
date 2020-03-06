[x,t] = GeraSinal(1000, 0.01);
[X,f] = Espetro(x,0.01, 0);

%3)

H = zeros(size(f));
    
H(f < 5) = 1;
H(f < - 5) = 0;
    
Y = H.*X;

[y,t] = Reconstroi(Y, f);
figure(1);
plot(t,x,t,y);

%4)

G = zeros(size(f));
G(f > 5) = 1;
G(f < -5) = 1;

Y2 = G.*X;

[y2,t] = Reconstroi(Y2, f);
figure(2);
plot(t,x,t,y2);

%5)




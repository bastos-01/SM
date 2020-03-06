function [x,t] = GeraSinal(N, Ta)
    
    t = [0: (N-1)]' * Ta;
    x = sin(2*pi*t);
    
    n1 = random('normal', 0, pi, N, 1); %gera um vetor com N elementos de desvio pi 
    n2 = random('normal', 0, pi, N, 1); %gera um vetor com N elementos de desvio pi 
    
    phi1 = zeros(N,1);
    phi2 = zeros(N,1);
    
    for k = 2: N 
        phi1(k) = phi1(k-1) + (n1(k) + n1(k-1))*Ta/2; % calcula o integral de phi(k) com a soma do valor anterior com a área entre k-1 e k
        phi2(k) = phi2(k-1) + (n2(k) + n2(k-1))*Ta/2; % calcula o integral de phi(k) com a soma do valor anterior com a área entre k-1 e k
    end
    
    rt = 0.5*sin(20*pi*t + 10*phi1) + 0.5*sin(24*pi*t + 10*phi2);
    x = x + rt;
    %plot(t,x);
    %xlabel('tempo (s)');
    %ylabel('Sinal x(t)');

end
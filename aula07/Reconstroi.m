function [x,t] = Reconstroi(X,f)
    
    N = length(X);
    x = ifft(ifftshift(X))*N;
    fa = max(abs(f))*2;
    Ta = 1/fa;
    t = [0:(N-1)]'*Ta;
   
    %plot(t,x);
end
    
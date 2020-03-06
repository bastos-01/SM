function [x,t] = Reconstroi(X,f)
    
    X = ifftshift(X);
    x = ifft(X);
    
    fa = f(end)*2;
    Ta = 1/fa;
  
    N = length(x);
    t = [0:(N-1)]'*Ta;
    plot(x,t);

end
    
    
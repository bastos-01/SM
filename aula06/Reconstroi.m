function [x,t] = Reconstroi(X,f)
    
   
    x = ifft(X);
     fa = max(abs(f))*2;
    Ta = 1/fa;
  
    N = length(x);
    t = [0:(N-1)]'*Ta;
    x = ifft(ifftshift(X))*N;
    %plot(x,t);
end
    
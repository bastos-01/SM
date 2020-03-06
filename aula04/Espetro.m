function [X,f] = Espetro(x, Ta, w)
   N = length(x);
   
   if(w ~= 0)
       x = x.* blackman(N);
   end

  X = fft(x)/N;
  X = fftshift(X);
  
  fa = 1/Ta;
  df = 1/(N*Ta);%fa/N
  f = [0 : (N-1)]'*df - fa/2;%-fa/2:fa/n:fa/2
  
  
  plot(f,abs(X),'.');
  xlabel("Frequencia (Hz)");
  ylabel("DFT (Magnitude)");
end
    
        
function pot = potencia (x,Ta,T)
  N = T/Ta;
  soma = 0;
 
  for n=1:N
    soma = soma + (x(n))^2;
  end
 
  pot = Ta/T * soma;
end
  
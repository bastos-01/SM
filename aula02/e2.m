T = 2; %Periodo do sinal
Ta = 2 * T /1000;
t = [0:Ta:(2*T-Ta)]';

q = sin(6*pi*t) + sin(7*pi*t) + sin(8*pi*t);


plot(t,q);
max(q(:))
xlabel('time (s)');
ylabel('amplitude');
title('Signal E');
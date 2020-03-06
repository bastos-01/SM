%a)

Ta = 0.2;
t = [0:Ta:5-Ta]';
x = sin(2*pi*t)';
figure(1);
ReconstroiSinal(x,Ta);

%b)

Ta = 0.04;
t = [0: Ta: 5-Ta]';
x = sin(10*pi*t) + cos(12*pi*t) + cos(14*pi*t - pi/4);
figure(2);
ReconstroiSinal(x,Ta);

%c)

Ta = 0.1;
t = [-5: Ta: 5-Ta]';
x = sinc(5*t);
figure(3);
ReconstroiSinal(x,Ta);

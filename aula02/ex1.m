clear all;
close all;
clc;
 T = 0.5;
 Ta = 5* T /1000; %tempo de amostragem
 t_x = [0: Ta: 4];
 y = sin(6*pi*t_x) + sin(7*pi*t_x) + sin(8*pi*t_x);
 plot(t_x, y);
 xlabel('Tempo (Seg)');
 ylabel ('x(t)');
 

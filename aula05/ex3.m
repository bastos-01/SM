wall = imread('Parede.jpg'); %wall (N linhas, M colunas, 3 cores);

wall2 = wall(1:2:end, 1:2:end, :); % percorre linhas e colunas de 2 em 2
wall4 = wall(1:4:end, 1:4:end, :); 
wall8 = wall(1:8:end, 1:8:end, :);
wall16 = wall(1:16:end, 1:16:end, :);

image(wall16);
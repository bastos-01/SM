clear all;
close all;
clc;
%a)
Ta = 0.01;
t_x = [0: Ta : 5]';
x = 2*sin(4*pi*t_x);

%b)
t_y = [0: Ta: 5]';
y = cos(10*pi*t_y);

%c)
z = x.*y;

%d)
t_w = [0: Ta: 10]';
w = 3*sin(pi*t_w) + 2*sin(6*pi*t_w);

%e)
t1 = [0: Ta: 5]';
t2 = t1';
for n = 1 : length(t1)
    q(n, :) = 2 * sin(2*pi*(2*t1(n) + t2));
end
mesh (t1, t2, q);
colorbar;
cmap = colormap;
cmap_gray = [[0:(1/64):1]' [0:(1/64):1]' [0:(1/64):1]']; % caderno Pratica 1/10/18
colormap(cmap_gray);


%3

%{
plot(t_x,x,'-r');
hold on
plot(t_y,y,'--b', 'LineWidth', 2);
hold on
plot(t_x,z,'.-g');
hold on
plot(t_w,w,'-y', 'LineWidth', 2);
%}

%4


%{
Ta = 1/25;
x1 = [-5: 0.05: 5]';
x2 = x1';
t = [0: Ta: 5];
r = zeros(length(x1), length(x2));
for n = 1 : length(t)
    tic;
    for i = 1 : length(x1)
        r(i, :) = 2*sin(2*pi*(sqrt(x1(i)^2 + x2.^2)) - 2*pi*t(n));
    end
    mesh(x1,x2,r); view(2); axis equal;
    drawnow();
    pause(Ta-toc);
end
%}

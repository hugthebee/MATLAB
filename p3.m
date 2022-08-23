%----- part a ------%
syms t;
T1 = 0.1;
T = 1;
N = 1000;
xt = 1;
t1 = -1*T1;
t2 = T1;

% function call to find FS coefficients
F = fourierCoeff(t,xt,T,t1,t2,N);
FS_idx = -N:N;
figure; 
stem(FS_idx,F,"filled"); 
grid on;

%----- part b ------%
% plotting scaled coefficients
F1 = 10 * F;
F2 = 20*F;
figure; 
stem(FS_idx,F,"filled"); 
grid on;
hold on;
stem(FS_idx,F1,"filled"); 
hold off;
hold on;
stem(FS_idx,F2,"filled"); 
hold off;

%----- part c ------%
time_grid = -0.5:0.01:0.5;
Y = partialfouriersum(F,T,time_grid);
figure;
plot(time_grid,Y,"red");
grid on;

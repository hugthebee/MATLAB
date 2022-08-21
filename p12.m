%------- PART 1.2 -------%
%define relevant parameters
syms t00;
T1 = 1;
t1= -T1/2;
t2= T1/2;
N1 = 5;

% define relevant expressions
xt1 = 2*cos(2*pi*t00) + cos(6*pi*t00); % sum of cosines wave

% function call to find FS coefficients
F1 = fourierCoeff(t00,xt1,T1,t1,t2,N1);

time_grid = -0.5:0.01:0.5;
F = partialfouriersum(F1,T1,time_grid);
figure;
plot(time_grid,real(F),"red");
grid on;
hold on;
fplot(xt1, [time_grid(1),time_grid(length(time_grid))],"yellow");
hold off;

xt = 2*cos(2*pi*time_grid) + cos(6*pi*time_grid);

%----- part c-------%
% MAXIMUM ABSOLUTE ERROR
mae = 0;
for k = 1:101
    mae = mae + abs(xt(k) - F(k));
end

mae = mae/101;
disp(mae);

% ROOT MEAN SQUARE
rms = 0;
for k = 1:101
    rms = rms + (abs(xt(k) - F(k)) * abs(xt(k) - F(k)));
end

rms = rms/101;
rms = sqrt(rms);
disp(rms);

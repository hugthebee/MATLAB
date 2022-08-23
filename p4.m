%---- first signal ----%
T = 1;
t1 =-0.25;
t2 = 0.25;
N = 2;

syms t0;
x1 = piecewise((t0 > -0.25) & (t0<0), -1*t0 ,(t0 > 0) & (t0< 0.25),t0);
V1 = fourierCoeff(t0, x1, T, t1, t2, N);
fs_idx = -N:N;

figure;
fplot(x1);
hold on;
stem(fs_idx, V1);
grid on;
hold off;

%---- second signal ----%
% this signal has only imaginary forurier coeffiecinets and hence when we
% plot it since only the real part gets plotted, we get 0 everywhere
% so we plot the magnitude and phase of the imaginary component

syms t00;
x2 = piecewise((t00 > -0.25) & (t00<0.25),t00);
V2 = fourierCoeff(t00, x2, T, t1, t2, N);
figure;
fplot(x2);
hold on;
stem(fs_idx, abs(V2));
grid on;
hold off;
hold on;
stem(fs_idx, V1);
hold off;

figure;
fplot(x2);
grid on;
hold on;
stem(fs_idx, angle(V2));
hold off;
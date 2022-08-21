
%-------- PART A -------%
%define relevant parameters
syms t00;
T1 = 1;
t1= -1*T1/2;
t2= T1/2;
N1 = 5;

% define relevant expressions
xt1 = 2*cos(2*pi*t00) + cos(6*pi*t00); % sum of cosines wave

% function call to find FS coefficients
F1 = fourierCoeff(t00,xt1,T1,t1,t2,N1);

% plotting
FS_idx = -N1:N1;
%figure; 
%stem(FS_idx,F1); 
grid on;


%------- PART B -------%
%define relevant parameters
syms t0;
T2 = 1;
N2 = 10;
T12 = 1/4;
t3= -T12;
t4= T12;
xt2 = 1;

% function call to find FS coefficients
F2 = fourierCoeff(t0,xt2,T2,t3,t4,N2);

% plotting
FS_idx = -N2:N2;
%figure; 
%stem(FS_idx,F2); 
grid on;



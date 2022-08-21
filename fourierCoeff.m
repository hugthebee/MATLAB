function F = fourierCoeff(t,xt,T,t1,t2,N) % function to find FS coefficients

% initialize
w0 = 2 * pi/T;
F = zeros(2*N+1,1); % vector with (2*N+1) rows and 1 column

% for-loop to find coefficents
for nn = 1:1:2*N+1 
    expr = xt * exp(-1*1j*(nn-N-1)*w0*t);
    F(nn) = int(expr,t,[t1 t2]);
    F(nn) = F(nn)/T;
end 
end
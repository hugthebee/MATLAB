function y = partialfouriersum(A,T,time_grid)
N = (length(A)-1)/2;
y = zeros(size(time_grid));
w0 = 2*pi/T;

for k = -N:N
    expr = A(k+N+1) * exp(1j*k*w0*time_grid);
    y = y + expr;
end
end


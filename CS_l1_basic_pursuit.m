clear
close all
M = 40;
N = 100;
K = 10;
x = zeros(N,1);
ind = randperm(N);  
x(ind(1:K)) = 10*randn(K,1);
A = randn(M,N);
b = A * x;
%% signal reconstruction
x0 = SCS_linprog(A,b);
%% error analysis
plot(x);hold on
plot(x0,'*')
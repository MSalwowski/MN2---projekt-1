N = 4;
M = 6;
m = 2;
n = 2;
A = zeros(N,M);
h1 = M/m;
h2 = N/n;

for i = 1:h1:N
    for j = 1:h2:M
    A(i,j) = 1;
    end
end
A
B = zeros(n+1,m+1);
B

    
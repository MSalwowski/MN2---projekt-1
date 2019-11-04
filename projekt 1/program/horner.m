function [f,df,ddf] = horner(x,x0)
%funkcja obliczajaca za pomoca algorytmu Hornera wartosc drugiej pochodnej
%wielomianu w danym punkcie
%parametry wejsciowe:
%x - wspolczynniki wielomianu
%x0 - punkt, ktorego wartosc szukamy
%parametry wyjscia:
%ddf - wartosc drugiej pochodnej wielomianu o wspolczynnikach x w punkcie x0
%df - wartosc pierwszej pochodnej wielomianu o wspolczynnikach x w punkcie x0
%f - wartosc wielomianu o wspolczynnikach x w punkcie x0

m = length(x);
 
f = 0;
df = 0;
ddf = 0;
 
for i = 1:m-2
    f = f*x0 + x(i);
    df = df*x0 + f;
    ddf = ddf*x0 + df;
end
 
f = f*x0 + x(m-1);
df = df*x0 + f;
f = f*x0 + x(m);
ddf = 2*ddf;
function df = dhorn(x,x0)
%funkcja obliczaj¹ca za pomoc¹ algorytmu Hornera wartosc pochodnej
%wielomianu w danym punkcie
%parametry wejsciowe:
%x - wspolczynniki wielomianu
%x0 - punkt, ktorego wartosc szukamy
%parametr wyjscia:
%df - wartosc pochodnej wielomianu o wspolczynnikach x w punkcie x0
 
m = length(x);
 
f = x(1);
df = 0;
 
for i=2:m
    df = df.*x0 + f;
    f = f.*x0 + x(i);
end

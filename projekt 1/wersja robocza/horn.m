function f = horn(x,x0)
%funkcja obliczajaca za pomoca algorytmu Hornera wartosc wielomianu w danym
%punkcie
%parametry wejsciowe:
%x - wspolczynniki wielomianu
%x0 - punkt, ktorego wartosc szukamy
%parametr wyjscia:
%f - wartosc wielomianu o wspolczynnikach x w punkcie x0
 
m = length(x);
 
f = x(1);
 
for i = 2:m
    f = f.*x0 + x(i);
end

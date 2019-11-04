function i = hall(x,x0,e)
%funkcja obliczajaca za pomoca algorytmu Halleya najblizsze miejsce zerowe
%wielomianu przy zadanym punkcie
%parametry wejsciowe:
%x - wspolczynniki wielomianu
%x0 - zadany punkt
%e - blad, wskaznik stopu
%parametr wyjscia:
%i - liczba iteracji potrzebna do uzyskania miejsca zerowego

x1 = x0+1;
i = 0;

while ((abs(x1-x0)/abs(x0)) > e)
    x0 = x1;
    x1 = x0 - (2.*horn(x,x0).*dhorn(x,x0))./(2.*((dhorn(x,x0)).^2)-horn(x,x0).*ddhorn(x,x0));    
    i = i + 1;
end

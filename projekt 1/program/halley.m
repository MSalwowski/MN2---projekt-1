function l = halley(x,x0)
%funkcja obliczajaca za pomoca algorytmu Halleya najblizsze miejsce zerowe
%wielomianu przy zadanym punkcie
%parametry wejsciowe:
%x - wspolczynniki wielomianu
%x0 - zadany punkt
%parametr wyjscia:
%l - liczba iteracji potrzebna do uzyskania miejsca zerowego

x1 = x0 + 1;
l = 0;
e = 10^(-10);

while ((abs(x1 - x0)/abs(x0)) > e)
    if l ~= 0
        x0 = x1;
    end
    [f,df,ddf] = horner(x,x0);
    x1 = x0 - (2*f*df)/((2*(df)^2) - f*ddf);    
    l = l + 1;
end




%funkcja rysujaca wykres zaleznosci liczby iteracji od podanego bledu przy
%obliczaniu miejsca zerowego za pomoca algorytmu Halleya
%do obliczenia wartosci wielomanu oraz jego pochodnych stosujemy algorytm
%Hornera
%jako wielomian przyjmujemy:
%W(x) = 2*x^3 - 3*x^2 - 5*x + 6
%w punkcie x0 = 3
%wykres tworzymy przjmujac blad e z zakresu od 10^(-18) do 1

x = [2,-3,-5,6]; %ustalamy wartosc wspolczynnikow
x0 = 3; %wybieramy punkt zerowy

e = linspace(-18,-2,9);
e = 10.^e;
i = linspace(0,0,length(e));

for j = 1:length(e)    
    i(j) = hall(x,x0,e(j));
end    


semilogy(i,e,'rx');
axis([0 10 0 1]);
title('wykres zaleznosci bledu od liczby iteracji');
xlabel('liczba iteracji');
ylabel('blad');
grid on;
%hold on;



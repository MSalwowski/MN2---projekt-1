%skrypt rysujacy wizualizacje szybkosci zbieznosci metody Halleya w ciele
%liczb zespolonych
%przykladowe wielomiany:
%a) W(x) = 2x^3 - 3x^2 - 5x + 6
%b) W(x) = -5x^4 + 14x^3 - x^2 + 2x - 24    
%c) W(x) = x^3 + 1
%d) W(x) = x^13 + 1

%x = [2,-3,-5,6]; %wariant a)
%x = [-5,14,-1,2,-24]; %wariant b)
%x = [1,0,0,1]; %wariant c)
x = [1,0,0,0,0,0,0,0,0,0,0,0,0,1]; %wariant d)

a = -500; %dobranie wartosci startowej dla czesci rzeczywistej
c = -450; %dobranie wartosci startowej dla czesci zespolonej
N = 1000; %gorna granica czesci rzeczywistej
M = 900; %gorna granica czesci zespolonej
n = 250; %liczba punktow czesci rzeczywistej
m = 300; %liczba punktow czesci zespolonej
h1 = N/n; %skok czesci rzeczywistej
h2 = M/m; %skok czesci zespolonej

B = zeros(M,N);

%utworzenie siatki punktow w prostokacie NxM

for k = 1:h2:M
    for l = 1:h1:N
        B(k,l) = a + l + 1i*(k + c);
    end
end

A = zeros(m,n);
C = nonzeros(B.');
r = 1;

%A) przyporzadkowanie liczby iteracji prowadzacej do zakonczenia procesu
%   metody Halleya dla kazdego punktu startowego
%B) przyporzadkowanie miejsca zerowego, do ktorego zbiezna jest metoda
%   Halleya przy danym punkcie startowym
 
for p = 1:m
    for q = 1:n
        A(p,q) = halley(x,C(r));
        r = r + 1;
    end 
end

imagesc(A); %wariant A)
%imagesc(real(A)); %wariant B) 
colorbar;
colormap jet;

%wykonal: 
%   Maciej Salwowski
%   MiNI Politechnika Warszawska
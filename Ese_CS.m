%Prodotto di matrici
A=[2 3 4;1 -2 1];
B=[3 1 4; 2 -1 0 ;2 7 -1];
C=A*B

%Prodotto elemento per elemento
b = [2;4;1;-2];
b2=b.*b
a = [2;4;3;5];
b3 = b./a

[n,m] = size(A)

%Determinante
detB=det(B)

%Rango
rankB = rank(B)

%Matrice inversa
invB=inv(B)

%Autovalori della Matrice
eigB=eig(B)


A = B;

b = [2;1;4];

%Risolve l'equazione
x = A\b
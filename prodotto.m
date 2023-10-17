function [c] = prodotto(a, b)

[n, m] = size(a);
[x, p] = size(b);

if m == x
    c = zeros(n, p);
    for i = 1:n
        for j = 1:p
            for k = 1:m
                c(i, j) = c(i, j) + a(i, k) * b(k, j);
            end
        end
    end
else
    disp('Non è possibile moltiplicare le matrici');
    c = [];  % Assegna un valore vuoto alla matrice risultante in caso di errore.
end

clear all
close all

b = [0, 1]; % Definindo numerador da funcao X(z)

% O polinomio no denominador: 3z^2 -4z + 1
% Os coeficientes de (az^2 + bz + c) sao: a = 3, b = -4, c = 1
% As raizes sao z1 = 1 e z2 = 1/3
a = [3, -4, 1];

% Realizando o calculo da decomposicao em fracoes parcias com a funcao residue
[r, p, c] = residue(b, a)

% Reconstruindo a funcao original a partir das componentes em partes 
[b, a] = residue(r, p, c)
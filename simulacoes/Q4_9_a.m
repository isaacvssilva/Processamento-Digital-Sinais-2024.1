clear all
close all

N = 1000; % Definindo o tamanho das sequencias

% Criando o vetor de indices para as sequências de 0 a N
n1 = [0:N]; 
n2 = [0:N];

% Gerando duas sequencias aleatorias x1 e x2 de comprimento N+1
x1 = rand(1, length(n1)); 
x2 = rand(1, length(n2));

% 
x3 = convn(x1, x2); % Corrigido para usar apenas x1 e x2

% Calculando a soma de todas as amostras das sequencias x1, x2 e x3
sumx1 = sum(x1); % Soma da sequencia x1
sumx2 = sum(x2); % Soma da sequencia x2
sumx3 = sum(x3); % Soma da sequencia resultante x3 (convolucao)

% Calculando o erro como a diferenca maxima absoluta entre a soma da Convolucao
% e o produto das somas das sequencias individuais x1 e x2
error = max(abs(sumx3 - sumx1 * sumx2));
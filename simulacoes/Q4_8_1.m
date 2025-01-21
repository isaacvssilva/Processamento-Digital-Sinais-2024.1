clear all
close all

% ============================================================================
% conv_m - Função de convolução modificada para processamento de sinais.
% 
% Sintaxe:
%   [y, ny] = conv_m(x, nx, h, nh)
%
% Entradas:
%   x  - Primeira sequência (sinal) a ser convoluída.
%   nx - intervalo da primeira sequência (vetor de índices de tempo).
%   h  - Segunda sequência (sinal) a ser convoluída.
%   nh - intervalo da segunda sequência (vetor de índices de tempo).
%
% Saídas:
%   y  - Resultado da convolução das duas sequências.
%   ny - intervalo da sequência convoluída (vetor de índices de tempo para 'y').
%
% Descrição:
%   A função `conv_m` realiza a convolução de duas sequências discretas `x` e `h`,
%   e calcula o intervalo da sequência resultante. Esta função é útil em
%   aplicações de processamento de sinais onde o alinhamento temporal das
%   sequências é necessário.
%
% ============================================================================
function [y, ny] = conv_m(x, nx, h, nh)
  % Calcula o início e o fim do intervalo da sequência resultante da convolução
  nyb = nx(1) + nh(1);  % Início do intervalo de y
  nye = nx(end) + nh(end); % Fim do intervalo de y

  % Criando o vetor de índices de tempo para a sequência convoluída
  ny = nyb:nye;

  % Calcula a convolução das duas sequências usando a função 'conv'
  y = conv(x, h);
end
%==============================================================================

N = 1000; % Definindo o tamanho das sequencias

% Criando o vetor de indices para as sequências de 0 a N
n1 = [0:N]; 
n2 = [0:N];

% Gerando duas sequencias aleatorias x1 e x2 de comprimento N
x1 = rand(1, length(n1)); 
x2 = rand(1, length(n2));

% Realizando o calculo da covolucao das sequencias
[x3, n3] = conv_m(x1, n1, x2, n2);

% Calculando a soma de todas as amostras das sequencias x1, x2 e x3
sumx1 = sum(x1); % Soma da sequencia x1
sumx2 = sum(x2); % Soma da sequencia x2
sumx3 = sum(x3); % Soma da sequencia resultante x3 (convolucao)

% Calculando o erro como a diferenca maxima absoluta entre a soma da Convolucao
% e o produto das somas das sequencias individuais x1 e x2
error = max(abs(sumx3 - sumx1 * sumx2))
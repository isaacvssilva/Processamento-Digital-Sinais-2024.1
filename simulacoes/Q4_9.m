clear all
close all

%* ===  FUNCTION  ======================================================================
%         Name: impseq
%  Description: Funcao para gerar sequencia impulso.
%   Parametros: n0 = posicao do impulso; n1 = inicio da sequencia; n2 = fim da sequencia
%                x = sequencia de impulso; n = vetor de indices de tempo
%* =====================================================================================
function [x, n] = impseq(n0, n1, n2)
  n = [n1:n2];
  x = (n-n0) == 0;
end

b = 1; % Definindo coeficiente do numerador

% Calculando os coeficientes do polinomio do denominador com a funcao poly
a = poly([0.9, 0.9, -0.9]);

% Realizando o calculo da decomposicao em fracoes parcias com a funcao residue
[r, p, c] = residue(b, a)

% ----------- Processamento para calcular a transformada Z inversa -----------

[delta, n] = impseq(0, 0, 7); % Gerando sequencia pulso [n = 0 ate n = 7] 
x = filter(b, a, delta)  % Aplicando filtro digital, e obtendo resposta do sistema

% Realizando o calculo da sequencia x(n) manualmente para verificar a sequencia
x_m = (0.75)*(0.9).^n + (0.5)*n.*(0.9).^n + (0.25)*(-0.9).^n;

% ----------- Plotagem para comparar as sequencias -----------

% Plotando a resposta do sistema obtida com o filtro digital
figure;
stem(n, x, 'b', 'filled');
hold on;

% Plotando a sequencia calculada manualmente
stem(n, x_m, 'r--');
hold off;

% Configuracoes do grafico
title('Comparação entre a Resposta do Sistema e a Sequência Calculada Manualmente');
xlabel('n');
ylabel('x(n)');
legend('Resposta do Sistema', 'Sequência Manual');
grid on;

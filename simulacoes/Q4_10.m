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

% Definindo numerador da funcao X(z)
b = [1, 0.4*sqrt(2)];

% Para remover os termos negativos de Z, multiplica-se o denominador por Z^2
a = [1, -0.8*sqrt(2), 0.64]; % Definindo os coeficientes do denominador

% Realizando o calculo da decomposicao em fracoes parcias com a funcao residue
[r, p, c] = residue(b, a)

% Realizando a conversao dos polos para a Forma Polar: Z = r.e^(j.theta)
magnitude = abs(p);   % Modulo r (magnitude polar)
angle_rad = angle(p); % Angulo theta (em radianos)

% ----------- Processamento para calcular a transformada Z inversa -----------

[delta, n] = impseq(0, 0, 7); % Gerando sequencia pulso [n = 0 ate n = 7]
x = filter(b, a, delta)  % Aplicando filtro digital, e obtendo resposta do sistema

% Realizando o calculo da sequencia x(n) manualmente para verificar a sequencia
x_m = ((0.8).^n) .* (cos(pi*n/4) + 2*sin(pi*n/4));


% ----------- Plotagem grafica para comparar as sequencias -----------

% Plotando a resposta do sistema obtida com o filtro digital
figure;
stem(n, x, 'b', 'filled');
hold on;

% Plotando a sequencia calculada manualmente
stem(n, x_m, 'r--');
hold off;

% Configurações do gráfico
title('Comparação entre a Resposta do Sistema e a Sequência Calculada Manualmente');
xlabel('n');
ylabel('x(n)');
legend('Resposta do Sistema', 'Sequência Manual');
grid on;
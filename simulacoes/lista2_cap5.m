clear all
close all

pkg load control

wn = 5;

zeta = 0.6;

s = tf('s');

FT = wn^2 / (s^2 + 2*zeta*wn*s + wn^2);

step(FT);


% Parametros da resposta transitoria
wd = wn * sqrt(1 - zeta^2);
sigma = zeta * wn;

% Tempo de subida tr
beta = atan(wd/sigma);
tr = (pi - beta) / wd;

% Tempo de pico tp
tp = pi / wd;

% Maximo sobressinal Mp
Mp = exp(-zeta * pi / sqrt(1 - zeta^2));
Mp_percent = Mp * 100;

% Tempo de acomodacao ts
ts_5 = 3 / sigma; % Criterio de 5%

% Exibindo os resultados no console
% Plotagem da função de transferência
figure;
step(FT, 'DisplayName', 'Resposta ao degrau da FT');
hold on

% Adicionando os valores dos parâmetros na legenda
legend_str = {sprintf('Tempo de subida: %.2f', tr), ...
              sprintf('Tempo de pico: %.2f', tp), ...
              sprintf('Máximo sobressinal: %.2f%%', Mp_percent), ...
              sprintf('Tempo de acomodação (5%%): %.2f', ts_5)};
text(1.5, 0.8, legend_str, 'BackgroundColor', 'w', 'EdgeColor', 'k');

xlabel('Tempo');
ylabel('Amplitude');
title('Resposta ao degrau da FT com Parâmetros da Resposta Transitória');

hold off

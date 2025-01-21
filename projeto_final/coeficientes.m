% Limpar variáveis e figuras
clear; close all; clc;

% Parâmetros de simulação
Fs = 1000;          % Taxa de amostragem (1 kHz)
T = 1/Fs;           % Período de amostragem
L = 1000;           % Número de amostras (duração da simulação)
t = (0:L-1)*T;      % Vetor de tempo

% Gerar uma senoide composta por duas frequências: 50 Hz e 300 Hz
f1 = 50;            % Frequência baixa (50 Hz)
f2 = 300;           % Frequência alta (300 Hz)
x = sin(2*pi*f1*t) + sin(2*pi*f2*t);  % Sinal de entrada (soma de senos)

% Projetar o filtro FIR passa-baixa
fc = 100;           % Frequência de corte (100 Hz)
n = 29;             % Ordem do filtro FIR (número de coeficientes -1)
b = fir1(n, fc/(Fs/2));  % Coeficientes do filtro FIR passa-baixa

% Aplicar o filtro ao sinal
y = filter(b, 1, x);

% Exibir os coeficientes gerados
disp('Coeficientes do Filtro FIR Passa-Baixa:');
disp(b);

% Salvar coeficientes em um arquivo de texto
fileID = fopen('coefficients.txt', 'w');
fprintf(fileID, '%f\n', b);
fclose(fileID);

% Plotar o sinal original e o sinal filtrado
figure;
subplot(2,1,1);
plot(t, x, 'b');
title('Sinal de entrada (senoide composta 50 Hz + 300 Hz)');
xlabel('Tempo (s)');
ylabel('Amplitude');
grid on;

subplot(2,1,2);
plot(t, y, 'r');
title('Sinal filtrado (passa-baixa com fc = 100 Hz)');
xlabel('Tempo (s)');
ylabel('Amplitude');
grid on;

% Exibir a resposta em frequência do filtro
figure;
freqz(b, 1, 1024, Fs);
title('Resposta em frequência do filtro passa-baixa FIR');
grid on;

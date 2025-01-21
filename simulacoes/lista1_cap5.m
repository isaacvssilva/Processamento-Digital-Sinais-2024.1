clear all
close all

pkg load control

% Modelo matematico no Dominio da frequencia
% G(s) = 1/Ts+1 -> sendo T a constante de tempo do sistema

% ---------------- Sinais de entrada ----------------
% Sinal degrau: R(s) = 1/s
% Sinal Rampa: R(s) = 1/s^2
% Sinal impulso: R(s) = 1

 % ----- Transformada inversa de Laplace e resposta no dominio do tempo ------------
 
% Sinal degrau: c{t) = 1 = e^-(t/T)
% Sinal Rampa: c(t) = t - T + T * e^-(t/T)
% Sinal impulso: c(t) = 1/T * e^-(t/T)


% Constante de tempo T
T = 1; 

% Definindo a funcao de transferencia
s = tf('s');
G = 1/(T*s + 1);

% Tempo para simular a resposta do sistema ao longo do tempo (10seg)
t = 0:0.01:10; 

% Resposta ao degrau unitario
[ystep, tstep] = step(G, t);

% Resposta a rampa unitaria
yramp = lsim(G, t, t);

% Resposta ao impulso unitario
[yimpulse, timpulse] = impulse(G, t);

% Plotagem das respostas
figure;
subplot(3,1,1);
plot(tstep, ystep);
title('Resposta ao Degrau Unitário');

subplot(3,1,2);
plot(t, yramp);
title('Resposta à Rampa Unitária');

subplot(3,1,3);
plot(timpulse, yimpulse);
title('Resposta ao Impulso Unitário');

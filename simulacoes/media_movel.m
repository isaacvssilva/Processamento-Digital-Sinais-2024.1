clear all
close all

% Array contendo as amostras de entrada
array_input = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]; %rand(1, 50);

% Array de saida com o tamanho do array de entrada com valores zeros
array_output = zeros(size(array_input));

% Definindo os parametros da media movel
M1 = 0;  % Amostras futuras
M2 = 5;  % Amostras passadas
janela_amostra_sequencia = M1 + M2 + 1;


% Calculando a media movel usando a funcao filter
% (obtendo elemento com o mesmo peso)
b = ones(1, janela_amostra_sequencia) / janela_amostra_sequencia;
array_output = filter(b, 1, array_input);


% Calculando a media movel usando loop
%for n = 1:length(array_input)
%    soma = 0;  % Inicializa a soma das amostras
%    contador = 0;  % Contador para o numero de amostras realmente somadas
    
    % Somando os valores dentro da janela de media mvel
    %for k = max(1, n-M2):n  % Garante que o indice k nao seja menor que 1
    %    soma = soma + array_input(k);
    %    contador = contador + 1;
    %end
    
    % Calculando a media para o ponto atual
    %array_output(n) = soma / contador;
%end

% Primeira janela de figura para o grafico de linha
figure;
plot(1:length(array_input), array_input, 'b', 1:length(array_output), array_output, 'r');
title('Comparação entre a Entrada e a Média Móvel');
xlabel('Índice de Amostra (n)');
ylabel('Valor');
legend('Entrada', 'Média Móvel');

% Segunda janela de figura para o gráfico de stem (pontos)
figure;
stem(1:length(array_input), array_input, 'b');
hold on;
stem(1:length(array_output), array_output, 'r', 'filled');
hold off;
title('Comparação entre a Entrada e a Média Móvel com Stem');
xlabel('Índice de Amostra (n)');
ylabel('Valor');
legend('Entrada', 'Média Móvel');
% Definindo a funcao acumulador
function y = acumulador(x)
    % Inicializando o vetor de saida com o mesmo tamanho da entrada e com zeros
    y = zeros(size(x));
    % Preenchendo o vetor de saida com a soma acumulada
    for n = 1:length(x)
        if n == 1
            y(n) = x(n);  % O primeiro elemento noa tem elementos anteriores para acumular
        else
            y(n) = y(n-1) + x(n);  % Acumulando a entrada atual com a soma anterior
        end
    end
end

% Definindo duas entradas quaisquer x1[n] e x2[n]
x1 = rand(1, 5)
x2 = rand(1, 5)

% Calculando a saida acumulada para cada entrada
y1 = acumulador(x1);
y2 = acumulador(x2);

% Escolha constantes arbitrarias a e b para a propriedade da superposicao
a = 2;
b = 3;

% Criando uma nova entrada, sendo uma combinacao linear de x1 e x2
x3 = a * x1 + b * x2;

% Calculando a saida acumulada para a entrada combinada
y3 = acumulador(x3);

% Calculando a combinacao linear 
%   das saidas acumuladas para verificar a propriedade da superposicao
y3_esperado = a * y1 + b * y2;

% Verificando se as saidas calculadas e esperadas sao iguais
%   dentro de uma tolerancia para erros de arredondamento
is_equal = all(abs(y3 - y3_esperado) < 1e-6);
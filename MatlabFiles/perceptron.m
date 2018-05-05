% Daniel Burnier de Castro 
% Algoritmo de Convergencia do PERCEPTRON

clc

N = 1;  % N eh o parametro da taxa de aprendizagem, eu escolhi N = 1

disp('ALGORITMO DE CONVERGENCIA DO PERCEPTRON');
disp(' ');  

SP = input ('Quantas sinapses possui o neuronio ?...: ');
w = zeros(1,SP);   % Faz w = 0
w = [0, w]   % Faz com que o vetor de pesos inicial tenha a forma [1 0 0... ...0]

A  = input ('Quantos elementos da CLASSE A serao utilizados no treinamento ?...: ');
B  = input ('Quantos elementos da CLASSE B serao utilizados no treinamento ?...: ');

disp(' ');
disp('Pressione <ENTER> para iniciar a entrada de x(n) e d(n)');
pause;
clc

update = 1; 
iteracao = 0;

while update > 0   
    
    update = 0; % Serve para controlar a paradas das iteracoes
    iteracao = iteracao + 1;  % Conta o numero de iteracoes necessarias
    
    clc
    beep;
    
    for p = 1:(A+B)
        x = input('Qual o proximo vetor de entrada ?...: ');  
        x = [1, x]  % Adiciona a BIAS (X0 = 1) 
        
        d = input('Qual a Resposta desejada (quantizada) ?...: ')
        
        y = sinal(w,x);  % Extrai a resposta quantizada com o uso da funcao SINAL
        
        disp(' ');
        
        if y ~= d   % Testa a necessidade de alteracao do vetor de pesos
            update = update + 1;
            w = w + N * (d - y) *  x;   
        end
        
    end    
    
    disp(' ');
    saida = sprintf('Fim da %.0ga iteracao -- Pressione <ENTER>', iteracao);
    disp(saida);
    pause;
    
end

clc
beep;
disp('VALOR FINAL DO VETOR DE PESOS');

w % Fornece o valor final do vetor de pesos

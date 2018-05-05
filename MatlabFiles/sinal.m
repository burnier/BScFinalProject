% Esta eh a funcao que fornece o resultado quantizado (+1 ou -1) da operacao 
% entre o vetor de entrada (x) e o vetor de pesos sinapticos (w)

function y = sinal(w,x)
    if dot(w,x) > 0
        y = +1
    else
        y = -1
    end
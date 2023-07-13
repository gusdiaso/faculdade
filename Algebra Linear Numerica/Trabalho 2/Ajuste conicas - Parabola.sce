clear
clc

// Parâmetros do polinômio e do ruído
a = 4;
b = 2;
c = -3;
niveis_ruido = [0.3, 0.9, 1.5];

// Gerar pontos sintéticos ao longo da curva
x_verdadeiro = linspace(-10, 10, 100);
y_verdadeiro = a*x_verdadeiro.^2 + b*x_verdadeiro + c;
n_pontos = length(x_verdadeiro);

// Plotar a parábola isolada
plot(x_verdadeiro, y_verdadeiro, "r", "linewidth", 2);
title("Parábola Isolada");
xlabel("X");
ylabel("Y");

// Loop para diferentes níveis de ruído
for i = 1:length(niveis_ruido)
    figure();
    nivel_ruido = niveis_ruido(i);

    // Gerar pontos perturbados com ruído
    x = x_verdadeiro + nivel_ruido*rand(1, n_pontos, "normal");
    y = y_verdadeiro + nivel_ruido*rand(1, n_pontos, "normal");

    // Ajustar curva aos pontos perturbados usando a barra invertida "\"
    X = [x'.^2, x', ones(n_pontos, 1)];
    p = X \ y';

    // Avaliar a curva ajustada
    x_ajuste = linspace(min(x), max(x), 100);
    y_ajuste = p(1)*x_ajuste.^2 + p(2)*x_ajuste + p(3);

    // Plotar pontos perturbados e curva ajustada
    plot(x, y, "b", "markersize", 10);
    plot(x_verdadeiro, y_verdadeiro, "r", "linewidth", 2);
    plot(x_ajuste, y_ajuste, "g-", "linewidth", 2);
    title("Nível de Ruído: " + string(nivel_ruido));
    legend(["Pontos Perturbados", "Curva Verdadeira", "Curva Ajustada"]);
    xlabel("X");
    ylabel("Y");
end


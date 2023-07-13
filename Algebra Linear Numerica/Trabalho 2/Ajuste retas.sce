clear
clc

// Parâmetros da reta e do ruído
m = 2;
c = -3;
niveis_ruido = [0.3, 0.9, 1.5];

// Gerar pontos sintéticos ao longo da reta
x_verdadeiro = linspace(-10, 10, 100);
y_verdadeiro = m*x_verdadeiro + c;
n_pontos = length(x_verdadeiro);

// Plotar a reta isolada
plot(x_verdadeiro, y_verdadeiro, "r", "linewidth", 2);
title("Reta Isolada");
xlabel("X");
ylabel("Y");

// Loop para diferentes níveis de ruído
for i = 1:length(niveis_ruido)
    figure();
    nivel_ruido = niveis_ruido(i);

    // Gerar pontos perturbados com ruído
    x = x_verdadeiro + nivel_ruido*rand(1, n_pontos, "normal");
    y = y_verdadeiro + nivel_ruido*rand(1, n_pontos, "normal");

    // Ajustar reta aos pontos perturbados usando a barra invertida "\"
    X = [x', ones(n_pontos, 1)];
    p = X \ y';

    // Avaliar a reta ajustada
    x_ajuste = linspace(min(x), max(x), 100);
    y_ajuste = p(1)*x_ajuste + p(2);

    // Plotar pontos perturbados e reta ajustada
    plot(x, y, "b", "markersize", 10);
    plot(x_verdadeiro, y_verdadeiro, "r", "linewidth", 2);
    plot(x_ajuste, y_ajuste, "g-", "linewidth", 2);
    title("Nível de Ruído: " + string(nivel_ruido));
    legend(["Pontos Perturbados", "Reta Verdadeira", "Reta Ajustada"]);
    xlabel("X");
    ylabel("Y");
end

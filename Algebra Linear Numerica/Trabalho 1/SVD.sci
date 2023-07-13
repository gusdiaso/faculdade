// Plotar um círculo unitário
c = linspace(0, 2*%pi, 100);
x = cos(c);
y = sin(c);

// Escolher uma matriz
A = [3 1; 1 3];
disp(A);
B = 10 * rand(2, 2);
disp(B);
C = [6.72 3.91; 2.02 8.30];
disp(C);

// Realizar SVD
[UA,SA,VA] = svd(A);
[UB,SB,VB] = svd(B);
[UC,SC,VC] = svd(C);

// Transformação
pontos = [x; y];

pontostransformados1A =  UA * pontos;
pontostransformados2A = SA * pontostransformados1A
pontostransformados3A = VA * pontostransformados2A

pontostransformados1B =  UB * pontos;
pontostransformados2B = SB * pontostransformados1B
pontostransformados3B = VB * pontostransformados2B

pontostransformados1C =  UC * pontos;
pontostransformados2C = SC * pontostransformados1C
pontostransformados3C = VC * pontostransformados2C

//xtitle('Gráfico do Circulo', 'Eixo x', 'Eixo y');
//plot(x, y, 'red');
//
//--------------------------------------------------------------------
//
//xtitle('Gráfico do Circulo transformado em U', 'Eixo x', 'Eixo y');
//plot(pontostransformados1A(1,:), pontostransformados1A(2,:), 'blue');
//
//xtitle('Gráfico do Circulo transformado em U e S', 'Eixo x', 'Eixo y');
//plot(pontostransformados2A(1,:), pontostransformados2A(2,:), 'blue');
//
xtitle('Gráfico do Circulo transformado em U, S e V', 'Eixo x', 'Eixo y');
plot(pontostransformados3A(1,:), pontostransformados3A(2,:), 'blue');
//
//--------------------------------------------------------------------
//
//xtitle('Gráfico do Circulo transformado em U', 'Eixo x', 'Eixo y');
//plot(pontostransformados1B(1,:), pontostransformados1B(2,:), 'green');
//
//xtitle('Gráfico do Circulo transformado em U e S', 'Eixo x', 'Eixo y');
//plot(pontostransformados2B(1,:), pontostransformados2B(2,:), 'green');
//
xtitle('Gráfico do Circulo transformado em U, S e V', 'Eixo x', 'Eixo y');
plot(pontostransformados3B(1,:), pontostransformados3B(2,:), 'green');
//
//--------------------------------------------------------------------
//
//xtitle('Gráfico do Circulo transformado em U', 'Eixo x', 'Eixo y');
//plot(pontostransformados1C(1,:), pontostransformados1C(2,:), 'red');
//
//xtitle('Gráfico do Circulo transformado em U e S', 'Eixo x', 'Eixo y');
//plot(pontostransformados2C(1,:), pontostransformados2C(2,:), 'red');
//
xtitle('Gráfico do Circulo transformado em U, S e V', 'Eixo x', 'Eixo y');
plot(pontostransformados3C(1,:), pontostransformados3C(2,:), 'red');

legend('A', 'B', 'C')




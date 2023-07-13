#include <stdio.h>

int main ( ){ 

	int Matriz[20][20], dg1, dg2, slinha, scoluna, linha , coluna , n , m, i , j;
	
	printf("Digite a quantidade de linha da matriz (max 20): ");
	scanf("%d", &n) ; 
	printf("Digite a quantidade de coluna da matriz (max 20): ");
	scanf("%d", &m) ;
	
	if(n == m){
		
		for(linha=0; linha<n ;linha++){
			for(coluna=0 ; coluna < m ; coluna++){ 
			printf("Defina o valor da Matriz na posicao[%d][%d] = " , linha , coluna); 
			scanf("%f", &Matriz[linha][coluna]);
			}
		}
		
		for(i=0; i<n; i++){
			dg1 = dg1 + Matriz[i][i];
		}
		for(linha=0; linha<n; linha++){
			dg2 = dg2 + Matriz[linha][n-1-linha]; 
		}
		for(i=0; i<coluna; i++){
			scoluna += Matriz[i][0];
		}
		for(j=0; j<coluna; j++){
			slinha += Matriz[0][j];
		}
		
		if((dg1 == dg2) && (slinha == dg2) && (scoluna == slinha) && (dg1 == scoluna) && (slinha == dg1) && (dg2 == scoluna)){
			printf("A matriz eh um cubo magico!");
		} 
		else{ 
			printf("A matriz nao eh um cubo magico!");
		}
	}
	
	else{
		printf("A Matriz nao eh quadrada");	
	}
	
return 0;
}

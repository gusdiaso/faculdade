#include <stdio.h>
#include <string.h>

int verificar(char s2[], char s1[], int ind){
	int i, j;
	i = ind;
	for(i = 0; s2[i] =! 0; i++){
		if(s2[i] != s2[j]){
			return 0;
		}
		j++;
	}
return 1;
}

int main(){
	char s1[201];
	char s2[201];
	int cont, i, tamanho1, tamanho2;
	
	printf("Escreva a primeira string: ");
	scanf(" %[^\n]", s1);
	
	printf("Escreva a segunda string: ");
	scanf(" %[^\n]", s2);
	
	tamanho1 = strlen(s1);
	tamanho2 = strlen(s2);
	
	for(i=cont=0; i < tamanho1 - tamanho2 + 1; i++){
		cont = cont + verificar(s2, s1, i);
	}
	
	printf("A segunda string aparece %d vezes na primeira string!", cont);

return 0;
}

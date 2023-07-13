#include <stdio.h>

char maiuscula(char vetor[], int i){

if (vetor[i] >= 'a' && vetor[i] <= 'z'){
	vetor[i] = (vetor[i]-'a')+'A';
}
return vetor[i];
}

int main(){
	int i;
	char letra, frase[61];
	printf("Escreva uma frase: ");
	scanf("%60[^\n]", frase);
	
	for(i=0; frase[i]!='\0'; i++){
		letra = maiuscula(frase, i);
		printf("%c", letra);
	}
return 0;
}

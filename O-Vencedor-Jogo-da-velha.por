programa {
inclua biblioteca Util
funcao inicio() { 
caracter matriz [3][3] = {{' ',' ',' '},{' ',' ',' '},{' ',' ',' '}}
 

jogada(0, 0, 'X', matriz) 
jogada(0, 2, 'O', matriz) 
jogada(0, 1, 'X', matriz) 
jogada(1, 1, 'O', matriz)
jogada(1, 0, 'X', matriz)
jogada(2, 0, 'O', matriz)



}

funcao jogada(inteiro linha, inteiro coluna, caracter m,
caracter matriz[][]) {
inteiro cont = 0
matriz[linha][coluna] = m
tabela(matriz)
cont++
jogo(matriz,cont)

}
funcao tabela(caracter matriz[][]) {
limpa()
escreva("  +---+---+---+")
escreva("\n  | ", matriz[0][0], " | ", matriz[0][1], " | ", matriz[0][2], " | ")
escreva("\n  |---+---+---|")
escreva("\n  | ", matriz[1][0], " | ", matriz[1][1], " | ", matriz[1][2], " | ")
escreva("\n  |---+---+---|")
escreva("\n  | ", matriz[2][0], " | ", matriz[2][1], " | ", matriz[2][2], " | \n")
escreva("  +---+---+---+\n")

Util.aguarde(800)
}

funcao jogo(caracter matriz[][], inteiro cont){
    para (inteiro i = 0; i < 3; i++){
        
        se (matriz[0][i]=='X' e matriz[1][i]=='X' e matriz[2][i]=='X' ) {
            escreva("\nX venceu!")
        }
       se (matriz[i][0]=='X' e matriz[i][1]=='X' e matriz[i][2]=='X' ) {
           escreva("\nX venceu!") 
       }
       
       se (matriz[0][i]=='O' e matriz[1][i]=='O' e matriz[2][i]=='O' ) {
            escreva("\nO venceu!")
        }
       se (matriz[i][0]=='O' e matriz[i][1]=='O' e matriz[i][2]=='O' ) {
           escreva("\nO venceu!") 
        }
        
       se (matriz[0][0]=='X' e matriz[1][1]=='X' e matriz[2][2]=='X' ) {
            escreva("\nO venceu!") 
       }
    
       se (matriz[2][0]=='X' e matriz[1][1]=='X' e matriz[0][2]=='X' ) {
            escreva("\nX venceu!") 
       }
       se (matriz[0][0]=='O' e matriz[1][1]=='O'e matriz[2][2]=='O' ) {
            escreva("\nO venceu!") 
       }
    
       se (matriz[2][0]=='O' e matriz[1][1]=='O' e matriz[0][2]=='O' ) {
            escreva("\nO venceu!") 
       } 
        
    	  }
    	  se (cont == 9){
    	 	  escreva("\nDeu velha!")
 
 	  }
    }

}
	


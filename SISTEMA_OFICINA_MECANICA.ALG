Algoritmo "Sistema_Oficina_mecanica"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 09/11/2026
Var
   servicos: vetor[1..5] de caractere
   precoServico: vetor[1..5] de real
    opcao : inteiro
   faturamento: real
   ordem: inteiro
   i: inteiro
   realizados: vetor[1..5] de inteiro
   
   numeroOrdem: vetor[1..100] de inteiro
   cliente: vetor[1..100] de caractere
   veiculo: vetor[1..100] de caractere
   placa: vetor[1..100] de caractere
   
inicio

   faturamento <- 0
   ordem <- 0
   
    para i de 1 ate 5 faca
      realizados[i] <- 0
   fimpara
    repita
       escreval("")
       escreval("=== OFICINA MECANICA ===")
       escreval("1 - cadastra servicos")
       escreval("2 - cadastrapecas")
       escreval("3 - abrir ordem de servico")
       escreval("4 - Adicionar servico")
       escreval("5 - Adicionar peca")
       escreval("6 - Finalizar ordem")
       escreval("7 - Relatorio")
       escreval("8 - sair")
       escreval("Escolha: ")
       leia(opcao)
       
       escolha opcao
       
          caso 1
             para i de 1 ate 5 faca
                escreval("Nome do servico: ")
                leia(servicos[i])
                escreval("preco: ")
                leia(precoservico[i])
              fimpara
              
          caso 2
             para i de 1 ate 5 faca
                escreval("Nome da peca: ")
                leia(pecas[i])
                
                escreval("Estoque": ")
                leia(estoque[i])
              fimpara

caso 8
escreval("saindo do sistema...")
outro caso
                 escreval("opcao infalida!")
                 
        fimescolha
        
   ate opcao = 8.
   
fimalgoritmo
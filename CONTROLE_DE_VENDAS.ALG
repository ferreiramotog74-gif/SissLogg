algoritmo "Controle_de_Vendas"

var
   vendas: vetor[1..2, 1..3] de inteiro
   i, j, total: inteiro
   totalDia1, totalDia2: inteiro

inicio

   total <- 0
   totalDia1 <- 0
   totalDia2 <- 0

   escreval("===== CONTROLE DE VENDAS =====")
   escreval("")

   para i de 1 ate 2 faca
      escreval("DIA ", i)

      para j de 1 ate 3 faca

         se j = 1 entao
            escreva("Quantidade de salgados: ")
         senao
            se j = 2 entao
               escreva("Quantidade de sucos: ")
            senao
               escreva("Quantidade de bolos: ")
            fimse
         fimse

         leia(vendas[i,j])

         total <- total + vendas[i,j]

         se i = 1 entao
            totalDia1 <- totalDia1 + vendas[i,j]
         senao
            totalDia2 <- totalDia2 + vendas[i,j]
         fimse

      fimpara
      escreval("")
   fimpara

   escreval("===== RELATORIO FINAL =====")
   escreval("")

   para i de 1 ate 2 faca
      escreva("Dia ", i, ": ")

      para j de 1 ate 3 faca
         escreva(vendas[i,j], "  ")
      fimpara

      escreval("")
   fimpara

   escreval("")
   escreval("Total do Dia 1: ", totalDia1)
   escreval("Total do Dia 2: ", totalDia2)
   escreval("Total de unidades vendidas: ", total)

fimalgoritmo
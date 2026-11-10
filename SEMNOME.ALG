Algoritmo "semnome"

Var
   financeiro: vetor[1..3, 1..2] de real
   saldo: vetor[1..3] de real
   totalEntradas, totalDespesas, saldoFinal: real
   i: inteiro
   maiorSaldo: real
   mesMaiorSaldo: real

Inicio
   totalEntradas <- 0
   totalDespesas <- 0

   escreval("====== CONTROLE FINANCEIRO ======")

   para i de 1 ate 3 faca
      escreval("")
      escreval("MES ", i)

      escreval("INFORME O VALOR DAS ENTRADAS: R$ ")
      leia(financeiro[i,1])
      escreval("INFORME O VALOR DAS ENTRADAS: R$ ")
      leia(financeiro[i,2])

      saldo[i] <- (financeiro[i,1]) - (financeiro[i,2])
      totalEntradas <- totalEntradas + (financeiro[i,1])
      totalDespesas <- totalDespesas + (financeiro[i,2])
   fimpara

   saldoFinal <- totalEntradas - totalDespesas

   maiorSaldo <- saldo[1]
   mesMaiorSaldo <- 1

   para i de 1 ate 2 faca
      se saldo[i] > maiorSaldo entao
         maiorSaldo <- saldo[i]
         mesMaiorSaldo <- i
      fimse
   fimpara

   escreval("")
   escreval("====== RESUMO GERAL ======")
   escreval("TOTAL DAS ENTRADAS: R$ ", totalEntradas:0:2)
   escreval("TOTAL DAS DESPESAS: R$ ", totalDespesas:0:2)
   escreval("TOTAL FINAL: R$ ", saldoFinal:0:2)

   escreval("MES MAIOR SALDO: ", mesMaiorSaldo)
   escreval("MAIOR SALDO: R$ ", maiorSaldo:0:2)

Fimalgoritmo
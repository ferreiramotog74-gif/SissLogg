
Algoritmo "Desafio1_Gerenciamento_Loja"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 04/11/2026

Var
   codigo: vetor[1..5] de inteiro
   nome: vetor[1..5] de caractere
   preco: vetor[1..5] de real
   estoque: vetor[1..5] de inteiro
   vendasDia: vetor[1..5,1..3] de inteiro

   opcao, i, j: inteiro
   codVenda, indice: inteiro
   quantidade, dia: inteiro
   totalVendas, totalProdutosVendidos: inteiro
   totalArrecadado, valorVenda, mediaVendas: real
   totalProduto, totalGeral: inteiro
   cadastrado: logico

Inicio
   cadastrado <- falso
   opcao <- 0
   totalVendas <- 0
   totalProdutosVendidos <- 0
   totalArrecadado <- 0

   // Inicializa a matriz de vendas
   para i de 1 ate 5 faca
      para j de 1 ate 3 faca
         vendasDia[i,j] <- 0
      fimpara
   fimpara

   enquanto opcao <> 6 faca
      escreval("")
      escreval("================================")
      escreval("  SISTEMA DE GERENCIAMENTO")
      escreval("             DE LOJA")
      escreval("================================")
      escreval("1 - Cadastrar produtos")
      escreval("2 - Registrar vendas")
      escreval("3 - Consultar estoque")
      escreval("4 - Relatorio de vendas")
      escreval("5 - Relatorio geral")
      escreval("6 - Sair do sistema")
      escreval("================================")
      escreva("Escolha uma opcao: ")
      leia(opcao)

      escolha opcao

         caso 1
            escreval("")
            escreval("=== CADASTRO DE PRODUTOS ===")

            para i de 1 ate 5 faca
               escreval("")
               escreval("Produto ", i)

               escreva("Codigo do produto: ")
               leia(codigo[i])

               escreva("Nome do produto: ")
               leia(nome[i])

               escreva("Preco unitario: R$ ")
               leia(preco[i])

               enquanto preco[i] < 0 faca
                  escreval("O preco nao pode ser negativo.")
                  escreva("Digite novamente: R$ ")
                  leia(preco[i])
               fimenquanto

               escreva("Quantidade em estoque: ")
               leia(estoque[i])

               enquanto estoque[i] < 0 faca
                  escreval("A quantidade nao pode ser negativa.")
                  escreva("Digite novamente: ")
                  leia(estoque[i])
               fimenquanto
            fimpara

            cadastrado <- verdadeiro
            escreval("")
            escreval("Produtos cadastrados com sucesso!")

         caso 2
            se cadastrado = falso entao
               escreval("")
               escreval("Cadastre os produtos primeiro!")
            senao
               escreval("")
               escreval("=== REGISTRO DE VENDAS ===")

               escreva("Digite o codigo do produto: ")
               leia(codVenda)

               indice <- 0

               para i de 1 ate 5 faca
                  se codigo[i] = codVenda entao
                     indice <- i
                  fimse
               fimpara

               se indice = 0 entao
                  escreval("Codigo de produto inexistente.")
               senao
                  escreval("Produto: ", nome[indice])
                  escreval("Preco: R$ ", preco[indice])
                  escreval("Estoque disponivel: ", estoque[indice])

                  escreva("Quantidade desejada: ")
                  leia(quantidade)

                  se quantidade <= 0 entao
                     escreval("Quantidade invalida.")
                  senao
                     se quantidade > estoque[indice] entao
                        escreval("Estoque insuficiente!")
                        escreval("Venda nao realizada.")
                     senao
                        escreval("Dia da venda (1 a 3): ")
                        leia(dia)

                        se dia < 1 ou dia > 3 entao
                           escreval("Dia invalido. Venda cancelada.")
                        senao
                           valorVenda <- preco[indice] * quantidade

                           estoque[indice] <- estoque[indice] - quantidade

                           vendasDia[indice,dia] <- vendasDia[indice,dia] + quantidade

                           totalVendas <- totalVendas + 1
                           totalProdutosVendidos <- totalProdutosVendidos + quantidade
                           totalArrecadado <- totalArrecadado + valorVenda

                           escreval("")
                           escreval("=== VENDA REALIZADA ===")
                           escreval("Produto: ", nome[indice])
                           escreval("Quantidade: ", quantidade)
                           escreval("Valor total: R$ ", valorVenda)
                           escreval("Estoque restante: ", estoque[indice])
                        fimse
                     fimse
                  fimse
               fimse
            fimse

         caso 3
            se cadastrado = falso entao
               escreval("Cadastre os produtos primeiro!")
            senao
               escreval("")
               escreval("=== CONSULTA DE ESTOQUE ===")

               para i de 1 ate 5 faca
                  escreval("")
                  escreval("Codigo: ", codigo[i])
                  escreval("Produto: ", nome[i])
                  escreval("Preco: R$ ", preco[i])
                  escreval("Quantidade: ", estoque[i])

                  se estoque[i] = 0 entao
                     escreval("Situacao: SEM ESTOQUE")
                  senao
                     se estoque[i] <= 5 entao
                        escreval("Situacao: ESTOQUE BAIXO")
                     senao
                        escreval("Situacao: ESTOQUE NORMAL")
                     fimse
                  fimse
               fimpara
            fimse

         caso 4
            escreval("")
            escreval("=== RELATORIO DE VENDAS ===")
            escreval("Quantidade de vendas: ", totalVendas)
            escreval("Produtos vendidos: ", totalProdutosVendidos)
            escreval("Valor total arrecadado: R$ ", totalArrecadado)

            se totalVendas > 0 entao
               mediaVendas <- totalArrecadado / totalVendas
               escreval("Valor medio por venda: R$ ", mediaVendas)
            senao
               escreval("Valor medio por venda: R$ 0")
               escreval("Nenhuma venda foi realizada.")
            fimse

         caso 5
            se cadastrado = falso entao
               escreval("Cadastre os produtos primeiro!")
            senao
               escreval("")
               escreval("=== RELATORIO GERAL ===")
               escreval("Produto      Dia 1    Dia 2    Dia 3    Total")

               totalGeral <- 0

               para i de 1 ate 5 faca
                  totalProduto <- 0

                  para j de 1 ate 3 faca
                     totalProduto <- totalProduto + vendasDia[i,j]
                  fimpara

                  escreva(nome[i], "    ")

                  para j de 1 ate 3 faca
                     escreva(vendasDia[i,j], "        ")
                  fimpara

                  escreval(totalProduto)
                  totalGeral <- totalGeral + totalProduto
               fimpara

               escreval("")
               escreval("Total geral de unidades vendidas: ", totalGeral)
            fimse

         caso 6
            escreval("")
            escreval("Sistema encerrado. Obrigado!")

         outrocaso
            escreval("Opcao invalida. Escolha de 1 a 6.")

      fimescolha
   fimenquanto

Fimalgoritmo

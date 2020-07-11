algoritmo "Controle de Estacionamento Senai"

// TRABALHO FINAL DE LOGICA
// AUTORES: GUILHERME CAIRES, JEFFERSON ELOY, JOANDERSON SANTOS E IGOR VIANA
// EDUCADORA: CHELI MENDES

var
   contador,infinito,opc,contc,contm,contb,contv,contf,cont,apagar,del:inteiro
   dado:vetor [1..6,1..189] de caractere
   ficha:vetor [1..1,1..189] de inteiro
   deletado:vetor [1..7,1..1700] de caractere
   fichadel:vetor [1..1700] de inteiro


   // =========================PROCEDIMENTO DE ESTACIONAMENTO LOTADO==============
procedimento lotado()
inicio
   escreval("==================================================================")
   escreval("                              LOTADO                              ")
   escreval("==================================================================")
   escreval("")
   escreval("                  DIGITE ENTER PARA RETORNAR AO MENU")
   leia(opc)
   limpatela
fimprocedimento

inicio

   // ==================================== CARREGAMENTO ==========================
   timer(10)
   para contador <- 1 ate 15 faca
      escreval("                        CARREGANDO º")
      limpatela
      escreval("                        CARREGANDO ºº")
      limpatela
      escreval("                        CARREGANDO ººº")
      limpatela
   fimpara
   limpatela

   // ======================================== MENU ==============================
   enquanto infinito < 1 faca
      opc <- 0
      escreval("==================================================================")
      escreval("                       ESTACIONAMENTO SENAI                       ")
      escreval("==================================================================")
      escreval("")
      escreval("      CARROS: ",contc,"    MOTOS: ",contm,"    BICICLETAS: ",contb,"    TOTAL: ",contv)
      escreval("")
      escreval("[1] ENTRADA")
      escreval("[2] SAIDA")
      escreval("[3] DELETADOS")
      escreval("[4] CREDITOS")
      escreval("[5] SAIR")
      leia(opc)

      // ESCOLHA DO MENU INICIAL
      escolha opc
      caso 1
         limpatela
         se contv = 188 entao
            lotado()
         senao
            escreval("==================================================================")
            escreval("                          ESCOLHA VEICULO                         ")
            escreval("==================================================================")
            escreval("")
            escreval("[1] CARRO")
            escreval("[2] MOTO")
            escreval("[3] BICICLETA")
            leia(opc)
         fimse

         // ENTRADA DE CARRO
         escolha opc
         caso 1
            se contc = 105 entao
               limpatela
               lotado()
            senao
               contv <- contv + 1
               contf <- contf + 1
               limpatela
               escreval("==================================================================")
               escreval("                            ENTRADA CARRO                         ")
               escreval("==================================================================")
               escreval("")
               dado[1,contv] <- "CARRO"
               escreva("NOME: ")
               leia(dado[2,contv])
               escreva("PLACA: ")
               leia(dado[3,contv])
               escreva("MODELO: ")
               leia(dado[4,contv])
               escreva("COR: ")
               leia(dado[5,contv])
               escreva("HORA DA ENTRADA: ")
               leia(dado[6,contv])
               ficha[1,contv] <- contf
               escreval ("FICHA: ",contf)
               escreval("")
               escreval("[1] CONFIRMAR")
               escreval("[2] CANCELAR")
               leia(opc)

               escolha opc
               caso 1
                  limpatela
                  contc <- contc + 1
               caso 2
                  limpatela
                  contv <- contv - 1
                  contf <- contf - 1
               outrocaso
                  limpatela
                  contc <- contc + 1
               fimescolha
            fimse

            // ENTRADA DE MOTO
         caso 2
            se contm = 70 entao
               limpatela
               lotado()
            senao
               contv <- contv + 1
               contf <- contf + 1
               limpatela
               escreval("==================================================================")
               escreval("                             ENTRADA MOTO                         ")
               escreval("==================================================================")
               escreval("")
               dado[1,contv] <- "MOTO"
               escreva("NOME: ")
               leia(dado[2,contv])
               escreva("PLACA: ")
               leia(dado[3,contv])
               escreva("MODELO: ")
               leia(dado[4,contv])
               escreva("COR: ")
               leia(dado[5,contv])
               escreva("HORA DA ENTRADA: ")
               leia(dado[6,contv])
               ficha[1,contv] <- contf
               escreval ("FICHA: ",contv)
               escreval("")
               escreval("[1] CONFIRMAR")
               escreval("[2] CANCELAR")
               leia(opc)

               escolha opc
               caso 1
                  limpatela
                  contm <- contm + 1
               caso 2
                  limpatela
                  contv <- contv - 1
                  contf <- contf - 1
               outrocaso
                  limpatela
                  contm <- contm + 1
               fimescolha
            fimse

            // ENTRADA DE BICICLETA
         caso 3
            se contb = 13 entao
               limpatela
               lotado()
            senao
               contv <- contv + 1
               contf <- contf + 1
               limpatela
               escreval("==================================================================")
               escreval("                         ENTRADA BICICLETA                        ")
               escreval("==================================================================")
               escreval("")
               dado[1,contv] <- "BICICLETA"
               escreva("NOME: ")
               leia(dado[2,contv])
               dado[3,contv] <- "SEM PLACA"
               escreva("MODELO: ")
               leia(dado[4,contv])
               escreva("COR: ")
               leia(dado[5,contv])
               escreva("HORA DA ENTRADA: ")
               leia(dado[6,contv])
               ficha[1,contv] <- contf
               escreval ("FICHA: ",contv)
               escreval("")
               escreval("[1] CONFIRMAR")
               escreval("[2] CANCELAR")
               leia(opc)

               escolha opc
               caso 1
                  limpatela
                  contb <- contb + 1
               caso 2
                  limpatela
                  contv <- contv - 1
                  contf <- contf - 1
               outrocaso
                  limpatela
                  contb <- contb + 1
               fimescolha
            fimse

         outrocaso
            limpatela
         fimescolha

         // LISTA DE VEICULOS CADASTRADOS
      caso 2
         limpatela
         escreval("================================================================")
         escreval("                              LISTA                             ")
         escreval("================================================================")
         escreval("")

         // ESCREVE OS DADOS CADASTRADOS
         para cont de 1 ate contv faca
            escreval("VEICULO: ",dado[1,cont],"   NOME:",dado[2,cont], "   PLACA: ",dado[3,cont])
            escreval("MODELO: ",dado[4,cont],"   COR: ",dado[5,cont],"    FICHA: ",ficha[1,cont])
            escreval("HORA DE ENTRADA: ",dado[6,cont])
            escreval("")
         fimpara

         // MENU OU APAGAR
         escreval("[1] APAGAR")
         escreval("[2] MENU")
         leia(opc)

         // APAGAR
         escolha opc
         caso 1
            escreval("")
            escreva("DIGITE A FICHA: ")
            leia(apagar)

            timer(0)
            cont <- 1
            opc <- 0
            enquanto opc < 187 faca
               se ficha[1,cont] = apagar entao
                  opc <- 187
               senao
                  cont <- cont +1
               fimse
               opc <- opc + 1
            fimenquanto

            del <- del + 1
            opc <- 1

            // SUBTRAIR O CONTADOR DE CARRO
            se dado[1,cont] = "CARRO" entao
               contc <- contc - 1
               escreva("HORA DA SAIDA: ")
               leia(deletado[7,del])
            senao

               // SUBTRAIR O CONTADOR DE MOTO
               se dado[1,cont] = "MOTO" entao
                  contm <- contm - 1
                  escreva("HORA DA SAIDA: ")
                  leia(deletado[7,del])
               senao

                  // SUBTRAIR CONTADORT DE BICICLETA
                  se dado[1,cont] = "BICICLETA" entao
                     contb <- contb - 1
                     escreva("HORA DA SAIDA: ")
                     leia(deletado[7,del])
                  senao

                     // FICHA INVALIDA
                     se dado [1,cont] = 0 entao
                        escreval("FICHA INVALIDA. ENTER PARA VOLTAR!")
                        leia(opc)
                        contv <- contv + 1
                     fimse
                  fimse
               fimse
            fimse

            // REGISTRAR O VEICULO NA MATRIZ DE APAGADOS
            repita
               deletado[1,del] <- dado[1,cont]
               deletado[2,del] <- dado[2,cont]
               deletado[3,del] <- dado[3,cont]
               deletado[4,del] <- dado[4,cont]
               deletado[5,del] <- dado[5,cont]
               deletado[6,del] <- dado[6,cont]
               fichadel[del] <- ficha[1,cont]
               opc <- opc + 1
            ate opc > del

            // VEICULO APAGADO RECEBE O PROXIMO, PARA REAJUSTAR LISTA
            repita
               dado[1,cont] <- dado[1,cont+1]
               dado[2,cont] <- dado[2,cont+1]
               dado[3,cont] <- dado[3,cont+1]
               dado[4,cont] <- dado[4,cont+1]
               dado[5,cont] <- dado[5,cont+1]
               dado[6,cont] <- dado[6,cont+1]
               ficha[1,cont] <- ficha[1,cont+1]
               cont <- cont + 1
            ate cont > contf

            //
            limpatela
            se dado [1,cont] = 0 entao
               contv <- contv
            senao
               contv <- contv - 1
            fimse

            // VOLTAR AO MENU
         caso 2
            limpatela
         outrocaso
            limpatela
         fimescolha
         timer(10)

         // LISTA DE DELETADOS
      caso 3
         limpatela
         escreval("==================================================================")
         escreval("                           DELETADOS                              ")
         escreval("==================================================================")
         escreval("")

         // EXIBE OS DADOS DOS DELETADOS
         para cont <- 1 ate del faca
            escreval("VEICULO: ",deletado[1,cont],"   NOME:",deletado[2,cont], "   PLACA: ",deletado[3,cont])
            escreval("MODELO: ",deletado[4,cont],"   COR: ",deletado[5,cont],"    FICHA: ",fichadel[cont])
            escreval("HORA DE ENTRADA: ",deletado[6,cont],"   HORA DE SAIDA: ",deletado[7,cont])
            escreval("")
         fimpara
         escreval("")
         escreva("                    DIGITE ENTER PARA VOLTAR")
         leia(opc)
         limpatela

         // CREDITOS DOS CRIADORES
      caso 4
         limpatela

         // ESPAÇOS PARA FAZER A SUBIDA DOS CREDITOS
         timer(1)
         para cont de 1 ate 20 faca
            escreval("")
         fimpara

         timer(65)
         escreval("================================================================")
         escreval("                             CREDITOS                           ")
         escreval("================================================================")

         para cont de 1 ate 6 faca
            escreval("")
         fimpara

         escreval("                          PRODUZIDO POR : ")
         para cont de 1 ate 3 faca
            escreval("")
         fimpara

         escreval("                          GUILHERME CAIRES ")
         para cont de 1 ate 3 faca
            escreval("")
         fimpara

         escreval("                          IGOR VIANA ")
         para cont de 1 ate 3 faca
            escreval("")
         fimpara

         escreval("                          JEFFERSON ELLOY")
         para cont de 1 ate 3 faca
            escreval("")
         fimpara

         escreval("                          JOANDERSON SANTOS ")
         para cont de 1 ate 3 faca
            escreval("")
         fimpara

         timer(10)
         escreval ("                   DIGITE QUALQUER TECLA PARA VOLTAR")
         leia(opc)
         limpatela

         // SAIR DO PROGRAMA
      caso 5
         limpatela
         infinito <- 1

         // NENHUMA DAS OPCOES ANTERIOES
      outrocaso
         limpatela
      fimescolha

   fimenquanto
fimalgoritmo

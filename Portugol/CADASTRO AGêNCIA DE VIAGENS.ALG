Algoritmo "cadastro agência de viagens"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 03/07/2022
Var
// Seção de Declarações das variáveis 
nomes: vetor[0..50] de caractere
sobrenomes: vetor[0..50] de caractere
cpfs: vetor[0..50] de caractere
nomedestinos: vetor[0..50] de caractere
op, nome, destino: caractere
i,j,s,k: inteiro

procedimento inicializa()

   Inicio
      // Seção de Comandos, procedimento, funções, operadores, etc...
      enquanto op <>"6" faca
      Escreval("----------------")
      Escreval("MENU")
      Escreval("----------------")
      Escreval("(1) Cadastrar Cliente")
      Escreval("(2) Buscar Cliente")
      Escreval("(3) Sair")
      Escreval("(4) Cadastrar Destino")
      Escreval("(5) Buscar Destino")
      Escreva(" Escolha uma opção: ")
      Leia (op)

      Se op="1" entao
         limpatela
         cadastrar_cliente()
         fimse

      Se op="2" entao
         limpatela
         buscar_cliente()
         fimse

      Se op="3" entao
         para i de 0 ate 50 faca
              nomes[i]<-"x"
         fimpara
         limpatela
         Escreval ("Obrigado! Volte sempre!")
         fimse

      Se op="4" entao
         limpatela
         cadastrar_destino()
         fimse
         fimenquanto

      Se op="5" entao
         limpatela
         buscar_destino()
         fimse

fimprocedimento

procedimento cadastrar_cliente()
   inicio
   para i de 0 ate 50 faca
   se (nomes [i]="") entao
   Escreva ("Nome do novo cliente: ")
   leia (nomes [i])
   Escreva ("Sobrenome: ")
   leia (sobrenomes [i])
   Escreva ("CPF: ")
   leia (cpfs [i])
   voltar_menu()
   s<-s+1
   limpatela
   fimse
   fimpara
   Escreval ("Esgotou o limite de procedimento")
fimprocedimento

procedimento voltar_menu()
   inicio
        Escreva ("Voltar para o menu (s/n)?")
        Leia (op)
        se op="s" entao
        i<-i+1
        limpatela
        inicializa()
        senao
        limpatela
        cadastrar_cliente()
        fimse
fimprocedimento
  
procedimento voltar_menu2()
   inicio
     Escreva ("Voltar para o menu (s/n)?")
     Leia (op)
     se op="s" entao
        limpatela
        inicializa()
     senao
      limpatela
      buscar_cliente()
     fimse
fimprocedimento
  
procedimento voltar_menu3()
   inicio
     Escreva ("Voltar para o menu (s/n)?")
     Leia (op)
     se op="s" entao
     i<-i+1
     limpatela
     inicializa()
     senao
     limpatela
     cadastrar_destino()
     fimse
fimprocedimento

procedimento voltar_menu4()
   inicio
     Escreva ("Voltar para o menu (s/n)?")
     Leia (op)
     se op="s" entao
     i<-i+1
     limpatela
     inicializa()
     senao
     limpatela
     buscar_destino()
     fimse
fimprocedimento
  
 procedimento buscar_cliente()
 inicio
 j<-0
 Escreval ("Qual cliente você procura?")
  Leia (nome)
  para i de 0 ate 50 faca
  se nome=nomes[i] entao
  Escreval ("Nome:", nomes[i])
  Escreval ("sobrenome:", sobrenomes[i])
  Escreval ("CPF:", cpfs[i])
  j<-j+1
  Fimse
  fimpara
  se j=0 entao
  escreval ("Cliente Inexistente")
  fimse
  voltar_menu2()
  limpatela
fimprocedimento
  
procedimento buscar_destino()
 inicio
 j<-0
 Escreval ("Qual destino você procura?")
  Leia (destino)
  para i de 0 ate 50 faca
  se destino=nomedestinos[i] entao
  Escreval ("Nome do Destino:", nomedestinos[i])
  j<-j+1
  Fimse
  fimpara
  se j=0 entao
  escreval ("Destino Inexistente")
  fimse
  voltar_menu4()
  limpatela
fimprocedimento
  
  
   procedimento cadastrar_destino()
   inicio
   para i de 0 ate 50 faca
   se (nomedestinos [i]="") entao
   Escreva ("Nome do destino:")
   leia (nomedestinos [i])
   voltar_menu3()
   s<-s+1
   limpatela
   fimse
   fimpara
   Escreval ("Esgotou o limite de procedimento")
   fimprocedimento
  

  
  inicio
  inicializa()

Fimalgoritmo
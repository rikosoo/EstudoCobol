      ******************************************************************
      * Author: HENRIQUE STEFANUTTI    
      * Date:  05/2023
      * Purpose: APRENDER OPERAÇÕES E VARIAVEIS EM COBOL
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       PROGRAM-ID. CALCULADORA.
       ENVIRONMENT DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       CONFIGURATION SECTION.
      *-----------------------
       INPUT-OUTPUT SECTION.
      *-----------------------
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
        01 NUMEROINICIAL   PIC  9(5)            VALUE ZERO.
        01 NUMEROFINAL      PIC  9(5)           VALUE ZERO.
        01 OPERADOR              PIC X VALUE "+".
           88 DIVIDIR            VALUE "/".
           88 SOMAR              VALUE "+".
           88 SUBTRAIR           VALUE "-".
           88 MULTIPLICAR        VALUE "*".
           88 OPERADORESVALIDOS  VALUE "*","+","/","-".
                                 
        01 RESULTADO      PIC --,--9.99.  
        
        

           

      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-

       PROCEDURE DIVISION.
           
       MAIN-PROCEDURE.
           DISPLAY "BEM-VINDO À CALCULADORA DO HENRICÃO".

           DISPLAY "Coloque o primeiro numero".
           ACCEPT NUMEROINICIAL.
           DISPLAY "Qual operação deseja realizar? +, -, * e /.".
           ACCEPT OPERADOR.
           DISPLAY "Qual o segundo numero que deseja para a operação?".
           ACCEPT NUMEROFINAL.
           EVALUATE TRUE
           
           WHEN DIVIDIR
              DIVIDE NUMEROINICIAL BY NUMEROFINAL GIVING RESULTADO

           WHEN SOMAR
               ADD NUMEROINICIAL, NUMEROFINAL GIVING
               RESULTADO

           WHEN SUBTRAIR
               SUBTRACT NUMEROFINAL FROM NUMEROINICIAL
               GIVING RESULTADO

           WHEN MULTIPLICAR
               MULTIPLY NUMEROINICIAL BY NUMEROFINAL
               GIVING RESULTADO


           END-EVALUATE

             IF OPERADORESVALIDOS
  
               
         

           DISPLAY "ES = " RESULTADO


           END-IF

           STOP RUN.


      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       MAIN-PROCEDURE.
      **
      * The main procedure of the program
      **

      ** add other procedures here
       END PROGRAM CALCULADORA.

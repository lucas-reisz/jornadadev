FUNCTION Main()
    LOCAL nNumero1 := 0, nNumero2 := 0, nResultado := 0
    LOCAL cEntrada := "0"

    QOut("===================================================")
    QOut("          CALCULADORA             ")

    ACCEPT "Digite um n£mero: " TO cEntrada
    nNumero1 := Val(cEntrada)
    
    QOut("Escolha uma operaá∆o: ")
    QOut("Adiá∆o (+)")
    QOut("Subtraá∆o (-)")
    QOut("Multiplicaá∆o (*)")
    QOut("Divis∆o (/) ")
    QOut("Potànciaá∆o (^)")
    QOut("Raiz quadrada (Q) ")
    
    ACCEPT ": " TO cEntrada
    QOut("Entrada: "+cEntrada)

    DO CASE
        CASE cEntrada == "+"
            
            ACCEPT (Str(nNumero1) + cEntrada) TO cEntrada
            nNumero2 := Val(cEntrada)
            nResultado := nNumero1 + nNumero2
            QOut(ALLTRIM(Str(nNumero1))+ " + " + ALLTRIM(Str(nNumero2)) + " = "+ ALLTRIM(Str(nResultado)))

        CASE cEntrada == "-"

            ACCEPT (Str(nNumero1) + cEntrada) TO cEntrada
            nNumero2 := Val(cEntrada)
            nResultado := nNumero1 - nNumero2
            QOut(ALLTRIM(Str(nNumero1))+ " - " + ALLTRIM(Str(nNumero2)) + " = "+ ALLTRIM(Str(nResultado)))

        CASE cEntrada == "*"

            ACCEPT (Str(nNumero1) + cEntrada) TO cEntrada
            nNumero2 := Val(cEntrada)
            nResultado := nNumero1 * nNumero2
            QOut(ALLTRIM(Str(nNumero1))+ " * " + ALLTRIM(Str(nNumero2)) + " = "+ ALLTRIM(Str(nResultado)))

        CASE cEntrada == "/"

            ACCEPT (Str(nNumero1) + cEntrada) TO cEntrada
            nNumero2 := Val(cEntrada)

            IF nNumero2 == 0
                QOut("N∆o Ç poss°vel dividir por 0!")
            ELSE
                nResultado := nNumero1 / nNumero2
                QOut(ALLTRIM(Str(nNumero1))+ " / " + ALLTRIM(Str(nNumero2)) + " = "+ ALLTRIM(Str( Round(nResultado, 2))))
            ENDIF

        CASE cEntrada == "^"

            ACCEPT (Str(nNumero1) + cEntrada) TO cEntrada
            nNumero2 := Val(cEntrada)
            nResultado := nNumero1 ^ nNumero2
            QOut(ALLTRIM(Str(nNumero1))+ " ^ " + ALLTRIM(Str(nNumero2)) + " = "+ ALLTRIM(Str(Round(nResultado, 2))))

        CASE Upper(cEntrada) == "Q"
            IF nNumero1 < 0
                nNumero1 := nNumero1 * (-1)
                nResultado := Sqrt(nNumero1)
                QOut("Raiz de quadrada de: -"+ALLTRIM(Str(nNumero1)) + " = " + ALLTRIM(Str(Int(nResultado))) + "i")
            ELSE
                nResultado := Sqrt(nNumero1)
                QOut("Raiz de quadrada de: "+ALLTRIM(Str(nNumero1)) + " = " + ALLTRIM(Str(nResultado)))
            ENDIF
        OTHERWISE
            QOut("Opá∆o Inv†lida!")
            QOut("Encerrando programa...")
    ENDCASE
    QOut("===================================================")
RETURN NIL
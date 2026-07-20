FUNCTION Main()
    LOCAL nNumero := 0, nTotal := 0, nQtd := 0
    LOCAL cEntrada := "0"

    QOut("===MÁQUINA DE SOMAR===")
    WHILE .T.
        ACCEPT "Digite um número: " TO cEntrada
        nNumero := Val(cEntrada)

        IF nNumero == 0
            EXIT
        ENDIF

        nTotal := nTotal + nNumero
        nQtd := nQtd + 1
    ENDDO

    QOut("Valores somados= "+AllTrim(Str(nQtd)))
    QOut("Total somado= "+AllTrim(Str(nTotal)))
RETURN NIL
FUNCTION Main()
    LOCAL nNumero1 := 0, nNumero2 := 0, nMaior := 0, nMenor := 0
    LOCAL cEntrada := "0"

    QOut("Identificar N£mero Maior e Menor")
    ACCEPT "Digite o 1 n£mero: " TO cEntrada
    nNumero1 := Val(cEntrada)

    ACCEPT "Digite o 2 n£mero: " TO cEntrada
    nNumero2 := Val(cEntrada)

    IF nNumero1 > nNumero2
        nMaior := nNumero1
        nMenor := nNumero2
    ELSEIF nNumero2 > nNumero1
        nMaior := nNumero2
        nMenor := nNumero1
    ELSE
        QOut("Números Iguais = "+ AllTrim(Str(nNumero1)))
        RETURN NIL
    ENDIF

    QOut("Maior= "+ ALLTRIM(Str(nMaior)))
    QOut("Menor= "+ ALLTRIM(Str(nMenor)))

RETURN NIL
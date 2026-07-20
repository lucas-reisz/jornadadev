FUNCTION Main()
    LOCAL nNumeroSorteado := 0, nPalpite := 0, nTentativas := 7, nI := 0
    LOCAL cEntrada := ""
    QOut("ADIVINHE O NÚMERO")

    nNumeroSorteado = HB_RandomInt(1, 100)
    //QOut(Str(nNumeroSorteado))
    FOR nI := 1 TO nTentativas
        ACCEPT "Palpite "+ AllTrim(Str(nI))+": " TO cEntrada
        nPalpite := Val(cEntrada)

        IF nPalpite > nNumeroSorteado
            QOut("É UM NÚMERO MENOR")
        ELSEIF nPalpite < nNumeroSorteado
            QOut("É UM NÚMERO MAIOR")
        ELSE
            QOut("NÚMERO SORTEADO="+ AllTrim(Str(nNumeroSorteado)))
            QOut("PARABÉNS VOCÊ ACERTOU!!")
            EXIT
        ENDIF

        IF nI == nTentativas 
            QOut("NÚMERO SORTEADO="+ AllTrim(Str(nNumeroSorteado)))
            QOut("BOA SORTE NA PRÓXIMA VEZ!!")
        ENDIF 
    NEXT

RETURN NIL
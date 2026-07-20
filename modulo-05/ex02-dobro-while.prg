FUNCTION Main()
    LOCAL nNumero := 0
    LOCAL cEntrada := "0"

    QOut("===LEITURA DE VALORES===")
    WHILE .T.
        ACCEPT "Digite um número: " TO cEntrada
        nNumero := Val(cEntrada)

        IF nNumero <= 0
            EXIT
        ENDIF

        QOut(AllTrim(Str(nNumero * 2)))
    ENDDO
RETURN NIL
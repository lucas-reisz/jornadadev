FUNCTION Main()
    LOCAL cEntrada := "1"

    LOCAL nMes := 0
    LOCAL aMeses := { "Janeiro", "Fevereiro", "Março", "Abril", "Maio", "Junho", "Julho", "Agosto", "Setembro", "Outubro", "Novembro", "Dezembro" }

    ACCEPT "Digite o número do mês (1 a 12): " TO cEntrada

    nMes := Val(ALLTRIM(cEntrada))

    IF nMes >= 1 .AND. nMes <= 12
        QOut(aMeses[nMes])
    ELSE
        QOut("Mês Inválido!")
    ENDIF

RETURN NIL
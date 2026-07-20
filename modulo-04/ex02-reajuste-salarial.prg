FUNCTION Main()
    LOCAL nSalario:= 0, nReajuste := 0
    LOCAL cEntrada := "0"

    QOut("Reajuste de Sal rio")
    ACCEPT "Digite o sal rio atual: " TO cEntrada
    nSalario := Val(cEntrada)

    IF nSalario <= 0
        QOut("Sal rio inv lido!")
        RETURN NIL
    ENDIF

    QOut("Antigo Sal rio: R$"+ ALLTRIM(Str(nSalario)))
    IF nSalario < 1000
        QOut("Reajuste de 15%")
        nReajuste := nSalario * 0.15
        nSalario := nSalario + nReajuste
    ELSEIF nSalario >= 1000 .AND. nSalario < 2000
        QOut("Reajuste de 12%")
        nReajuste := nSalario * 0.12
        nSalario := nSalario + nReajuste
    ELSEIF nSalario >= 2000 .AND. nSalario <= 4000
        QOut("Reajuste de 8%")
        nReajuste := nSalario * 0.08
        nSalario := nSalario + nReajuste
    ELSE
        QOut("Reajuste de 5%")
        nReajuste := nSalario * 0.05
        nSalario := nSalario + nReajuste
    ENDIF

    QOut("Reajuste: R$"+ ALLTRIM(Str(nReajuste)))
    QOut("Novo Sal rio: R$"+ ALLTRIM(Str(nSalario)))

RETURN NIL
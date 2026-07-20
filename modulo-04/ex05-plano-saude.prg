FUNCTION Main()
    LOCAL nIdade := 0, nValorPlano := 0, nValorAdicional := 0, nDependentes := 0
    LOCAL cEntrada := "1"

    QOut("===========================")
    QOut("      PLANO DE SAÚDE      ")
    QOut("===========================")

    ACCEPT "Digite sua idade: " TO cEntrada
    nIdade := Val(cEntrada)

    IF(nIdade <= 0)
        QOut("Idade Inválida")
        RETURN NIL
    ENDIF

    ACCEPT "Número de dependentes: " TO cEntrada
    nDependentes := Val(cEntrada)
    
    IF(nDependentes < 0)
        nDependentes := 0
    ENDIF

    IF nIdade <= 25 .AND. nIdade > 0
        nValorPlano := 180
    ELSEIF nIdade > 25 .AND. nIdade <= 40    
        nValorPlano := 260
    ELSEIF nIdade > 40 .AND. nIdade <= 60
        nValorPlano := 380
    ELSE
        nValorPlano := 520
    ENDIF

    nValorAdicional := 90 * nDependentes
    nValorPlano := nValorPlano + nValorAdicional

    QOut("Valor do Plano: R$" + AllTrim(Str(nValorPlano)))
    QOut("===========================")

RETURN NIL
FUNCTION Main()
    LOCAL cNome := "-", cEntrada := "0"
    LOCAL dDataNascimento := Date(), nIdade := 0
    LOCAL nPrecoProduto := 0, nDesconto := 0, nTotal := 0
    Set( _SET_DATEFORMAT, "dd/mm/yyyy" )

    QOut("Programa de Desconto")
    ACCEPT "Digite seu nome: " TO cEntrada
    cNome := cEntrada

    ACCEPT "Digite sua data de nascimento (DD/MM/YYYY): " TO cEntrada
    dDataNascimento := CtoD(cEntrada)
    nIdade := (Date() - dDataNascimento) / 365

    ACCEPT "Digite o valor do Produto: " TO cEntrada
    nPrecoProduto := Val(cEntrada)

    IF nIdade > 60 
        nDesconto := nPrecoProduto * 0.125
        nTotal := nPrecoProduto - nDesconto
    ELSE 
        nTotal := nPrecoProduto
    ENDIF

    QOut("==================================")
    QOut("Nome:         " + cNome)
    QOut("Idade:        " + ALLTRIM(Str( Int(nIdade))) + " anos")
    QOut("Preço: R$     " + ALLTRIM(Str( Round(nPrecoProduto, 2))))
    QOut("Desconto: R$  " + ALLTRIM(Str( Round(nDesconto, 2))))
    QOut("Total: R$     " + ALLTRIM(Str( Round(nTotal, 2))))
    QOut("==================================")

RETURN NIL 
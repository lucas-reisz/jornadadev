FUNCTION Main()
    LOCAL cNome := "Lucas Reis"
    LOCAL cCidade := "SÆo Paulo/SP"
    LOCAL cCurso := "Harbour/ADVPL"

    hb_cdpSelect("PT850")

    QOut("===============================")
    QOut("     FICHA DE APRESENTA€ÇO     ")
    QOut("===============================")
    QOut("Nome    : " + cNome)
    QOut("Cidade  : " + cCidade)
    QOut("Curso   : " + cCurso)
    QOut("===============================")
RETURN NIL
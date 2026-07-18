FUNCTION Main()
    LOCAL nNota1 := 0, nNota2 := 0, nNota3 := 0, nNota4 := 0
    LOCAL nPeso1 := 1, nPeso2 := 2, nPeso3 := 3, nPeso4 := 4
    LOCAL nMedia := 0
    LOCAL cEntrada := "0"

    QOut("===============================")
    QOut("Calcular média ponderada")

    ACCEPT "Nota 1: " to cEntrada
    nNota1 := Val(cEntrada)

    ACCEPT "Nota 2: " to cEntrada
    nNota2 := Val(cEntrada)

    ACCEPT "Nota 3: " to cEntrada
    nNota3 := Val(cEntrada)

    ACCEPT "Nota 4: " to cEntrada
    nNota4 := Val(cEntrada)

    nMedia := ((nNota1 * nPeso1) + (nNota2 * nPeso2) + (nNota3 * nPeso3) + (nNota4 * nPeso4)) / (nPeso1 + nPeso2 + nPeso3 + nPeso4)

    QOut("Média= " + ALLTRIM(Str( Round(nMedia, 2))))
    QOut("===============================")

RETURN NIL 
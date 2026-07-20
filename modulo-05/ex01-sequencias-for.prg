FUNCTION Main()
    LOCAL nI := 0

    QOut("========================")
    QOut("CONTAGEM DE NÚMEROS")
    QOut("a) 1 a 100")
    FOR nI := 1 TO 100
        QOut(AllTrim(Str(nI)))
    NEXT

    QOut("========================")
    QOut("b) -50 a 50")
    FOR nI := -50 TO 50
        QOut(AllTrim(Str(nI)))
    NEXT

    QOut("========================")
    QOut("c) 80 a 5 (Descremento)")
    FOR nI := 80 TO 5 STEP -1
        QOut(AllTrim(Str(nI)))
    NEXT

RETURN NIL
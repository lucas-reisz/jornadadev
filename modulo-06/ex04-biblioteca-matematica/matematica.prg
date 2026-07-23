FUNCTION FatorialN(nNumero)
    LOCAL nI := 0, nFatorial := 1
    QOut("")
    QOut("FATORIAL")
    FOR nI := nNumero TO 1 STEP -1
        IF nI == 1
            QQOUT(ALLTRIM(Str(nI)))
        ELSE
            QQOUT(ALLTRIM(Str(nI)) + "*")
        ENDIF
        nFatorial *= nI
    NEXT
    QQOUT("="+ALLTRIM(Str(nFatorial)))
RETURN NIL

FUNCTION EhPrimo(nNumero)
    LOCAL nI := 0, nCont := 0
    LOCAL lPrimo := .F.
    QOut("")
    QOut("NÚMERO PRIMO")
    FOR nI = 1 TO nNumero
        IF nNumero % nI == 0
            nCont++
        ENDIF
    NEXT
    IF nCont == 2
        lPrimo := .T.
        QOut(ALLTRIM(Str(nNumero)) + " É PRIMO!")
    ELSE
        lPrimo := .F.
        QOut(ALLTRIM(Str(nNumero)) + " NÃO É PRIMO!")
    ENDIF
RETURN lPrimo

FUNCTION MMC(nA, nB)
    LOCAL nMinimo := 0, nN1 := nA, nN2 := nB

    QOut("")
    QOut("MÍNIMO MULTIPLO COMUM")

RETURN nA

FUNCTION MDC(nA, nB)

    QOut("")
    QOut("MÁXIMO DIVISOR COMUM")
RETURN NIL
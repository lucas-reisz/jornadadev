SET PROCEDURE TO matematica.prg

FUNCTION Main()
    LOCAL nNumero1 := 0, nNumero2 := 0

    FatorialN(LerNumero(nNumero1))
    QOut(EhPrimo(LerNumero(nNumero1)))
RETURN NIL

FUNCTION LerNumero(nNumero)
    LOCAL cEntrada := ""
    ACCEPT "Digite um n£mero: " TO cEntrada
    nNumero := Val(ALLTRIM(cEntrada))
RETURN nNumero
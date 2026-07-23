FUNCTION Main()
    LOCAL nNumero1 := 0, nNumero2 := 0, nResultado := 0
    LOCAL cEntrada := ""

    QOut("==================================================")
    QOut("                  CALCULADORA                    ")
    nNumero1 := LerNumero(nNumero1)
    cEntrada := Upper(LerOperacao(cEntrada))
    IF cEntrada != "Q"
        nNumero2 := LerNumero(nNumero2)
    ENDIF
    nResultado := Calcular(cEntrada, nNumero1, nNumero2)
    MostrarResultado(nNumero1 ,cEntrada , nNumero2 ,nResultado)
    QOut("==================================================")
RETURN NIL


FUNCTION Somar(nNumero1, nNumero2)
RETURN (nNumero1 + nNumero2 )

FUNCTION Subtracao(nNumero1, nNumero2)
    LOCAL nResultado := (nNumero1 - nNumero2)
RETURN nResultado

FUNCTION Multiplicacao(nNumero1, nNumero2)
RETURN nNumero1 * nNumero2 

FUNCTION Divisao(nNumero1, nNumero2)
    IF nNumero2 == 0
        QOut("NÆo ‚ poss­vel dividir por 0!")
        RETURN .F.
    ENDIF
RETURN nNumero1 / nNumero2 

FUNCTION Potencia(nNumero1, nNumero2)
RETURN nNumero1 ^ nNumero2

FUNCTION RaizQ(nNumero1)
    LOCAL nResultado := 0
    IF nNumero1 < 0
        nNumero1 := nNumero1 * (-1)
        nResultado := Sqrt(nNumero1)
    ELSE
        nResultado := Sqrt(nNumero1)
    ENDIF
RETURN nResultado

FUNCTION LerNumero(nNumero)
    LOCAL cEntrada := ""
    ACCEPT "Digite um n£mero: " TO cEntrada
    nNumero := Val(ALLTRIM(cEntrada))
RETURN nNumero

FUNCTION LerOperacao(cEntrada)
    QOut("Escolha uma opera‡Æo: ")
    QOut("Adi‡Æo (+)")
    QOut("Subtra‡Æo (-)")
    QOut("Multiplica‡Æo (*)")
    QOut("Divis‡Æo (/) ")
    QOut("Potˆncia‡Æo (^)")
    QOut("Raiz quadrada (Q) ")
    ACCEPT ": " TO cEntrada
RETURN cEntrada

FUNCTION Calcular(cEntrada, nNumero1, nNumero2)
    LOCAL nResultado := 0
    DO CASE
        CASE cEntrada == "+"
            nResultado := Somar(nNumero1, nNumero2)
        CASE cEntrada == "-"
            nResultado := Subtracao(nNumero1, nNumero2)
        CASE cEntrada == "*"
            nResultado := Multiplicacao(nNumero1, nNumero2)
        CASE cEntrada == "/"
            nResultado := Divisao(nNumero1, nNumero2)
        CASE cEntrada == "^"
            nResultado := Potencia(nNumero1, nNumero2)
        CASE Upper(cEntrada) == "Q"
            nResultado := RaizQ(nNumero1)
        OTHERWISE
            QOut("Op?’o Invÿlida!")
            QOut("Encerrando programa...")
    ENDCASE
RETURN nResultado

FUNCTION MostrarResultado(nNumero1, cEntrada, nNumero2, nResultado)
    IF Upper(cEntrada) == "Q"
        IF nNumero1 < 0
            QOut("Raiz de quadrada de: "+ALLTRIM(Str(nNumero1))+ " ? = ", ALLTRIM(Str(nResultado)+ "i"))
        ELSE 
            QOut("Raiz de quadrada de: "+ALLTRIM(Str(nNumero1))+ " ? = ", ALLTRIM(Str(nResultado)))
        ENDIF
        
    ELSE
        QOut(ALLTRIM(Str(nNumero1)) + cEntrada + ALLTRIM(Str(nNumero2)) + " = " + ALLTRIM(Str(nResultado)))
    ENDIF 
RETURN NIL

#define PI 3.14159

FUNCTION Main()
    QOut("Exercicios 02")
    CalcularAreaCiruclo()
    CalculoHipotenusaTriangulo()
    CalculoIMC()
RETURN NIL 

FUNCTION CalcularAreaCiruclo()
    LOCAL cEntrada := "0"
    LOCAL nArea := 0, nRaio := 0
    
    QOut("===============================================")
    QOut("a) Calcular área de um Círculo")

    ACCEPT "Valor do raio: " TO cEntrada
    nRaio := Val(cEntrada)
    nArea := PI * (nRaio ^ 2)

    QOut("Valor da área: " + ALLTRIM(Str(nArea)))
RETURN NIL

FUNCTION CalculoHipotenusaTriangulo()
    LOCAL nCatetoA := 0, nCatetoB := 0, nHipotenusa := 0
    LOCAL cEntrada := "0"

    QOut("===============================================")
    QOut("b) Calculo da Hipotenusa do triângulo retângulo")
    ACCEPT "Valor do Cateto A: " to cEntrada
    nCatetoA := Val(cEntrada)

    ACCEPT "Valor do Cateto B: " to cEntrada
    nCatetoB := Val(cEntrada)

    nHipotenusa := Sqrt((nCatetoA ^ 2) + (nCatetoB ^ 2))

    QOut("Hipotenusa = " + ALLTRIM(Str(nHipotenusa)))
RETURN NIL

FUNCTION CalculoIMC()
    LOCAL nPeso := 0, nAltura := 0, nIMC := 0
    LOCAL cEntrada := "0"
    LOCAL nPesoAbaixo := 18.5, nPesoNormal := 24.99, nSobrepeso := 29.99
    LOCAL nObesidadeI := 34.99, nObesidadeII := 39.99

    QOut("===============================================")
    QOut("c) Calculo do Índice de Massa Corporal")
    ACCEPT "Digite o valor do Peso: (60kg) " TO cEntrada
    nPeso = Val(cEntrada)

    ACCEPT "Digite o valor da Altura: (1.70m) " TO cEntrada
    nAltura = Val(cEntrada)

    IF nPeso <= 0 .OR. nAltura <= 0
        QOut("Valores inválidos.")
        RETURN NIL
    ENDIF

    nIMC := nPeso / (nAltura ^ 2)

    QOut("IMC = " + ALLTRIM(Str(nIMC, 10, 2)))

    IF nIMC <= nPesoAbaixo
        QOut("Peso Abaixo do Normal")
    ELSEIF nIMC <= nPesoNormal
        QOut("Peso Normal")
    ELSEIF nIMC <= nSobrepeso
        QOut("Sobrepeso")
    ELSEIF nIMC <= nObesidadeI
        QOut("Obesidade Grau 1")
    ELSEIF nIMC <= nObesidadeII
        QOut("Obesidade Grau 2")
    ELSE
        QOut("Obesidade Grau 3")
    ENDIF

RETURN NIL
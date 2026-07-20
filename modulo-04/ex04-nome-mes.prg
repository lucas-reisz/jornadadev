FUNCTION Main()
    LOCAL cEntrada := "1"

    ACCEPT "Digite o número do mês (1 a 12): " TO cEntrada

    DO CASE
        CASE cEntrada == "1"
            QOut("Janeiro")
        CASE cEntrada == "2"
            QOut("Fevereiro")
        CASE cEntrada == "3"
            QOut("Março")
        CASE cEntrada == "4"
            QOut("Abril")
        CASE cEntrada == "5"
            QOut("Maio")
        CASE cEntrada == "6"
            QOut("Junho")
        CASE cEntrada == "7"
            QOut("Julho")
        CASE cEntrada == "8"
            QOut("Agosto")
        CASE cEntrada == "9"
            QOut("Setembro")
        CASE cEntrada == "10"
            QOut("Outubro")
        CASE cEntrada == "11"
            QOut("Novembro")
        CASE cEntrada == "12"
            QOut("Dezembro")
        OTHERWISE
            QOut("Mês Inválido!")
    ENDCASE

RETURN NIL
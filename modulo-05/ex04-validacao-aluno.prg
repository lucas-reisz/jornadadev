FUNCTION Main()
    LOCAL nNota1 := -1, nNota2 := -1, nMedia := 0
    LOCAL cEntrada := "0", cNome := "", cDisciplina := ""

    QOut("==============================")
    QOut("===== VALIDACAO COMPLETA =====")
    QOut("==============================")

    DO WHILE .T.
        ACCEPT "Nome do aluno: " TO cEntrada
        cNome := ALLTRIM(cEntrada)
        IF  Len(Trim(cNome)) > 0
            EXIT
        ENDIF
    ENDDO

    DO WHILE .T.
        ACCEPT "Matéria: " TO cEntrada
        cDisciplina := ALLTRIM(cEntrada)
        IF  Len(cDisciplina) == 3 .AND. cDisciplina == Upper(cDisciplina)
            EXIT
        ENDIF
    ENDDO


    DO WHILE nNota1 < 0 .OR. nNota1 > 10
        ACCEPT "Nota 1: " TO cEntrada
        nNota1 := Val(ALLTRIM(cEntrada))
        IF  nNota1 >= 0 .AND. nNota1 <= 10
            EXIT
        ENDIF
    ENDDO
    
    DO WHILE nNota2 < 0 .OR. nNota2 > 10
        ACCEPT "Nota 2: " TO cEntrada
        nNota2 := Val(ALLTRIM(cEntrada))
        IF  nNota2 >= 0 .AND. nNota2 <= 10
            EXIT
        ENDIF
    ENDDO

    nMedia := ( nNota1 + nNota2) / 2

    QOut("==============================")
    QOut("Aluno:        "+ cNome)
    QOut("Disciplina:   "+ cDisciplina)
    QOut("Nota 1:       "+ Str(nNota1))
    QOut("Nota 2:       "+ Str(nNota2))
    QOut("Média:        "+ Str(nMedia, 10, 2))
    QOut("==============================")

RETURN NIL
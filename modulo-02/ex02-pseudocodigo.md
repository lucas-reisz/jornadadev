a. Area do retangulo

```
algoritmo "Calcular base do retangulo"
var
  area, base, altura: real

inicio
  escreval("Digite o valor da BASE: ")
  leia(base)
  escreval("Digite o valor da ALTURA: ")
  leia(altura)

  area <- base * altura

  escreval("A ÁREA do retangulo é: ", area)

fimalgoritmo
```

b. Par ou impar

```
algoritmo "Numero par ou impar"

var
  numero: inteiro

inicio
  escreval("Verificação se um número é impar ou par")
  escreval("Digite um número: ")
  leia(numero)
  se numero mod 2 = 0 entao
    escreval("O número ", numero, " é PAR")
  senao
    escreval("O número ", numero, " é IMPAR")
  fimse
fimalgoritmo
```

c. Maior entre três numeros

```
algoritmo "Maior entre três numeros"

var
  numero, maior: real
  contador: inteiro
  
inicio
  escreval("Verificação de número maior")
  
  para contador de 1 ate 3 faca
    escreval("Digite o ", contador, " número: ")
    leia(numero)
    
    se numero > maior entao
      maior <- numero
    fimse
    
  fimpara
  
  escreval("O maior número é: ", maior)
fimalgoritmo
```

Nivel 1

```
INICIO
    Ler os produtos
    Calcular subtotal
    Aplicar desconto se o cliente tiver cartão (%5)
    Mostrar total a pagar
FIM
```

Nivel 2

```
algoritmo "Supermercado"
var
  total, subtotal, desconto, produto: real
  lista: vetor[1..100000] de real
  contador: inteiro
  resposta: caractere

inicio
  escreval("Ler os produtos")
  contador <- 1
  subtotal <- 0
  total <- 0

  repita
    escreval("Digite o valor do produto: (0 para finalizar) ")
    leia(produto)
    se produto <> 0 entao
      lista[contador] <- produto
      subtotal <- subtotal + lista[contador]
      contador <- contador + 1
    fimse
  ate produto = 0

  escreval("Subtotal: R$", subtotal)

  escreval("Cliente possui cartão fidelidade? (S/N) ")
  leia(resposta)

  se resposta = "S" entao
    desconto <- subtotal * 0.05
    total <- subtotal - desconto
  senao
    total <- subtotal
  fimse
 
  escreval("Total a pagar: R$", total)
 
fimalgoritmo
```


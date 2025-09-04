Na passagem de parâmetros com o método GET que testamos no projeto All Books usamos apenas a categoria no filtro de busca. Seria possível adotar outros parâmetros como filtro na mesma requisição?

Claro, para isso bastaria adicionar o caractere & na separação dos nomes dos parâmetros adotados na requisição. Sendo assim, caso quiséssemos usar o parâmetro autor no filtro de busca, nossa URL ficaria da seguinte forma: https://localhost:8000//livros?categoria=3&autor=1.

Vamos analisar um caso mais complexo, poderíamos ter a seguinte URL:

```text
http://livraria.com/books?category=fiction&author=Jane%20Doe&minPrice=20&maxPrice=50&language=english&discounted=true
```

Neste exemplo, a URL representa uma busca por livros de ficção escritos pela autora Jane Doe, com preços entre R$ 20,00 e R$ 50,00, em inglês, e que estão com desconto. O interessante de ter os parâmetros na URL, é que além de ficar óbvio que o request é um GET, fica fácil para o usuário compartilhar a busca que ele fez, pois é só copiar e colar a URL já com todos os parâmetros. Com o POST, ou qualquer outro método em que os parâmetros são encaminhados no corpo da mensagem, isso não seria possível.

Há um limite para a quantidade de parâmetros que podemos enviar utilizando o método GET?

A especificação do HTTP não estabelece um número máximo de parâmetros nem um tamanho específico para as URLs. Como resultado, cada navegador e servidor pode impor seus próprios limites, embora uma convenção comum seja suportar URLs de até aproximadamente 2000 caracteres.

Dessa forma, ao criar suas requisições, é importante considerar que, caso elas se tornem muito extensas, pode ser apropriado convertê-las para o método POST. Além disso, em casos assim, é também recomendável refatorar as URLs para simplificar a transmissão de parâmetros, aprimorando sua eficiência e legibilidade.


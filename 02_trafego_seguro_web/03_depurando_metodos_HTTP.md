# Depurando métodos HTTP

Quando abrimos o **Postman**, há um menu lateral à esquerda e uma área de trabalho (chamada de workbench) à direita.

Na parte superior do workbench, clique no ícone de mais (+) para criar uma aba com uma nova requisição. No topo dessa aba, há três elementos:

À esquerda, há um menu cascata em que é possível alternar entre diversos métodos do HTTP — por padrão, o método GET está selecionado.
No centro, há um campo para digitar a URL.
À direita, há um botão azul com a inscrição "Send" (enviar).
Inicie enviando uma requisição ao servidor Frontend para obter as informações para renderização da página inicial do All Books. Assim, selecione o método GET, digite a URL abaixo e clique no botão de enviar.

`http://localhost:3000/`
Note que a resposta do servidor é apresentada na parte inferior da interface. Neste caso, trata-se do código HTML contendo todas as informações necessárias para desenhar a tela do Frontend da página All Books.

Faça uma nova requisição, dessa vez, utilizando o método POST. A URL (indicada abaixo) que você utilizará é diferente, pois a requisição será destinada ao servidor backend.

`http://localhost:8000/public/login`

Caso ainda não tenha cadastrado um perfil de usuário no All Books, sugerimos que faça agora mesmo, acessando o Frontend do projeto em seu navegador (`http://localhost:3000/`). Esse é um passo importante, pois as credenciais de acesso cadastradas serão usadas nessa requisição.

Antes de enviar a requisição, será necessário adicionar um JSON em seu corpo (body). Sendo assim, acesse a aba "Body" (no menu abaixo do campo da URL), depois selecione as opções "raw" e "JSON". No campo de texto exibido logo abaixo, insira o corpo da mensagem abaixo substituindo o “inserir” com as credenciais de acesso que você cadastrou:

```json
{"email": "inserir", "senha": "inserir"}
```
Agora, basta enviar a requisição ao servidor, clicando no botão **“Send”**.

A resposta será exibida novamente na parte inferior. Nela você identificará um token de acesso que pode ser usado para acessar páginas protegidas do projeto.

Conseguiu entender o funcionamento dos métodos `POST` e `GET`? Para obter mais informações, clique na Opinião da pessoa instrutora.


## Opinião do instrutor

Agora, você constatou na prática como o método `GET` é utilizado na obtenção de informações, tais como códigos e diferentes tipos de dados, para construção de uma página web em um navegador.

Por outro lado, você observou também a atuação do POST na criação de elementos, tal como o token de acesso que pode ser usado para login de um usuário cadastrado na plataforma All Books.

No Postman, vimos que há uma lista bem extensa de métodos HTTP. Destacamos que os métodos de uso mais frequente são **POST, GET, UPDATE e DELETE**. Tais métodos são tão comuns que deram origem a um acrônimo bem popular, conhecido como **CRUD** ( iniciais de seus respectivos significados em inglês). O **CRUD** representa a base das operações necessárias para uma aplicação web.
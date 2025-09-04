# implementando HTTPS no backend do projeto


Que tal refazer todo o processo de implementação do HTTPS desenvolvido ao longo de nossa aula para entender como deixar uma aplicação web mais segura?

Para isso é importante que você tenha feito a instalação do **OpenSSL** no seu computador.

Abra uma nova janela do terminal do seu computador e acesse a pasta do Backend do projeto com o seguinte comando (Windows):
```bash
cd api-alurabooks
```
Na sequência, utilize o comando *openssl* abaixo para gerar uma chave e um certificado digital:
```bash
openssl req -x509 -sha256 -nodes -days 365 -newkey rsa:2048 -keyout server.key -out server.crt
```
Então, abra a pasta do seu projeto em um editor de código, tal como o Visual Studio Code (VS Code) que utilizamos na aula.

Para habilitar o **HTTPS** no projeto All Books, vamos acessar o arquivo `server.js`

No topo do código, junto com as demais constantes, adicionamos:
```js
const https = require("https")
```
A seguir, role a página do código até a linha em que o servidor é iniciado *(listen na porta 8000)* e implemente a seguinte modificação:
```js
https.createServer({
  key: fs.readFileSync('server.key'),
  cert: fs.readFileSync('server.crt')
}, server).listen(8000, () => {
   console.log("API disponível em https://localhost:8000")
})
```
Verifique se a modificação foi implementada corretamente. Então, salve o arquivo e reinicie o servidor backend do projeto All Books.

Agora, o backend do projeto está mais seguro com a ativação do HTTPS!

Verifique na prática a segurança da implementação utilizando o **Postman** para encaminhar requisições ao backend do projeto e o Wireshark na captura de pacotes.

Repare que o conteúdo dos pacotes interceptados pelo Wireshark são ininteligíveis. A criptografia está funcionando!
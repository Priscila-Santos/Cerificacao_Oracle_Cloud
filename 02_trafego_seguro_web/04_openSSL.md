Para tornar o projeto `All Books` mais seguro contra interceptações na web, vamos utilizar o kit de ferramentas **OpenSSL**. Esse kit é uma implementação de código aberto que permite, entre outras coisas, gerar chaves privadas e certificados digitais. Há algumas recomendações específicas para o uso do OpenSSL, dependendo do sistema operacional que você estiver utilizando.

Confira a seguir como baixar e instalar o OpenSSL no Windows, Linux e MacOS. Assim, você poderá usar o comando openssl no terminal do seu computador para gerar chaves e certificados digitais.

## Windows

Será necessário baixar o executável, instalar manualmente e configurar a variável Path para utilizar os comandos do OpenSSL em seu terminal.

Siga os seguintes passos:

1 - Baixe o programa Win64 OpenSSL v3.1.0 Light EXE;

2 - Execute o instalador baixado:

Note que umas das telas irá mostrar o diretório de instalação; anote esse diretório. No caso do meu computador é “C:\Program Files\OpenSSL-Win64”.
3 - Após a instalação, abra o Painel de Controle e pesquise por “variáveis de ambiente”;

4 - Selecione a opção “Editar as variáveis de ambiente para sua conta”;

5 - Na caixa “Variáveis de usuário”, clique na variável Path, em seguida em “Editar”;

6 - Na nova janela que abrirá, clique em “Novo” e cole o caminho para o binário do openssl. Por exemplo, no meu caso é “C:\Program Files\OpenSSL-Win64\bin”;

Note que precisamos adicionar o diretório bin no final.
7 - Clique em “Ok” para fechar as janelas e abra uma nova janela do cmd;

8 - Digite openssl para verificar que funcionou.

## Linux

Caso você esteja no Linux, o OpenSSL deverá estar disponível no gerenciador de pacotes da sua distribuição. Para sua instalação nas distribuições Ubuntu ou no Debian, execute o seguinte comando:

```bash
sudo apt install openssl
```

## MacOS

No MacOS, basta usar o brew para realizar a instalação:
```bash
brew install openssl
```

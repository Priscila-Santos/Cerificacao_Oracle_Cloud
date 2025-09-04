# Configurando Ambiente - Virtual Machine Linux


## Passos para fazer a preparação do ambiente
### 1. Baixe o VirtualBox:

Acesse o site oficial do VirtualBox em [VirtualBox](https://www.virtualbox.org/).

Clique na opção *Downloads* no menu.

### 2. Escolha a Versão Correta:

Na seção de downloads, escolha o link para download da versão adequada para o seu sistema operacional (Windows, macOS ou Linux).

### 3. Baixe o Instalador:

Após selecionar a versão correta, o download começará automaticamente. Aguarde até que o arquivo de instalação seja baixado.

### 4. Instale o VirtualBox:

Após o download ser concluído, execute o arquivo de instalação.

Siga as instruções do assistente de instalação, aceitando os termos de uso e selecionando as opções padrão.

### 5. Inicie o VirtualBox:

Após a conclusão da instalação, o VirtualBox estará disponível no seu menu de programas (Windows) ou no Launchpad/Applications (macOS) ou no seu menu de aplicativos (Linux). Inicie o VirtualBox.

### 6. Crie e configure um máquina virtual (VM):

Agora que o VirtualBox está instalado, você pode criar e configurar máquinas virtuais para executar outros sistemas operacionais. No nosso caso, estamos utilizando o [Ubuntu Server](https://ubuntu.com/download/server).

A VirtualBox oferece a flexibilidade de executar múltiplos sistemas operacionais sobre um único hardware, facilitando bastante os processos de desenvolvimento, teste e isolamento de ambientes de software.

Para carregar a imagem dessa distribuição em nossa VM, será necessário acessar o site do Ubuntu Server, selecionar uma versão de acordo com arquitetura do seu computador (64 ou 32 bits) e realizar o download.

Assim que o download estiver concluído, você terá o arquivo ISO do Ubuntu Server pronto para ser instalado em sua VM.

A preparação do seu ambiente é essencial para darmos continuidade nos estudos em DevOps de modo mais dinâmico e interativo. Assim, você poderá não apenas replicar o que iremos explorar nas próximas aulas, como também experimentar outras possibilidades.

Bons estudos!

## WSL como alternativa ao uso do VirtualBox

Alguns computadores podem apresentar certa lentidão e até mesmo alguns bugs quando usamos máquinas virtuais (VMs) através de softwares de virtualização como o VirtualBox.

Se este for o seu caso, temos uma alternativa de virtualização de ambiente Linux no Windows que pode facilitar bastante sua trajetória de aprendizado aqui no curso: o uso do Windows Subsystem for Linux (WSL). O WSL é um recurso do Windows 10 e Windows 11 que permite executar um ambiente Linux diretamente no Windows, sem a necessidade de uma VM. Com o `WSL`, você pode instalar distribuições Linux (como Ubuntu, Debian, e outras) e utilizá-las como se fossem aplicativos nativos do Windows.

Todos os passos e configurações que faremos aqui são compatíveis com o WSL, sendo assim você não terá nenhuma perda de aprendizado ao optar por esse ambiente.

Para começar a usar o WSL, siga os passos abaixo:

Abra o PowerShell como administrador e execute o comando 
```shell
wsl --install.
```

Após a instalação inicial, você pode instalar outras distribuições disponíveis na Microsoft Store. Assim, basta escolher a distribuição Ubuntu (a mesma que estamos usando no curso).

Para acessar o WSL, basta procurar pela distribuição instalada no menu iniciar (pesquise, por exemplo, "Ubuntu"). Com alguns poucos passos, você terá um terminal Linux pronto para dar sequência aqui no curso!

Temos um [artigo que você pode consultar caso tenha alguma dúvida em relação ao processo de configuração e funcionamento do WSL](https://www.alura.com.br/artigos/wsl-executar-programas-comandos-linux-no-windows).


# Tratando operações inválidas em um script

Durante a sua experiência de trabalho em uma empresa de segurança tecnológica, você ficou responsável por ajustar um script de compactação. Você já adicionou a funcionalidade de descompactação de arquivos e o script permite que o usuário escolha a operação que deseja realizar. O script atual está da seguinte maneira:
```bash
case "$operacao" in
  "compactar")
    read -p "Nome do arquivo de saída (.tar.gz): " arquivo_saida
    read -p "Lista de arquivos a compactar (separados por espaço): " arquivos
    tar -czf "$arquivo_saida" $arquivos
    echo "Arquivos compactados com sucesso em $arquivo_saida."
    ;;
 "descompactar")
    read -p "Nome do arquivo a descompactar (.tar.gz): " arquivo
    read -p "Diretório de destino para a descompactação: " diretorio_destino
    if [ ! -e "$arquivo" ]; then
      echo "Arquivo não encontrado: $arquivo"
      exit 1
    fi
    tar -xzf "$arquivo" -C "$diretorio_destino"
    echo "Arquivo descompactado com sucesso em $diretorio_destino."
    ;;
esac
````
Entretanto, você percebeu que esse script não trata as tentativas de realizar operações inexistentes.

Como tratar uma tentativa do usuário de realizar uma operação que não está definida no script?
```bash
*)
    echo "Operação inválida."
    echo "Uso: $0 (compactar|descompactar)"
    exit 1
    ;;
```

Este é o código correto. A opção * em uma estrutura case em um script bash é usada para capturar todos os outros casos que não foram previamente especificados.

------

## Conversão de arquivos

Imagine que você tenha vários arquivos na extensão `.jpg` em um diretório do seu repositório local de armazenamento e deseja mudar sua extensão para `.png`. Seria possível criar um *script* que operasse essa conversão de forma prática e automatizada, ou seja, sem a necessidade de converter arquivo por arquivo?

Temos uma ferramenta muito útil nesse processo: o comando `convert`. Esse comando nos permite converter, editar e exibir imagens em diversos formatos.

A sintaxe do comando é bem prática:

```bash
convert [opções] arquivo_entrada arquivo_saída
```
Para converter uma imagem de `.jpg` para `.png`, podemos escrever a seguinte instrução:

```bash
convert imagem.jpg imagem.png
```

E se quiséssemos redimensionar um conjunto de imagens .jpg para uma resolução padrão 800x600?
```bash
convert imagem.jpg -resize 800x600 imagem_redimensionada.jpg
```

Crie um script que seja capaz de converter todos os arquivos com extensão .jpgde um diretório para .png de forma simples.

Não se esqueça de solicitar ao usuário o caminho do diretório em que as imagens estão armazenadas e exibir mensagens no terminal para indicar o sucesso ou falha no processo.

```bash
# Indicamos o interpretador
#!/bin/bash

# Solicitamos a indicação do caminho do diretório
read -p "Digite o caminho do diretório com as imagens JPG: " diretorio

# Verificamos se o diretório indicado existe
if [ ! -d "$diretorio" ]; then
    echo "Diretório não encontrado: $diretorio"
    exit 1
fi

# Convertemos todas as imagens JPG para PNG no diretório
for imagem_jpg in "$diretorio"/*.jpg; do
    convert "$imagem_jpg" "${imagem_jpg%.jpg}.png" && echo "Imagem convertida: ${imagem_jpg%.jpg}.png" || echo "Falha na conversão: $imagem_jpg"
done

echo "Conversão concluída!"
```

---------

### Atividade 1
Elabore um script que automatiza a atualização de pacotes do sistema operacional.

```bash
#!/bin/bash
sudo apt update -y
sudo apt upgrade -y
```
- O script utiliza os comandos apt update e apt upgrade para automatizar a atualização de pacotes no sistema operacional Debian/Ubuntu. O parâmetro -y é usado para confirmar automaticamente todas as perguntas de confirmação.

### Atividade 2
Crie um script que renomeie todos os arquivos em um diretório, adicionando um prefixo ou sufixo especificado.
```bash
#!/bin/bash
prefixo="Novo_"
for arquivo in *; do
  mv "$arquivo" "$prefixo$arquivo"
done
```
- O script adiciona o prefixo "Novo_" aos nomes de todos os arquivos no diretório em que é executado.

### Atividade 3
Desenvolva um script que automatiza a criação de usuários no sistema, solicitando ao usuário que forneça o nome e outros detalhes necessários.
```bash
#!/bin/bash
echo "Digite o nome do novo usuário:"
read nome_usuario
sudo useradd -m $nome_usuario
sudo passwd $nome_usuario
```
- O script solicita ao usuário o nome do novo usuário, cria um diretório pessoal para o usuário (useradd -m), e define uma senha (passwd).

### Atividade 4
Construa um script para monitorar o espaço em disco usando o comando df na coleta de informações.
```bash
#!/bin/bash
limite=90
espaco=$(df -h | awk 'NR==2 {print $5}' | sed 's/%//')

if [ $espaco -gt $limite ]; then
  echo "Alerta: Espaço em disco excedeu $limite%."
else
  echo "Espaço em disco está abaixo do limite."
fi
```
- O script coleta a porcentagem de espaço em disco usando o comando df, compara com um limite predefinido (90% neste exemplo) e emite um alerta se exceder.

### Atividade 5
Escreva um script para automatizar o backup de um diretório específico para um local de destino, utilizando a compressão gzip.
```bash
#!/bin/bash
origem="/caminho/do/diretorio"
destino="/caminho/do/backup"
data=$(date +"%Y%m%d")
tar -czf $destino/backup_$data.tar.gz $origem
```
- O script utiliza o comando tar para criar um arquivo compactado e tarball, adicionando a data ao nome do arquivo para distinguir backups diários. O gzip (-z) é usado para compressão.

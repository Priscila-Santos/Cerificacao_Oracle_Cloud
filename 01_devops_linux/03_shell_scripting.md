# Testando diferentes condições

De maneira bastante similar ao que aprendemos em lógica de programação, quando implementamos um script no shell também podemos testar uma condição para direcionar a execução de diferentes blocos de instruções.

Usamos o comando condicional `if` para avaliar uma condição e direcionar o próximo passo na execução do código. O trecho de código a seguir apresenta a sintaxe adotada no `Bash` para execução do comando.

```bash
if [ condição ]; then
  # Comandos a serem executados se a condição testada for verdadeira.
elif [ outra condição ]; then
  # Comandos a serem executados se a primeira condição testada for falsa e a segunda condição testada for verdadeira.
else
  # Comandos a serem executados se nenhuma das condições testadas for verdadeira.
fi
```

Repare que a sintaxe do comando possibilita o teste de várias condições, permitindo a execução de diferentes blocos de comandos com base nesses testes.

Na criação dos testes adotamos operadores relacionais e lógicos de diferentes maneiras, como vemos nos exemplos a seguir:

### Igualdade entre duas strings

```bash
if [ "$string1" = "$string2" ]; then
  # Comandos a serem executados se as strings forem iguais.
fi
```

### Desigualdade entre duas strings

```bash
if [ "$string1" != "$string2" ]; then
  # Comandos a serem executados se as strings forem distintas.
fi
```

### Igualdade entre dois números

```bash
if [ "$numero1" -eq "$numero2" ]; then
  # Comandos a serem executados se os números forem iguais.
fi
```

### Desigualdade entre dois números

```bash
if [ "$numero1" -ne "$numero2" ]; then
  # Comandos a serem executados se os números forem distintos.
fi
```

### Testando se um número é maior que outro

```bash
if [ "$numero1" -gt "$numero2" ]; then
  # Comandos a serem executados se o primeiro número for maior que o segundo.
fi
```
### Testando se um número é menor que outro

```bash
if [ "$numero1" -lt "$numero2" ]; then
  # Comandos a serem executados se o primeiro número for menor que o segundo.
fi
```

### Testando se um número é maior ou igual a outro
```bash
if [ "$numero1" -ge "$numero2" ]; then
  # Comandos a serem executados se o primeiro número for maior ou igual ao segundo.
fi
```

### Verificando a existência de um arquivo ou diretório
```bash
if [  -e "/caminho/do/arquivo" ]; then
  # Comandos a serem executados caso seja constatada a existência do diretório ou arquivo.
fi
```
Note que as expressões condicionais devem estar entre `[ ]`e os espaços em branco são importantes na sintaxe. Os valores de strings devem ser colocados entre aspas para evitar problemas com espaços e caracteres especiais.

------------------

## Passando parâmetros em scripts

A passagem de parâmetros em scripts em **Bash** no **Ubuntu** é uma forma de fornecer informações ou argumentos para o script durante sua execução. Isso torna os scripts mais flexíveis e reutilizáveis, pois seu comportamento é ajustado de acordo com os argumentos fornecidos.

Essa passagem de parâmetros é realizada por meio de variáveis especiais, conhecidas como variáveis de posição. Elas são numeradas de 1 a 9, com `$1` representando o primeiro argumento, `$2` representando o segundo, e assim por diante. Além disso, todos os argumentos posicionais podem ser acessados através do `$@`.

A seguir, temos um exemplo de script que verifica se foram fornecidos exatamente dois argumentos na linha de comando. Se não, ele exibe uma mensagem de erro. Caso contrário, ele atribui os valores dos argumentos às variáveis arg1 e arg2 e os imprime.

```bash
#!/bin/bash

if [ $# -ne 2 ]; then
  echo "Erro! Nao foram fornecidos dois argumentos"
  exit 1
fi

arg1=$1
arg2=$2

echo "O primeiro argumento é: $arg1"
echo "O segundo argumento é: $arg2"
```
--------

## Verificando um diretório


É bem comum pedirmos ao usuário que nos indique o caminho (path) do diretório no qual um arquivo ou uma saída de um script deve ser armazenada, ou mesmo para que o script consiga acessar os dados que serão processados. Desse modo, uma etapa importante nesses scripts consiste na verificação da validade do caminho informado pelo usuário.

Como é que você faria essa verificação de forma simples usando apenas o comando if?

Escreva um script que teste a validade de um caminho de diretório informado por um usuário!

Vamos entender aqui um código que resolve esse pequeno desafio.
```bash
# Começamos indicando o interpretador.
#!/bin/bash

# Solicitamos ao usuário o caminho do diretório
read -p "Digite o caminho do diretório: " caminho

# Verificamos se o caminho do diretório é válido
if [ -d "$caminho" ]; then
    echo "O caminho é um diretório válido."
else
    echo "O caminho não é um diretório válido ou ele não existe."
fi
```
Repare que no teste `[ -d "$caminho" ]` o operador -dverifica se o caminho fornecido $caminho é um diretório válido. Caso seja válido, o resultado do teste será true e o usuário receberá uma mensagem de confirmação da validação.

-----

## Atividades

### 1. Elabore um script simples que exiba uma mensagem de boas-vindas quando executado.
```bash
#!/bin/bash
echo "Bem-vindo ao meu script!"
```
- Utilizamos o comando echo para exibir a mensagem *"Bem-vindo ao meu script!"* no terminal quando o script é executado.


### 2. Construa um script que seja capaz de criar uma cópia de segurança de um diretório específico.
```bash
#!/bin/bash
tar -czf backup.tar.gz /caminho/do/diretorio
```
- O script utiliza o comando tar para criar um arquivo compactado e tarball chamado *"backup.tar.gz"* do conteúdo do diretório especificado. O `-czf` indica a criação de um arquivo comprimido, usando gzip para compressão.

### 3. Crie um script que solicite ao usuário o nome de um diretório e, em seguida, o crie.

```bash
#!/bin/bash
echo "Digite o nome do diretório:"
read nome_diretorio
mkdir $nome_diretorio
```

- Script interativo que solicita ao usuário o fornecimento de um nome de diretório. Na sequência, utiliza o comando `mkdir` para criação do diretório com o nome fornecido.
### 4. Escreva um script que aceite um nome de arquivo como argumento e verifique se o arquivo existe.

```bash
#!/bin/bash
echo "Digite o nome do arquivo:"
read nome_arquivo
if [ -e $nome_arquivo ]; then
  echo "O arquivo existe."
else
  echo "O arquivo não existe."
fi
```
- Este script solicita ao usuário um nome de arquivo, em seguida, utiliza uma estrutura condicional (`if`) para verificar se o arquivo existe (`-e`). Dependendo do resultado, imprime uma mensagem indicando a existência ou não do arquivo.
### 5. Desenvolva um script que utilize um loop para contar de 1 a 5.

```bash
#!/bin/bash
for i in {1..5}
do
  echo $i
done
```
- O script utiliza um loop for para iterar de 1 a 5 e o comando echo para imprimir cada número no terminal.


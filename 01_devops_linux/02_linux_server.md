# Explorando o Linux Server

## Removendo arquivos e diretórios

No Linux, a remoção de arquivos e diretórios pode ser feita de forma simples utilizando comandos no terminal como `rm` para arquivos e `rmdir` ou `rm -r ` para diretórios. No entanto, é importante ter cautela ao utilizar opções como `-f` e `-r`, pois a remoção é definitiva e não há uma lixeira para recuperação posterior.

- Para remover um arquivo, use o comando rm (remove):

```bash
rm nome_do_arquivo
```
- Para remover um diretório vazio, use o comando `rmdir`:

```bash
rmdir pasta_vazia
```
Copiar código
Remover um diretório com conteúdo Para remover um diretório e todos os seus arquivos e subdiretórios, use o comando `rm` com a opção `-r `(recursivo):

```bash 
rm -r nome_do_diretorio
```

## Exercícios

- Criar dois diretórios chamados dir1 e dir2 na mesma posição hierárquica;
```bash
mkdir dir1 dir2
```

- Entrar no diretório dir1 e criar dois arquivos chamados data1 e data2;
```bash
cd dir1
touch data1 data2
```
- Copiar somente o conteúdo de dir1 para dir2;
```bash
cp -r dir1/* dir2
```

- Criar um novo diretório chamado dir3;
```bash
mkdir dir3
ls
```
- Mover o conteúdo de dir1 para dir3.
```bash
mv dir1/* dir3
ls ../dir1
ls ../dir3
```

## Atividades

#### 1. Crie um diretório chamado "Docs".
```bash
mkdir Docs
```

Utilizamos o comando mkdir para criar um novo diretório. Aqui, estamos criando o diretório Docs no diretório atual.

#### 2. Abra o editor de texto Nano para editar um arquivo chamado "notas.txt".

O comando nano abre o editor de texto Nano, permitindo a edição do arquivo "notas.txt". Se o arquivo não existir, o Nano o criará.

```bash
nano notas.txt
```
#### 3. Crie um arquivo vazio chamado "novo.txt".
Usamos o comando touchpara criar um novo arquivo vazio.

```bash 
touch novo.txt
```
#### 4. Escreva "Olá, Mundo!" em um arquivo chamado "saudacao.txt".
O comando echo exibe a string especificada e o operador > redireciona a saída para o arquivo "saudacao.txt", criando-o se ainda não existir.

```bash
echo "Olá, Mundo!" > saudacao.txt
```
#### 5. Visualize o conteúdo do arquivo "saudacao.txt".
O comando cat exibe o conteúdo de um arquivo no terminal.

```bash 
cat saudacao.txt
```

Neste caso, será exibido o conteúdo do arquivo "saudacao.txt".
#### 6. Adicione "Bem-vindo ao Linux!" ao final do arquivo "saudacao.txt".
O operador >> é usado para adicionar (anexar) texto ao final de um arquivo existente.
```bash
echo "Bem-vindo ao Linux!" >> saudacao.txt
```
#### 7. Visualize o conteúdo do diretório “Docs”.

O comando ls é utilizado para listar o conteúdo de um diretório.

```bash
ls Docs
```
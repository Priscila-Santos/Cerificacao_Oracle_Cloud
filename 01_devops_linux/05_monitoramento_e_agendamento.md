# Processando textos para coleta de dados

Quando criamos um código que precisa coletar dados para verificar condições e direcionar os próximos passos da execução, não lidaremos apenas com números que serão comparados com valores de referência. Muitas vezes, dados importantes para a execução do nosso código devem ser obtidos a partir de textos. Pode até parecer um desafio complexo de ser solucionado, mas o Bash tem alguns comandos e atalhos que nos ajudam a criar uma solução sem muita dificuldade.

O comando grep é um importante aliado que atua na busca de dados em arquivos ou fluxos de entrada do código (dados digitados por um usuário no teclado, por exemplo). Esse comando nos permite especificar palavras ou padrões para a pesquisa.

Para realizarmos a busca de um padrão em um arquivo utilizando o grep, utilizamos a seguinte sintaxe:
```bash
grep [opções] padrão [ARQUIVO]
```
As opções possibilitam o refinamento do processo de busca e a forma de exibição dos resultados. Caso queira, por exemplo, buscar uma palavra ignorando letras maiúsculas e minúsculas, basta inserir a opção -i na linha de comando. Já para contar quantas vezes uma palavra aparece em um determinado arquivo, você pode usar a opção -c. Para explorar melhor o comando e suas várias opções, utilize o grep - -help.

Por outro lado, o processamento dos dados pode demandar o uso encadeado de vários comandos, direcionando a saída de uma pesquisa com o grep, por exemplo, para a entrada de outro comando (e vice-versa).

Esse direcionamento de dados entre diferentes comandos é implementado usando um operador conhecido como pipe, representado por |. Ele atua no direcionamento da saída de um comando para entrada de outro, criando, dessa forma, um fluxo contínuo de dados.
```bash
cat novo.txt | grep "padrão"
```
Um caso prático de uso do operador pipe com o comando grep é ilustrado no comando acima que exibe o conteúdo do arquivo de título “novo.txt” no terminal e, na sequência, usa o greppara procurar e exibir todas as linhas que possuem o “padrão” especificado.

Repare que essas ferramentas são bastante úteis no filtro e coleta de dados que desejamos a partir de arquivos e informações dispostas em um texto.

------------

Implemente o script que identifique os 15 processos com maior consumo de memória em um dado instante usando os comandos ps, grep e head(utilize o pipe para direcionar a saída de um comando como entrada para outro) e, na sequência, agende a execução do script utilizando o crontab.


```bash
#!/bin/bash

# Definimos o caminho para o arquivo de saída
output_file="/caminho/do/seu/diretorio/top_processes_$(date +\%Y\%m\%d_\%H\%M).txt"

# Listamos os 15 processos com maior consumo de memória e salvamos no arquivo de saída
ps -e -o pid,%mem --sort=-%mem | head -n 16 > "$output_file"
```
- observe que a variável `output_file` representa o caminho completo para o arquivo de saída. O nome do arquivo inclui a data e hora atual formatada.

- O comando `ps` lista todos os processos do sistema, a opção `-e` indica que queremos listar todos os processos em execução e a opção `-o pid,%mem`especifica as informações (colunas da tabela de resultados) que desejamos exibir na saída. Em nosso caso, PID (número de identificação do processo) e percentual de memória utilizado `(%)`. Por fim, o `--sort=-%mem` é usado para ordenar a saída com base no percentual de memória, em ordem decrescente. O sinal de menos `(-)` antes de `%mem` indica a ordenação de modo decrescente.

Então, usamos `| (pipe)` para encaminhar esse resultado de saída para o comando `head -n 16` que irá selecionar apenas os 15 primeiros processos listados. Note que usamos `-16`, pois a primeira linha é geralmente ocupada pelo cabeçalho da tabela.

O resultado é do head é então redirecionado para o arquivo especificado pela variável `output_file`.

Para agendar a execução do script a cada 5 minutos, basta adicionar uma entrada no crontab. Podemos executar o comando `crontab -e` para editar o crontab e adicione a seguinte linha:

```bash
*/5 * * * * /caminho/do/script.sh
```
-------

## Atividade 1
### Crie um script que utiliza comandos como ps e grep para monitorar os processos que estão utilizando uma porcentagem significativa da CPU.

```bash
#!/bin/bash
echo "Top 5 processos por uso de CPU:"
ps aux --sort=-%cpu | head -n 6
```
- O script utiliza o comando `ps` para listar todos os processos em execução, ordena-os pelo uso de CPU em ordem decrescente e exibe as seis primeiras linhas, mostrando os cinco principais processos e o cabeçalho.

## Atividade 2
### Desenvolva um script que utiliza comandos como ps e sort para exibir os processos que estão consumindo mais memória.
```bash
#!/bin/bash
echo "Top 5 processos por uso de memória:"
ps aux --sort=-%mem | head -n 6
```
- O script é bastante similar ao elaborado na atividade, no entanto agora ordena os processos pelo uso de memória.

## Atividade 3
###  Crie um script que verifica se um processo específico está em execução e exibe seu status.
```bash
#!/bin/bash
processo="nginx"
if pgrep $processo > /dev/null; then
  echo "$processo está em execução."
else
  echo "$processo não está em execução."
fi
```
- O script utiliza o comando `pgrep` para verificar se o processo **"nginx"** está em execução, exibindo uma mensagem apropriada.

## Atividade 4
### Elabore um script para analisar os logs do sistema em busca de mensagens de erro relacionadas a processos.
```bash
#!/bin/bash
echo "Últimas 10 linhas de mensagens de erro:"
tail -n 10 /var/log/syslog | grep "error"
```
- O script mostra as últimas 10 linhas do log do sistema relacionadas a mensagens de erro.

## Atividade 5
### Crie um script para monitorar as mensagens de erro no log do sistema em intervalos regulares usando cron jobs. O script deve registrar em um arquivo as últimas 5 linhas de mensagens de erro, possibilitando uma visão periódica da atividade do sistema.
```bash
#!/bin/bash
echo "Mensagens de erro - $(date)" >> /caminho/do/log_monitorado.txt
tail -n 5 /var/log/syslog | grep "error" >> /caminho/do/log_monitorado.txt
```
- Configuração do cron:
```bash
# Adicione a seguinte linha ao crontab para executar o script a cada duas horas
0 */2 * * * /caminho/do/seu/script.sh
```
- O script adiciona as últimas 5 linhas de mensagens de erro ao arquivo de log especificado e é configurado para ser executado a cada duas horas usando cron.
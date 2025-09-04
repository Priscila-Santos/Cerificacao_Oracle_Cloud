# Você está trabalhando em uma startup e seu trabalho inclui o monitoramento de recursos de um servidor web, Nginx. A empresa está prestes a estrear a "Screen Match", uma plataforma de vídeo similar à do YouTube.

# Você precisa se certificar de que o servidor está operando dentro de sua capacidade e não sobrecarregado. Considerando esse cenário, é necessário criar um script para monitorar as métricas de conexões ativas e requisições por segundo.

# Sabendo que a URL “http://localhost/nginx_status” permite acesso ao status do servidor Nginx e o comando curl é usado como ferramenta para fazer solicitações HTTP e coletar informações de URLs.

# TODO: Qual script você faria para coletar essas métricas?
#!/bin/bash
echo "Coletando métricas do Nginx..."
status=$(curl -s http://localhost/nginx_status)
if [ $? -ne 0 ]; then
  echo "Falha ao acessar o status do Nginx."
  exit 1
fi

# Extraindo métricas
#!/bin/bash

get_nginx() {
  local metrics=$(curl -s "http://localhost/nginx_status")
  if [[ -n "$metrics" ]]; then
    local active_connections=$(awk 'NR==1 {print $3}' <<< "$metrics")
    local requests_per_second=$(awk 'NR==3 {print $2}' <<< "$metrics")
    echo "Active connections: $active_connections"
    echo "Requests per second: $requests_per_second"
  else
    echo "Failure in collecting Nginx metrics."
  fi
}

get_nginx

# Este script está coletando corretamente as métricas. O uso do curl -s obtém o status do Nginx silenciosamente, que é armazenado na variável local 'metrics'. A seguir, são usados comandos 'awk' para extrair o número de conexões ativas e requisições por segundo, que são então impressos.

# Automatizando monitoramento de servidor com cron
# Você é dev na empresa de segurança tecnológica, Techsafe. Uma de suas tarefas diárias é garantir que o servidor web esteja funcionando corretamente. Para isso, você decidiu escrever um script para monitorar o servidor chamado monitoramento_nginx.sh.
# A melhor maneira de garantir que esse script seja executado de forma eficiente e regular é agendar a tarefa usando o cron.

# TODO: Como você agendaria essa tarefa para ser executada a cada 30 minutos todos os dias no server Ubuntu?
# Abra o crontab para edição
crontab -e
# Adicione a seguinte linha ao arquivo crontab para agendar o script
*/30 * * * * /caminho/para/seu/script/monitoramento_nginx.sh >> /caminho/para/seu/log/monitoramento_nginx.log 2>&1
# Salve e saia do editor

# Isso agendará o script monitoramento_nginx.sh para ser executado a cada 30 minutos. A saída do script será redirecionada para um arquivo de log para que você possa revisar os resultados posteriormente.

# TODO: Implemente o script que identifique os 15 processos com maior consumo de memória em um dado instante usando os comandos ps, grep e head(utilize o pipe para direcionar a saída de um comando como entrada para outro) e, na sequência, agende a execução do script utilizando o crontab.
#!/bin/bash
echo "Identificando os 15 processos com maior consumo de memória..."
ps aux --sort=-%mem | head -n 16
# Agendamento com crontab
# Abra o crontab para edição
crontab -e
# Adicione a seguinte linha ao arquivo crontab para agendar o script
0 * * * * /caminho/para/seu/script/maior_consumo_memoria.sh >> /caminho/para/seu/log/maior_consumo_memoria.log 2>&1
# Salve e saia do editor  

# Atividades

# TODO: Crie um script que utiliza comandos como ps e grep para monitorar os processos que estão utilizando uma porcentagem significativa da CPU.
ps aux --sort=-%cpu | head -n 16

# TODO: Desenvolva um script que utiliza comandos como ps e sort para exibir os processos que estão consumindo mais memória.
ps aux --sort=-%mem | head -n 16

# TODO: Crie um script que verifica se um processo específico está em execução e exibe seu status.
process_name="nome_do_processo" # Substitua pelo nome do processo que deseja verificar
if pgrep -x "$process_name" > /dev/null; then
  echo "O processo $process_name está em execução."
else
  echo "O processo $process_name não está em execução."
fi

# TODO: Elabore um script para analisar os logs do sistema em busca de mensagens de erro relacionadas a processos.
grep -i "error" /var/log/syslog | tail -n 20

# TODO: Crie um script para monitorar as mensagens de erro no log do sistema em intervalos regulares usando cron jobs. O script deve registrar em um arquivo as últimas 5 linhas de mensagens de erro, possibilitando uma visão periódica da atividade do sistema.
#!/bin/bash
log_file="/var/log/syslog"
output_file="/caminho/para/seu/log/erros_periodicos.log"
echo "Registrando as últimas 5 linhas de mensagens de erro do sistema..."
grep -i "error" "$log_file" | tail -n 5 >> "$output_file"
# Agendamento com crontab
# Abra o crontab para edição
crontab -e
# Adicione a seguinte linha ao arquivo crontab para agendar o script
*/15 * * * * /caminho/para/seu/script/monitorar_erros.sh >> /caminho/para/seu/log/monitorar_erros.log 2>&1
# Salve e saia do editor  
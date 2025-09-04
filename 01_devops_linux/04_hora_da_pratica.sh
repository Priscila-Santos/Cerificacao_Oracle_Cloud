# A automatização de tarefas por meio de Shell Scripting promove a consistência e a reprodutibilidade, aspectos essenciais para ambientes de desenvolvimento e operações ágeis. Ao criar scripts para tarefas rotineiras e complexas, as pessoas profissionais de DevOps garantem que as implementações, configurações e manutenções de sistemas sejam executadas de maneira padronizada, minimizando variações entre ambientes.

# Para que você possa explorar ainda mais como implementar scripts no contexto da automatização de tarefas, preparamos uma lista de atividades práticas.

# Atividades

# TODO: Elabore um script que automatiza a atualização de pacotes do sistema operacional.
#!/bin/bash
echo "Atualizando a lista de pacotes..."
sudo apt update
if [ $? -eq 0 ]; then
  echo "Lista de pacotes atualizada com sucesso."
else
  echo "Falha ao atualizar a lista de pacotes."
  exit 1
fi

# TODO: Crie um script que renomeie todos os arquivos em um diretório, adicionando um prefixo ou sufixo especificado.
read -p "Digite o caminho do diretório onde os arquivos estão armazenados: " dir
read -p "Digite o prefixo a ser adicionado: " prefix
if [ -d "$dir" ]; then
  for file in "$dir"/*; do
    if [ -f "$file" ]; then
      mv "$file" "$dir/$prefix$(basename "$file")"
      if [ $? -eq 0 ]; then
        echo "Renomeado: $file para $dir/$prefix$(basename "$file")"
      else
        echo "Falha ao renomear: $file"
      fi
# TODO: Desenvolva um script que automatiza a criação de usuários no sistema, solicitando ao usuário que forneça o nome e outros detalhes necessários.
    fi
  done
else
  echo "Diretório inválido: $dir"
fi
# TODO: Construa um script para monitorar o espaço em disco usando o comando df na coleta de informações.
#!/bin/bash
echo "Monitorando o espaço em disco..."
df -h

# TODO: Escreva um script para automatizar o backup de um diretório específico para um local de destino, utilizando a compressão gzip.
read -p "Digite o caminho do diretório a ser feito backup: " src_dir
read -p "Digite o caminho do diretório de destino do backup: " dest_dir
if [ -d "$src_dir" ] && [ -d "$dest_dir" ]; then
  backup_file="$dest_dir/backup_$(basename "$src_dir")_$(date +%Y%m%d%H%M%S).tar.gz"
  tar -czf "$backup_file" -C "$src_dir" .
  if [ $? -eq 0 ]; then
    echo "Backup criado com sucesso: $backup_file"
  else
    echo "Falha ao criar o backup."
  fi
else
  echo "Diretório de origem ou destino inválido."
fi

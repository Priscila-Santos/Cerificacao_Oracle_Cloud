

# TODO: No plano de trabalho dessa semana, você ficou responsável por configurar um servidor que irá hospedar um site de anúncios. Como o servidor já possui uma distribuição Linux instalada e devidamente configurada, você inicia a atividade pesquisando opções de servidor web disponíveis. Pesquisando, percebeu que os melhores são Apache e Nginx, seu desafio consiste em selecionar a opção mais eficiente para as necessidades do conteúdo hospedado.Considerando que o conteúdo será predominantemente estático e que é esperado um alto volume de tráfego, qual opção de software de servidor web seria mais apropriada? E por quê?
Resposta: A opção mais apropriada para hospedar um site de anúncios com conteúdo predominantemente estático e esperado alto volume de tráfego seria o Nginx. Poruque ele é conhecido por sua alta performance, eficiência no uso de recursos e capacidade de lidar com um grande número de conexões simultâneas, o que o torna ideal para sites com muito tráfego.

# TODO: Crie um script que seja capaz de converter todos os arquivos com extensão .jpgde um diretório para .png de forma simples, solicitando ao usuário o caminho do diretório em que as imagens estão armazenadas e exibir mensagens no terminal para indicar o sucesso ou falha no processo.
#!/bin/bash
read -p "Digite o caminho do diretório onde as imagens estão armazenadas: " dir 
if [ -d "$dir" ]; then
  for file in "$dir"/*.jpg; do
    if [ -f "$file" ]; then
      convert "$file" "${file%.jpg}.png"
      if [ $? -eq 0 ]; then
        echo "Convertido: $file para ${file%.jpg}.png"
      else
        echo "Falha ao converter: $file"
      fi
    else
      echo "Nenhum arquivo .jpg encontrado em $dir"
    fi
  done
else
  echo "Diretório inválido: $dir"
fi
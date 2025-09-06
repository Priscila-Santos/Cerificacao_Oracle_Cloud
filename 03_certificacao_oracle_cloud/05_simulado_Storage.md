## 1. Você criou um bucket de Armazenamento de Objetos no nível Archive. Qual afirmação NÃO é válida para o nível de Armazenamento Archive?

A. A duração mínima para armazenar objetos é de 90 dias.

**B. O bucket de armazenamento Archive pode ser atualizado para o armazenamento Standard.** *CORRETA* 
`Um bucket de Armazenamento Archive não pode ser atualizado para o nível Standard. Além disso, a duração mínima para armazenar objetos no nível Archive é de 90 dias, e os objetos não podem ser acessados diretamente; eles precisam ser restaurados para o nível Standard antes de serem lidos.`

C. O tempo padrão disponível para baixar um objeto após a restauração é de 24 horas.

D. A partir do momento em que uma solicitação de restauração é feita, leva no máximo uma hora para ler os dados.

## 2. Qual recurso do serviço Oracle Cloud Infrastructure Block Volume garante a durabilidade dos dados e proteção contra falhas de hardware?

**A. Replicação** *CORRETA*
`O serviço OCI Block Volume usa replicação para garantir a durabilidade dos dados e proteção contra falhas de hardware. Os dados são automaticamente replicados em vários dispositivos de armazenamento dentro do mesmo domínio de disponibilidade.`

B. Compressão

C. Deduplicação

D. Criptografia

## 3. Você tem uma carga de trabalho de banco de dados de extremo alto desempenho que requer pelo menos 90 IOPS/GB e 90.000 IOPS por volume. Qual nível de desempenho do OCI Block Volume pode ser usado para atender a esse requisito?

**A. Ultra alto desempenho.** *CORRETA*
`O nível Ultra High Performance no serviço OCI Block Volume pode fornecer até 225 IOPS/GB, com um máximo de 300.000 IOPS por volume, sendo recomendado para cargas de trabalho com os maiores requisitos de I/O.`

B. Equilibrado.

C. Custo mais baixo.

D. Maior desempenho.

## 4. No Oracle Cloud Infrastructure Object Storage Service, qual é o principal propósito de uma URL de solicitação pré-autenticada?

A. Rastrear e monitorar o acesso e uso de objetos.

B.Permitir acesso público de leitura a um objeto específico.

**C. Fornecer acesso temporário e seguro a um objeto específico.** *CORRETA*
`Uma URL de solicitação pré-autenticada no OCI Object Storage permite gerar um URL único com um tempo de expiração pré-definido, fornecendo acesso temporário e seguro a um objeto específico sem necessidade de autenticação adicional.`

D. Permitir a transição automática de objetos entre níveis de armazenamento.

## 5. Você deseja armazenar o backup de um banco de dados em armazenamento em nuvem por um período prolongado com o menor custo de armazenamento. Qual nível de armazenamento de objetos você usaria para armazenar esses arquivos de backup?

A. Standard

B. Acesso infrequente

C. Premium

**D. Archive** *CORRETA*
`O nível Archive é projetado para armazenar dados raramente acessados e que requerem longos períodos de retenção, sendo ideal para backups de banco de dados que precisam ser armazenados por um longo tempo a um custo reduzido.`
## 1. Qual capacidade pode ser usada para proteger contra falhas dentro de um domínio de disponibilidade da OCI?


`A. Balanceador de Carga`


`B. Compartimentos`


### **`C. Resposta correta:  Domínio de Falha`** Domínios de falha fornecem uma capacidade para proteger suas aplicações e instâncias de falhas de hardware inesperadas ou interrupções de rede dentro de um domínio de disponibilidade. Eles fornecem anti-afinidade. Cada domínio de falha opera em seu próprio conjunto de hardware físico, portanto, uma falha que afeta um domínio de falha não afeta instâncias em outros domínios de falha.

`D. Regiões`

---

## 2. Qual afirmação sobre a OCI NÃO é verdadeira?

`A. Um domínio de disponibilidade é um ou mais data centers localizados dentro de uma região.`

### **`RESPOSTA CORRETA B. Um único domínio de falha pode ser associado a múltiplos domínios de disponibilidade dentro de uma região.`** Um domínio de falha é uma subdivisão de um domínio de disponibilidade. Cada domínio de disponibilidade contém três domínios de falha. Domínios de falha permitem que você distribua suas instâncias para que elas não estejam no mesmo hardware físico dentro de um único domínio de disponibilidade. Um domínio de falha não pode ser associado a múltiplos domínios de disponibilidade.

`C. Uma região da OCI é uma área geográfica localizada.`

`D. Domínios de disponibilidade não compartilham infraestrutura, como energia, refrigeração ou rede, dentro de uma região.`

---

## 3. Qual serviço da Oracle Cloud Infrastructure NÃO é destinado a uma solução multicloud?

`A. Oracle Interconnect for Azure`

`B. Oracle Database Service for Azure`

### **`REPOSTA CORRETA: C. Oracle Roving Edge Infrastructure`** A Oracle Roving Edge Infrastructure é um serviço que fornece um dispositivo portátil e resistente executando um subconjunto de serviços da OCI, projetado para implantação em campo fora de um data center tradicional. Não é um serviço especificamente projetado para implantação multicloud. Por outro lado, serviços como o Oracle Database Service for Azure e o Oracle Interconnect for Azure são projetados para permitir que a Oracle Cloud Infrastructure interopere com o Azure, indicando uma abordagem multicloud. O Oracle MySQL HeatWave é um serviço de análise para o serviço de banco de dados MySQL que é executado na AWS, mas o gerenciamento de contas, faturamento e medição são feitos através da OCI.


`D. Oracle MySQL Heatwave on AWS`

---

## 4. Você assinou uma região da OCI que tem um domínio de disponibilidade. Você deseja implantar uma aplicação altamente disponível com dois servidores e um banco de dados de 2 nós. Como você posicionaria os componentes para manter a alta disponibilidade da aplicação?


### `RESPOSTA CORRETA: A. Colocar um servidor e um nó do banco de dados em um domínio de falha, e o segundo servidor e nó do banco de dados em outro domínio de falha.` Neste cenário, distribuir os servidores e nós de banco de dados em diferentes domínios de falha dentro do mesmo domínio de disponibilidade proporcionaria proteção contra a falha de um único domínio de falha. Se um domínio de falha sofrer uma falha, o outro permaneceria sem alteração, garantindo a alta disponibilidade da aplicação.


`B. A alta disponibilidade não é possível, pois há apenas um domínio de disponibilidade na região.`

`C. Colocar os servidores em um domínio de falha e os nós do banco de dados em outro domínio de falha.`

`D. Colocar todos os componentes no mesmo domínio de falha.`

---

## 5. Qual afirmação sobre regiões e domínios de disponibilidade é verdadeira?

`A. Todas as regiões da OCI têm três domínios de disponibilidade.`

`B. Domínios de falha fornecem proteção contra falhas entre regiões.`

`C. Todas as regiões da OCI têm um único domínio de disponibilidade.`

### **`D. Uma região da OCI tem um ou mais domínios de disponibilidade.`** Uma região da OCI é composta por um ou mais domínios de disponibilidade isolados e interconectados. Cada domínio de disponibilidade é uma localização física separada dentro de uma região. O número de domínios de disponibilidade por região pode variar; algumas regiões da OCI têm três domínios de disponibilidade, enquanto outras têm um único domínio de disponibilidade.


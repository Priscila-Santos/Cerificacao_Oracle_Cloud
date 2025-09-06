# Simulado de Certificação OCI Foundations Associate (1Z0-1085)

A seguir, um simulado com 20 questões de múltipla escolha para você praticar os conceitos fundamentais do Oracle Cloud Infrastructure. Cada questão tem quatro alternativas (A, B, C e D), sendo apenas uma correta. Para passar, você precisaria de pelo menos 65% de aproveitamento, mas vise 80% ou mais para garantir tranquilidade no dia do exame.

---

## Instruções

- Leia cada pergunta com atenção.
- Marque apenas uma alternativa por questão.
- Não há penalidade por erro, então responda todas.
- Reserve 45 minutos para concluir este simulado.

---

## Questões

1. Qual dos seguintes não é um conceito de disponibilidade no OCI?  
   A. Região  
   B. Zona de Disponibilidade  
   C. Domínio de Disponibilidade  
   **D. Cluster de Núcleo**

2. O que é um Compartimento (Compartment) no OCI?  
   A. Um tipo de instância de computação  
   B. **Um agrupamento lógico para recursos**  
   C. Um template de rede virtual  
   D. Uma unidade de faturamento separada

3. Qual serviço oferece banco de dados autogerenciado no OCI?  
   A. Autonomous Data Warehouse  
   B. **Oracle Database Cloud Service**  
   C. File Storage  
   D. Block Volume

4. Qual componente é obrigatório para criar uma instância de Compute?  
   A. Vault  
   B. **Rede Virtual na Nuvem (VCN)**  
   C. Function  
   D. Streaming

5. Em termos de segurança, o que é uma política no OCI?  
   A. Um documento de auditoria  
   B. Um script de automação  
   C. **Um conjunto de permissões atribuído a grupos**  
   D. Um tipo de firewall de rede

6. Qual serviço do OCI permite gestionar chaves criptográficas?  
   A. **Key Management**  
   B. Identity and Access Management  
   C. Cloud Shell  
   D. Monitoring

7. O que define a cobrança de recursos no OCI?  
   A. Número de logs gerados  
   B. **Uso de recursos medido em unidades (vCPU, GB, etc.)**  
   C. Número de usuários no tenancy  
   D. Quantidade de buckets no Object Storage

8. Para alta performance de I/O em disco, qual tipo de armazenamento é recomendado?  
   A. File Storage  
   B. **Block Volume**  
   C. Object Storage
   D. Archive Storage

9. O Oracle Cloud Infrastructure Registry (OCIR) é usado para:  
   A. Monitorar métricas de performance 
   B. **Armazenar imagens de contêineres Docker**  
   C. Gerenciar domínios DNS  
   D. Provisionar balanceadores de carga

10. Qual das alternativas descreve melhor o modelo de responsabilidade compartilhada da nuvem?  
    A. O provedor gerencia tudo; o cliente só paga  
    B. O cliente gerencia hardware; o provedor gerencia software  
    C. **O provedor gerencia o núcleo da nuvem; o cliente gerencia seus dados e aplicações**  
    D. O cliente gerencia a rede; o provedor gerencia o banco de dados

11. Em uma VCN, o que é um route table?  
    A. Um firewall de camada de aplicação  
    B. **Um conjunto de regras para roteamento de tráfego**  
    C. Um serviço de DNS  
    D. Uma política de IAM

12. Qual serviço oferece análise de logs centralizada?  
    A. **Logging**  
    B. Monitoring 
    C. Notification  
    D. Audit

13. Qual recurso permite isolar recursos de computação com peering privado entre VCNs?  
    A. **Local Peering Gateway**  
    B. Internet Gateway  
    C. NAT Gateway 
    D. Service Gateway

14. O que o Identity and Access Management (IAM) não faz?  
    A. Autentica usuários  
    B. Autoriza permissões  
    **C. Gera relatórios de custos**  
    D. Gerencia grupos

15. No OCI, “Compartimento Root” é:  
    **A. O compartimento onde todos os outros estão contidos**  
    B. Um tipo de instância GPU  
    C. Um template de VCN padrão  
    D. Um serviço de banco de dados

16. Qual serviço do OCI permite executar código sem provisionar servidores?  
    A. **Functions**  
    B. Compute Classic  
    C. Container Engine for Kubernetes  
    D. Database Cloud Service

17. Para quais cargas de trabalho o Object Storage não é indicado?  
    A. Arquivamento de longo prazo  
    **B. Streaming de vídeos em tempo real**  
    C. Backup de dados  
    D. Hospedagem de website estático

18. Qual serviço oferece monitoramento em tempo real de métricas de infraestrutura?  
    A. **Monitoring**  
    B. Audit  
    C. Logging
    D. Notifications

19. No modelo de faturamento do OCI, qual recurso pode gerar custo mesmo em estado “parado”?  
    A. Instâncias Compute  
    B. **Block Volumes**  
    C. Recursos em Compartimento vazio  
    D. Tags

20. Qual console exibe todos os logs de auditoria de chamadas de API?  
    A. **Audit**  
    B. Monitoring  
    C. Logging  
    D. Events

---

## Gabarito e Explicações

|  Questão  | Resposta | Explicação                                                                                 |
|-----------|----------|--------------------------------------------------------------------------------------------|
| 1         | D        | Não existe “Cluster de Núcleo” como conceito de disponibilidade no OCI.                    |
| 2         | B        | Compartimento é o contêiner lógico para organizar recursos e aplicar políticas de IAM.     |
| 3         | B        | Oracle Database Cloud Service oferece banco de dados gerenciado pelo usuário.             |
| 4         | B        | Toda instância de Compute precisa estar associada a uma VCN para comunicação de rede.     |
| 5         | C        | Política define quem (grupos) pode fazer o quê (permissões) em quais recursos.            |
| 6         | A        | Key Management permite criação e rotação de chaves criptográficas.                         |
| 7         | B        | Cobrança se baseia no consumo efetivo de recursos medidos em unidades.                     |
| 8         | B        | Block Volume oferece alta performance de I/O comparado a File Storage e Object Storage.   |
| 9         | B        | OCIR serve como registry para imagens de contêiner Docker.                                |
| 10        | C        | Na responsabilidade compartilhada, o provedor gerencia a infraestrutura e o cliente apps.  |
| 11        | B        | Route Table contém regras para direcionar pacotes entre sub-redes e gateways.              |
| 12        | A        | Logging armazena e consulta logs de aplicação e infraestrutura.                            |
| 13        | A        | Local Peering Gateway conecta VCNs na mesma região sem passar pela internet.              |
| 14        | C        | O IAM não gera relatórios de custos; esse é papel do Cost Management.                      |
| 15        | A        | O Compartimento Root é o nível mais alto, contendo todos os outros compartimentos.        |
| 16        | A        | Functions é a oferta serverless que roda código sob demanda.                              |
| 17        | B        | Object Storage não é adequado para streaming de vídeo em tempo real devido a latência.    |
| 18        | A        | Monitoring coleta e exibe métricas em tempo real de recursos.                             |
| 19        | B        | Block Volumes geram custo mensal mesmo que anexados a instâncias paradas.                  |
| 20        | A        | Audit consolida todas as chamadas de API para fins de compliance.                         |

---


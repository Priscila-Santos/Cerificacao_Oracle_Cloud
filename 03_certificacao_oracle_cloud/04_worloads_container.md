# O Que São Container Workloads na OCI?

Os Container Workloads na Oracle Cloud Infrastructure (OCI) permitem que aplicações sejam implantadas, gerenciadas e escaladas de forma eficiente usando containers. Containers são uma forma leve de empacotar aplicações com todas as suas dependências, garantindo portabilidade, eficiência e escalabilidade.

A OCI oferece serviços otimizados para rodar workloads baseados em containers, incluindo: **Oracle Kubernetes Engine (OKE)** → Um serviço gerenciado de Kubernetes para orquestrar e escalar containers.

- **Container Instances** → Instâncias leves para rodar containers sem necessidade de gerenciar infraestrutura Kubernetes.
- **Container Registry** → Repositório privado para armazenar e gerenciar imagens de containers.
Diferencial da OCI: OCI oferece serviços nativos de Kubernetes e containers sem custo adicional pelo gerenciamento do cluster, cobrando apenas pelos recursos computacionais usados

## O Problema: Gerenciar aplicações em containers pode ser complexo e ineficiente

Muitas empresas adotaram containers para modernizar suas aplicações, mas enfrentam desafios operacionais ao gerenciá-los em escala, por exemplo:

- **Dificuldade em orquestrar containers** – Gerenciar múltiplos containers manualmente gera complexidade e dificulta a escalabilidade.
- **Problemas de performance e tempo de resposta** – Aplicações monolíticas e mal distribuídas sofrem com latência alta e falhas em picos de tráfego.
- **Falta de automação e monitoramento** – Sem um sistema de gerenciamento automatizado, manter a infraestrutura estável e eficiente se torna difícil.
- **Gestão de imagens de containers e segurança** – Empresas precisam de um repositório seguro para armazenar suas imagens de containers, garantindo que apenas versões confiáveis sejam implantadas.
**Exemplo Rea**l: Uma empresa de e-commerce precisou escalar sua aplicação rapidamente durante uma grande promoção, mas sua infraestrutura não conseguia distribuir os containers corretamente, resultando em quedas e lentidão na plataforma.

Solução tradicional? Criar servidores extras manualmente, o que demora e gera desperdício de recursos.

Solução ideal? Utilizar OCI OKE e Container Instances para gerenciamento automatizado e escalável de workloads em containers.

## A solução: OCI para containers, Kubernetes e automação

A Oracle Cloud Infrastructure (OCI) resolve esses desafios ao oferecer serviços gerenciados para containers, garantindo escalabilidade, automação e segurança para workloads modernos. São eles:

- **Oracle Kubernetes Engine (OKE)** → Gerenciamento de clusters Kubernetes para implantar e escalar containers automaticamente.
- **Container Instances** → Execução de containers sem necessidade de configurar servidores. Container Registry → Armazena e distribui imagens de containers de forma segura.
- **Auto Scaling & Load Balancing** → Ajusta automaticamente o número de containers conforme a demanda.

## Como OCI resolve os problemas comuns?

| Problema |	Solução com OCI Containers |
|:---------|:----------------------------|
|Dificuldade em escalar containers OCI |	OKE gerencia e escala containers automaticamente.|
|Falta de um repositório seguro para imagens	OCI | Container Registry armazena e protege imagens de containers.|
|Infraestrutura complexa e cara para rodar containers |	OCI Container Instances permite rodar containers sem gerenciar servidores.|
|Baixa performance e latência alta |	Load Balancer e Auto Scaling otimizam o tráfego e garantem disponibilidade.|

**Exemplo de Uso**: Uma startup SaaS utilizou OCI OKE para implantar sua aplicação em múltiplos containers distribuídos, garantindo alta disponibilidade e escalabilidade sob demanda. Uma empresa de fintech armazenou suas imagens no OCI Container Registry, garantindo que apenas versões seguras e aprovadas fossem implantadas no ambiente de produção

## Como resolvemos esse problema?
A implementação de Container Workloads na OCI seguiu um plano estruturado para garantir eficiência, automação e segurança.

## Passo a Passo da Solução

### Etapa 1: Configuração do OCI Container Registry

- Criamos um repositório no OCI Container Registry para armazenar imagens de containers. Subimos uma imagem Docker personalizada para o repositório.

#### Exemplo de comando para enviar uma imagem ao OCI Container Registry:

```shell
docker login iad.ocir.io docker tag my-app:latest iad.ocir.io/meu-tenancy/my-repo/my-app:latest docker push iad.ocir.io/meu-tenancy/my-repo/my-app:latest
```
Isso garante que a aplicação tenha um repositório seguro e confiável.

### Etapa 2: Deploy de Containers no Oracle Kubernetes Engine (OKE)

- Criamos um cluster Kubernetes gerenciado no OKE.
Implantamos um deployment Kubernetes para rodar múltiplos containers.
- Configuramos autoscaling horizontal para aumentar ou reduzir os pods conforme a carga de trabalho.

#### Exemplo de Configuração Kubernetes para Auto Scaling:
```shell
apiVersion: autoscaling/v1 kind: HorizontalPodAutoscaler metadata: name: my-app-autoscaler spec: scaleTargetRef: apiVersion: apps/v1
kind: Deployment
name: my-app 
minReplicas: 2 
maxReplicas: 10
targetCPUUtilizationPercentage: 50
```
Isso garante que a aplicação escale automaticamente conforme a necessidade.

### Etapa 3: Configuração de Load Balancer e Segurança

- Criamos um OCI Load Balancer para distribuir o tráfego entre os containers.
- Aplicamos Security Lists e Network Security Groups (NSG) para proteger os containers.
#### Exemplo de Configuração de Load Balancer no Kubernetes:
```shell
apiVersion: v1 
kind: Service 
metadata: 
name: my-app-service 
spec: type: LoadBalancer selector: app: my-app ports: - protocol: TCP port: 80 targetPort: 8080
```
Isso garante que os usuários sempre sejam direcionados para um container disponível, reduzindo latência.

Em resumo:

1 - Gerenciar containers de forma escalável e automatizada com **OKE**.

2 - Armazenar e proteger imagens de containers com **OCI Container Registry**.

3 - Rodar containers sem precisar gerenciar servidores com OCI **Container Instances**.

4 - Melhorar performance e escalabilidade com** Load Balancer e Auto Scaling**.

Para se aprofundar neste tema, acesse o link da [documentação oficial](https://docs.oracle.com/en/learn/manage-oci-container-instances/#objective), em inglês.
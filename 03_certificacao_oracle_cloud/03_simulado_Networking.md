## 1. Qual afirmação sobre o emparelhamento de Rede de Nuvem Virtual (VCN) entre dois VCNs NÃO é válida?

**A. Uma conexão de emparelhamento de VCN é uma conexão baseada em VPN.** *CORRETA*
`O emparelhamento de VCN não é baseado em VPN; é uma conexão de rede entre dois VCNs que permite o roteamento de tráfego entre eles usando endereços IP privados.`

B. VCNs emparelhados podem existir na mesma região da OCI.

C. VCNs emparelhados podem existir em diferentes regiões da OCI.

D. VCNs emparelhados não podem ter CIDRs sobrepostos.

## 2. Qual afirmação sobre uma Rede de Nuvem Virtual (VCN) é verdadeira?

**A. Uma VCN pode residir apenas em uma única região, mas pode abranger vários domínios de disponibilidade.** *CORRETA*
`Uma VCN é uma rede privada virtual configurada em data centers da Oracle em uma única região da OCI e pode abranger todos os domínios de disponibilidade dessa região.`

B. Uma VCN pode ter apenas uma sub-rede pública e mais de uma sub-rede privada.

C. Uma VCN pode abranger regiões da OCI.

D.Uma VCN pode ser usada com apenas uma instância.

## 3. Qual componente NÃO é criado por padrão com a criação de uma Rede de Nuvem Virtual?

A. Lista de Segurança Padrão

B. Opções de DHCP Padrão

C. Tabela de Rota Padrão

**D. Gateway de Emparelhamento Local Padrão** *CORRETA*
`Quando você cria uma VCN, uma tabela de rota padrão, uma lista de segurança padrão e opções de DHCP são criadas automaticamente, mas um Gateway de Emparelhamento Local (LPG) não é criado por padrão`

## 4. Qual tráfego de camada OSI é suportado pelo Balanceador de Carga de Rede da OCI?

A.Camada 5 (sessão)

B. Camada 7 (aplicação)

**C. Camada 4 (transporte)** *CORRETA*
`O Balanceador de Carga de Rede da OCI opera na camada 4 do modelo OSI, que é a camada de transporte.`

D. Camada 2 (enlace de dados)

## 5. Qual componente da VCN bloqueia o tráfego de entrada, mas permite o tráfego de saída para a internet?

A. Gateway de Serviço

B. Gateway de Internet

C. Gateway de Roteamento Dinâmico

**D. Gateway NAT** *CORRETA*
`Um Gateway NAT em uma VCN permite que instâncias em uma sub-rede privada iniciem conexões com a internet, mas impede conexões de entrada não solicitadas da internet.`
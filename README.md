# Análise de Vendas de E-commerce com SQL

Projeto de análise de dados de um e-commerce com foco em faturamento, comportamento de clientes e desempenho geográfico.

Utilizando SQL, o projeto transforma dados brutos em métricas e insights que apoiam a tomada de decisão em contextos de negócio.

---

## 🧠 O que este projeto demonstra

- Capacidade de traduzir perguntas de negócio em consultas SQL
- Uso de joins, agregações, CTEs e window functions
- Organização de um projeto analítico completo
- Análise de métricas de negócio (faturamento, ticket médio, recompra)
- Estruturação de dados para tomada de decisão

---

## 🎯 Perguntas de negócio analisadas

- Qual é o faturamento diário da empresa?
- Como evolui o faturamento acumulado ao longo do tempo?
- Qual é o ticket médio das vendas?
- Quem são os clientes que mais gastam?
- Existem clientes que nunca realizaram compras?
- Qual é a taxa de recompra de clientes?
- Quais cidades geram maior faturamento?
- Qual a participação de cada cidade no faturamento total?

---

## 📂 Dataset

O projeto utiliza dois arquivos:

- `clientes.csv`: dados cadastrais dos clientes
- `pedidos.csv`: registros de compras realizadas

### Principais campos

**clientes.csv**
- cliente_id
- nome
- cidade
- data_cadastro

**pedidos.csv**
- pedido_id
- cliente_id
- data_pedido
- valor_total

---

## 📁 Estrutura do projeto
```
ecommerce-sales-analysis
│
├── README.md
│
├── schema
│ └── create_tables.sql
│
├── queries
│ ├── faturamento_diario.sql
│ ├── faturamento_acumulado.sql
│ ├── top_clientes.sql
│ ├── clientes_sem_compra.sql
│ ├── taxa_recompra.sql
│ ├── analise_por_cidade.sql
│ └── ticket_medio.sql
│
├── dataset
│ ├── clientes.csv
│ └── pedidos.csv
│
└── insights
└── conclusions.md
```


---

## 🧰 Tecnologias utilizadas

- SQL
- Banco de dados relacional
- CTE (Common Table Expressions)
- Window Functions
- Funções de agregação

---

## 📈 Principais análises realizadas

### Faturamento diário
Calcula o total de vendas realizadas por dia.

### Faturamento acumulado
Analisa o crescimento do faturamento ao longo do tempo.

### Ticket médio
Mede o valor médio gasto por pedido.

### Top clientes
Identifica os clientes que mais contribuíram para o faturamento.

### Clientes sem compra
Detecta clientes cadastrados que nunca realizaram pedidos.

### Taxa de recompra
Mede a proporção de clientes que realizaram mais de uma compra.

### Desempenho por cidade
Avalia quais cidades geram mais faturamento e sua participação no total.

---

## 💡 Principais insights

- O faturamento está concentrado em determinadas cidades, indicando dependência geográfica
- Uma parcela relevante dos clientes cadastrados não realizou compras
- Clientes recorrentes possuem impacto significativo na receita total
- A evolução do faturamento apresenta padrão consistente ao longo do tempo

---

## ⚙️ Como reproduzir o projeto

1. Executar o script `schema/create_tables.sql` para criação das tabelas  
2. Importar os arquivos CSV da pasta `dataset`  
3. Executar as consultas SQL disponíveis na pasta `queries`  
4. Consultar os resultados e analisar os insights gerados  

---

## 🚀 Roadmap de evolução do projeto

Este projeto pode ser expandido para um nível mais avançado de análise e engenharia de dados:

### 📊 Expansão do volume e complexidade dos dados
- Inclusão de novas tabelas (produtos, categorias, pagamentos)
- Simulação de grandes volumes de dados
- Cenários mais próximos de ambientes reais

### 📈 Dashboards (Power BI / Tableau)
- Construção de dashboards com KPIs principais
- Análise interativa por período, cidade e cliente
- Visual storytelling para tomada de decisão

### 🐍 Análises em Python (pandas)
- Reproduzir análises SQL em Python
- Limpeza e transformação de dados
- Análise exploratória (EDA)
- Visualizações

### 🏗️ Modelagem para Data Warehouse
- Estruturação em modelo dimensional (Star Schema)
- Separação em camadas (raw, processed, analytics)
- Preparação para BI escalável

### 🔁 Análise de churn de clientes
- Definição de churn
- Cálculo de taxa de abandono
- Identificação de padrões de perda

### 🔍 Análise de funil de vendas
- Estruturação do funil (cadastro → compra → recompra)
- Cálculo de conversões
- Identificação de gargalos

---

## 📌 Próximo passo

A próxima etapa deste projeto será a implementação das análises em Python e a construção de um dashboard em Power BI, consolidando um fluxo completo de análise de dados.

---

## 👨‍💻 Autora

Larissa Lima  
Projeto desenvolvido como parte do meu portfólio em Análise de Dados.

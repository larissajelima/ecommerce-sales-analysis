# Análise de Vendas de E-commerce com SQL

## 📊 Visão Geral do Projeto

Este projeto realiza uma análise exploratória de dados de vendas de um e-commerce utilizando SQL.

O objetivo é extrair insights sobre faturamento, comportamento de clientes e distribuição geográfica das vendas, respondendo a perguntas de negócio comuns em empresas de comércio eletrônico.

O projeto utiliza consultas SQL para calcular métricas importantes como faturamento diário, ticket médio, taxa de recompra e desempenho de vendas por cidade.

---

## 🎯 Perguntas de Negócio

Este projeto busca responder às seguintes perguntas:

- Qual é o faturamento diário da empresa?
- Como evolui o faturamento acumulado ao longo do tempo?
- Qual é o ticket médio das vendas?
- Quem são os clientes que mais gastam?
- Existem clientes que nunca realizaram compras?
- Qual é a taxa de recompra de clientes?
- Quais cidades geram maior faturamento?
- Qual a participação de cada cidade no faturamento total?

---

## Estrutura do Projeto

ecommerce-sales-analysis
│
├── README.md
│
├── schema
│   └── create_tables.sql
│
├── queries
│   ├── faturamento_diario.sql
│   ├── faturamento_acumulado.sql
│   ├── top_clientes.sql
│   ├── clientes_sem_compra.sql
│   ├── taxa_recompra.sql
│   └── analise_por_cidade.sql
│
├── dataset
│   ├── clientes.csv
│   └── pedidos.csv
│
└── insights
    └── conclusions.md


## Dataset

O projeto utiliza dois conjuntos de dados:

clientes.csv
- cliente_id
- nome
- cidade
- data_cadastro

pedidos.csv
- pedido_id
- cliente_id
- data_pedido
- valor_total

## 🧰 Tecnologias Utilizadas

- SQL
- Banco de dados relacional
- Window Functions
- CTE (Common Table Expressions)
- Funções de agregação

---

## 📈 Principais Análises Realizadas

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

## 💡 Exemplos de Insights

Alguns insights que podem ser obtidos com a análise:

- Determinar quais regiões possuem maior volume de vendas
- Identificar clientes com maior valor para o negócio
- Avaliar o nível de fidelização dos clientes
- Entender padrões de crescimento de faturamento

---

## 🚀 Possíveis Evoluções do Projeto

Este projeto pode ser expandido com:

- Criação de dashboards em Power BI ou Tableau
- Análises adicionais em Python (pandas)
- Modelagem de dados para Data Warehouse
- Análise de churn de clientes
- Análise de funil de vendas

---

## 👨‍💻 Autor

Projeto desenvolvido como parte de um portfólio de análise de dados utilizando SQL.

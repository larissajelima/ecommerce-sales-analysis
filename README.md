# 📊 Análise de Vendas de E-commerce com SQL

Projeto de análise de dados utilizando SQL com foco em métricas essenciais de negócio, como faturamento, comportamento de clientes e desempenho geográfico.

O objetivo é demonstrar a capacidade de transformar dados brutos em informações úteis para tomada de decisão.

---

## 🧠 Objetivo do Projeto

Explorar dados de um e-commerce para responder perguntas de negócio e gerar insights iniciais sobre:

- Receita
- Perfil de clientes
- Recorrência de compras
- Distribuição geográfica das vendas

---

## 🛠️ Habilidades Demonstradas

- Escrita de queries SQL para análise de dados  
- Uso de:
  - JOINs  
  - Agregações  
  - CTEs (Common Table Expressions)  
  - Window Functions  
- Tradução de perguntas de negócio em análises práticas  
- Organização de um projeto analítico estruturado  
- Identificação de métricas relevantes  

---

## 🎯 Perguntas de Negócio

Este projeto busca responder:

- Qual é o faturamento diário?
- Como o faturamento evolui ao longo do tempo?
- Qual é o ticket médio das vendas?
- Quem são os clientes que mais geram receita?
- Existem clientes cadastrados que nunca compraram?
- Qual é a taxa de recompra?
- Quais cidades concentram o faturamento?
- Qual a participação de cada cidade na receita total?

---

## 📂 Dataset

O projeto utiliza dois arquivos principais:

### `clientes.csv`
- cliente_id  
- nome  
- cidade  
- data_cadastro  

### `pedidos.csv`
- pedido_id  
- cliente_id  
- data_pedido  
- valor_total  

---

## 📁 Estrutura do Projeto
```ecommerce-sales-analysis
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

## 📊 Principais Análises

- **Faturamento diário:** total de vendas por dia  
- **Faturamento acumulado:** evolução da receita ao longo do tempo  
- **Ticket médio:** valor médio por pedido  
- **Top clientes:** clientes com maior contribuição para o faturamento  
- **Clientes sem compra:** identificação de base inativa  
- **Taxa de recompra:** proporção de clientes recorrentes  
- **Análise por cidade:** distribuição geográfica da receita  

---

## 💡 Insights Iniciais

- O faturamento apresenta concentração em determinadas cidades  
- Parte dos clientes cadastrados não realiza compras  
- Clientes recorrentes contribuem significativamente para a receita  
- O crescimento do faturamento segue um padrão consistente ao longo do tempo  

> ⚠️ Observação: devido ao tamanho reduzido do dataset, os insights têm caráter exploratório.

---

## ⚙️ Como Reproduzir

1. Executar `schema/create_tables.sql`  
2. Importar os arquivos da pasta `dataset`  
3. Executar as queries da pasta `queries`  
4. Analisar os resultados  

---

## 🚀 Possíveis Evoluções

Este projeto pode ser expandido com:

- Inclusão de novas tabelas (produtos, categorias, pagamentos)  
- Aumento do volume de dados  
- Modelagem dimensional (Star Schema)  
- Criação de dashboards (Power BI / Tableau)  
- Análise em Python (pandas)  
- Estudo de churn de clientes  
- Análise de funil de vendas  

---

## 📌 Próximos Passos

Evoluir este projeto para análises mais avançadas, incluindo:

- Modelagem de dados  
- Métricas de retenção  
- Visualização em dashboards  
- Pipeline analítico completo  

---

## 👩‍💻 Autora

**Larissa Lima**  
Projeto desenvolvido como parte do meu portfólio em Análise de Dados.

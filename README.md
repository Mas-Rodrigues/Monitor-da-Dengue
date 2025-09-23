# Monitor da Dengue - São José do Rio Preto/SP

## 📊 Acesse o Dashboard Interativo

**[🔗 Ver Relatório Completo](https://mas-rodrigues.github.io/Monitor-da-Dengue/)**

Este repositório contém o código fonte para monitoramento de notificações de dengue em São José do Rio Preto/SP, com análise de sazonalidade e indicadores de alerta baseados em dados históricos.

## 📈 Funcionalidades

- **Análise temporal**: Série histórica 2018-2025 com padrões sazonais
- **Indicadores estatísticos**: Sistema de alertas baseado em Z-score para identificação de anomalias epidemiológicas
- **Navegação por abas**: Interface organizada com separação entre visualização de mapa e tabelas analíticas
- **Gráficos interativos**: Visualização de tendências sazonais com hover personalizado em português
- **Mapa interativo**: Distribuição espacial por estabelecimentos de saúde com popups informativos
- **Tabelas dinâmicas**: Análise comparativa mensal com indicadores de criticidade
- **Design responsivo**: Interface adaptável para desktop, tablet e dispositivos móveis
- **Atualização automática**: Datas e estatísticas calculadas dinamicamente

## 🛠️ Tecnologias

- **R/Quarto**: Análise estatística e geração de relatórios dinâmicos
- **DuckDB**: Banco de dados analítico de alta performance
- **Plotly**: Gráficos interativos com hover personalizado
- **Leaflet**: Mapas interativos com marcadores responsivos
- **DT (DataTables)**: Tabelas interativas com filtragem e ordenação
- **sf**: Processamento e análise de dados espaciais
- **CSS responsivo**: Design adaptável para múltiplos dispositivos
- **GitHub Pages**: Hospedagem automática com CI/CD

## 📊 Dados

- **Notificações de dengue**: Pacote [`microdatasus`](https://github.com/rfsaldanha/microdatasus) (DATASUS)
- **Dados espaciais**: Mapas de bairros e estabelecimentos de saúde de São José do Rio Preto
- **CNES**: Cadastro Nacional de Estabelecimentos de Saúde

## 📈 Metodologia Estatística

### Indicadores de Criticidade
O sistema utiliza **análise Z-score** para identificação de anomalias epidemiológicas:

- **Z-score ≥ 2**: 🚨 **CRÍTICO** - Valor estatisticamente significativo (p < 0.05)
- **1 ≤ Z-score < 2**: ⚠️ **ALTO** - Acima do esperado, requer atenção
- **0 ≤ Z-score < 1**: 🟡 **ACIMA DA MÉDIA** - Ligeiramente elevado
- **-1 ≤ Z-score < 0**: 🟢 **NORMAL** - Dentro da variação esperada
- **Z-score < -1**: 🔵 **BAIXO** - Abaixo da média histórica

### Baseline Histórico
- **Período de referência**: 2018-2024 (7 anos)
- **Cálculo**: Médias mensais com desvio padrão para cada mês
- **Atualização**: Dados de 2025 comparados dinamicamente

## ⚙️ Configuração

Para executar localmente, você precisará:

### �️ Pré-requisitos do Sistema:
- **R** (versão 4.1+)
- **Quarto** ([Download](https://quarto.org/docs/get-started/))
- **Git** para controle de versão

### �📦 Pacotes R necessários:
```r
install.packages(c(
  "DBI", "duckdb", "tidyverse", "plotly", "DT", 
  "sf", "leaflet", "quarto", "lubridate"
))
```

### 📁 Estrutura de dados:
Criar um arquivo `.env` na raiz do projeto com os caminhos para os dados:
```env
DENGUE_DB_PATH="/caminho/para/dengue.duckdb"
MAPA_SJRP_PATH="/caminho/para/mapa-sjrp.rds"
CNES_SJRP_PATH="/caminho/para/cnes-sjrp.rds"
```

### 🚀 Execução:
```bash
# Clonar o repositório
git clone https://github.com/Mas-Rodrigues/Monitor-da-Dengue.git

# Entrar no diretório
cd Monitor-da-Dengue

# Renderizar o relatório
quarto render index.qmd

# Ou executar em modo preview
quarto preview index.qmd
```

---

**Desenvolvido por Marco Rodrigues** | **Última atualização**: 23 de setembro de 2025

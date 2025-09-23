# Monitor da Dengue - São José do Rio Preto/SP

## 📊 Acesse o Dashboard ### 📦 Pacotes R necessários:
```r
install.packages(c(
  "DBI", "duckdb", "tidyverse", "plotly", "DT", 
  "sf", "leaflet", "quarto", "lubridate", "forecast", "trend"
))
```ivo

**[🔗 Ver Relatório Completo](https://mas-rodrigues.github.io/Monitor-da-Dengue/)**

Este repositório contém o código fonte para monitoramento de notificações de dengue em São José do Rio Preto/SP, com análise de sazonalidade, tendências temporais e indicadores de alerta baseados em metodologias estatísticas avançadas e dados históricos.

## 📈 Funcionalidades

- **Análise temporal**: Série histórica 2018-2025 com padrões sazonais
- **Análise estatística avançada**: Decomposição STL, teste de Mann-Kendall e índice de sazonalidade
- **Indicadores estatísticos**: Sistema de alertas baseado em Z-score para identificação de anomalias epidemiológicas
- **Navegação por abas**: Interface organizada com separação entre análise sazonal, estatística e espacial
- **Gráficos interativos**: Visualização de tendências sazonais com hover personalizado em português
- **Mapa interativo**: Distribuição espacial por estabelecimentos de saúde com popups informativos e dados mensais
- **Tabelas dinâmicas**: Análise comparativa mensal com indicadores de criticidade
- **Explicações automatizadas**: Interpretação cursiva dos resultados estatísticos em linguagem acessível
- **Design responsivo**: Interface adaptável para desktop, tablet e dispositivos móveis
- **Atualização automática**: Datas e estatísticas calculadas dinamicamente

## 🛠️ Tecnologias

- **R/Quarto**: Análise estatística e geração de relatórios dinâmicos
- **DuckDB**: Banco de dados analítico de alta performance
- **Plotly**: Gráficos interativos com hover personalizado
- **Leaflet**: Mapas interativos com marcadores responsivos
- **DT (DataTables)**: Tabelas interativas com filtragem e ordenação
- **sf**: Processamento e análise de dados espaciais
- **forecast**: Análise de séries temporais e decomposição STL
- **trend**: Testes estatísticos de tendência (Mann-Kendall, Sen slope)
- **CSS responsivo**: Design adaptável para múltiplos dispositivos
- **GitHub Pages**: Hospedagem automática com CI/CD

## 📊 Dados

- **Notificações de dengue**: Pacote [`microdatasus`](https://github.com/rfsaldanha/microdatasus) (DATASUS)
- **Dados espaciais**: Mapas de bairros e estabelecimentos de saúde de São José do Rio Preto
- **CNES**: Cadastro Nacional de Estabelecimentos de Saúde

## 📈 Metodologia Estatística

### Análise de Séries Temporais
O sistema implementa metodologias estatísticas avançadas para análise temporal:

- **Decomposição STL**: Separação da série temporal em tendência, sazonalidade e ruído
- **Teste de Mann-Kendall**: Detecção robusta de tendências monotônicas (não-paramétrico)
- **Sen Slope**: Estimação da magnitude de tendências temporais
- **Índice de Sazonalidade**: Quantificação do efeito sazonal mensal

### Indicadores de Criticidade
O sistema utiliza **análise baseada em múltiplos da média histórica** para identificação de variações epidemiológicas:

- **≥ 200% da média**: 🚨 **CRÍTICO** - Casos excepcionalmente elevados
- **150% a 199% da média**: ⚠️ **ALTO** - Significativamente acima do esperado
- **100% a 149% da média**: 🟡 **ACIMA DA MÉDIA** - Ligeiramente elevado
- **50% a 99% da média**: 🟢 **NORMAL** - Dentro da variação esperada
- **< 50% da média**: 🔵 **BAIXO** - Abaixo da média histórica

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

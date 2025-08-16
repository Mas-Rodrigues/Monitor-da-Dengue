# Monitor da Dengue - São José do Rio Preto/SP

## 📊 Acesse o Dashboard Interativo

**[🔗 Ver Relatório Completo](https://mas-rodrigues.github.io/Monitor-da-Dengue/)**

Este repositório contém o código fonte para monitoramento de notificações de dengue em São José do Rio Preto/SP, com análise de sazonalidade e indicadores de alerta baseados em dados históricos.

## 📈 Funcionalidades

- **Análise temporal**: Série histórica 2018-2025
- **Indicadores de alerta**: Comparação com médias históricas
- **Gráficos interativos**: Visualização de tendências sazonais
- **Mapa interativo**: Distribuição espacial por estabelecimentos de saúde
- **Análise geoespacial**: Localização dos casos notificados
- **Atualização automática**: Datas e estatísticas calculadas dinamicamente

## 🛠️ Tecnologias

- **R/Quarto**: Análise e relatório
- **DuckDB**: Banco de dados
- **Plotly**: Gráficos interativos
- **Leaflet**: Mapas interativos
- **sf**: Análise de dados espaciais
- **GitHub Pages**: Hospedagem

## 📊 Dados

- **Notificações de dengue**: Pacote [`microdatasus`](https://github.com/rfsaldanha/microdatasus) (DATASUS)
- **Dados espaciais**: Mapas de bairros e estabelecimentos de saúde de São José do Rio Preto
- **CNES**: Cadastro Nacional de Estabelecimentos de Saúde

## ⚙️ Configuração

Para executar localmente, você precisará:

### 📦 Pacotes R necessários:
```r
install.packages(c("DBI", "duckdb", "tidyverse", "plotly", "DT", "sf", "leaflet", "quarto"))
```

### 📁 Estrutura de dados:
Criar um arquivo `.env` na raiz do projeto com os caminhos para os dados:
```env
DENGUE_DB_PATH="/caminho/para/dengue.duckdb"
MAPA_SJRP_PATH="/caminho/para/mapa-sjrp.rds"
CNES_SJRP_PATH="/caminho/para/cnes-sjrp.rds"
```

---

**Desenvolvido por Marco Rodrigues** | **Última atualização**: `r Sys.Date()`

# 📊 Visualização de Dados no R

**Minicurso — IX Simpósio de Iniciação à Docência | Universidade Federal de Viçosa**

Tutorial interativo em [`learnr`](https://rstudio.github.io/learnr/) sobre
importação, organização e visualização de dados no R, com foco nos principais
gráficos da Estatística Descritiva.

---

## 🎯 Objetivo

Capacitar os participantes no uso do R para **importação**, **organização** e
**visualização** de dados em diferentes formatos (CSV e TXT), desenvolvendo
habilidade para interpretar e construir os principais gráficos da Estatística
Descritiva.

## 🚀 Como executar o tutorial

Baixe o material:

```bash
git clone https://github.com/fsbmat-ufv/VisualizacaoDados.git
```

Instale os pacotes necessários (uma vez só):

```r
install.packages(c("learnr", "tidyverse", "readxl", "scales", "shiny", "rmarkdown"))
```

Abra **`VisualizacaoDados.Rproj`** (duplo clique) — isso inicia o RStudio já com o
diretório de trabalho correto, que é o que faz os caminhos `dados/...` funcionarem.

Em seguida abra `EST100_minicurso_visualizacao_dados.Rmd` e clique em
**Run Document**, ou execute no console:

```r
rmarkdown::run("EST100_minicurso_visualizacao_dados.Rmd")
```

O tutorial abre no navegador. Não é preciso conhecimento prévio de R.

## 🗺️ Conteúdo

| # | Tópico | Principais funções |
|:--|:-------|:-------------------|
| 1 | Boas-vindas e objetivos | — |
| 2 | Importando dados: CSV e TXT | `read_csv()`, `read_csv2()`, `read_delim()`, `read_table()`, `read_excel()` |
| 3 | Organizando os dados com `dplyr` | `select()`, `filter()`, `mutate()`, `count()`, `group_by()`, `summarise()` |
| 4 | Distribuições de frequência | `count()`, `cumsum()`, `geom_bar()`, `geom_col()`, `coord_polar()` |
| 5 | Histogramas | `geom_histogram()`, `nclass.Sturges()`, `nclass.FD()` |
| 6 | Boxplots | `geom_boxplot()`, `geom_jitter()`, `IQR()` |
| 7 | Gráfico de ramos e folhas | `stem()` |
| 8 | Simetria, dispersão e valores atípicos | `mean()`, `median()`, `sd()`, `IQR()`, regra 1,5 × IQR |
| 9 | Gráficos matemáticos em R base | `plot()`, `curve()`, `lines()`, `abline()` |
| 10 | `ggplot2` na prática | `aes()`, `geom_*()`, `facet_wrap()`, `scale_*()`, `theme_*()` |
| 11 | Git e GitHub | `git init`, `add`, `commit`, `push`, `pull`, `clone` |
| 12 | Encerramento e próximos passos | — |

São **76 blocos de código executáveis** e **27 questões** de checagem de
aprendizagem ao longo do texto.

## 🗃️ Dados

A base principal é a clássica **Companhia MB** (36 funcionários), de Bussab &
Morettin, *Estatística Básica*. O arquivo original é a planilha
`CompanhiaMB_clear2.xls`, exportada para três formatos na pasta `dados/`:

| Arquivo | Formato | Função de leitura |
|:--------|:--------|:------------------|
| `dados/dados_companhia.csv` | vírgula, decimal ponto | `read_csv()` |
| `dados/dados_companhia.txt` | ponto-e-vírgula, decimal vírgula (padrão BR) | `read_csv2()` / `read_delim()` |
| `dados/dados_companhia_espacos.txt` | separado por espaços | `read_table()` |
| `dados/turma_simulada.csv` | base simulada de apoio (120 estudantes) | `read_csv()` |

Variáveis: `registro`, `estado_civil`, `grau`, `n_filhos`, `salario` (em salários
mínimos), `idade_anos`, `idade_meses`, `idade`, `procedencia`.

## 📁 Estrutura da pasta

```
VisualizacaoDados/
├── VisualizacaoDados.Rproj                   <- abra este arquivo primeiro
├── EST100_minicurso_visualizacao_dados.Rmd   <- tutorial do minicurso
├── EST100_learnR_intro.Rmd                   <- tutorial introdutório (aula anterior)
├── EST100_pratica_visualizacao_graficos_R_corrigido.Rmd
├── GraficosMatematicos.Rmd                   <- funções e gráficos em R base
├── aula_git_github_rstudio_beamer.tex        <- slides sobre Git/GitHub/RStudio
├── CompanhiaMB_clear2.xls                    <- planilha original
├── dados/                                    <- arquivos exportados (CSV e TXT)
├── Logo.png, UFV.png, Logo100.png            <- logos institucionais
└── .gitignore
```

## 📚 Referências

- Bussab, W. O.; Morettin, P. A. *Estatística Básica*. (origem dos dados da Companhia MB)
- Tukey, J. W. *Exploratory Data Analysis*, 1977.
- Wickham, H.; Çetinkaya-Rundel, M.; Grolemund, G. [*R for Data Science*](https://r4ds.hadley.nz/)
- Wickham, H. [*ggplot2: Elegant Graphics for Data Analysis*](https://ggplot2-book.org/)
- Bryan, J. [*Happy Git with R*](https://happygitwithr.com/)

---

<sub>EST 100 — Estatística Descritiva e Exploratória | Universidade Federal de Viçosa</sub>

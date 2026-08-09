# Prompt para o Claude Code — Minicurso "Visualização de Dados no R" (learnr)

> Cole o texto abaixo no Claude Code, rodando dentro da pasta `VisualizacaoDados`.

---

Você está trabalhando no diretório `VisualizacaoDados` de um minicurso do **IX Simpósio de Iniciação à Docência**, que vai ser ministrado amanhã. Crie um tutorial interativo em **learnr** (pacote R) sobre **Visualização de Dados no R**, salvo como `EST100_minicurso_visualizacao_dados.Rmd`.

## Contexto e arquivos já existentes na pasta

Antes de começar, leia os arquivos abaixo — eles contêm material que já foi produzido para aulas anteriores e devem ser **reaproveitados e consolidados**, não ignorados:

- `EST100_learnR_intro.Rmd` — tutorial learnr introdutório (readr, dplyr, ggplot2), com dataset simulado de estudantes.
- `EST100_pratica_visualizacao_graficos_R_corrigido.Rmd` — aula prática em R Markdown (html_document) sobre estatística descritiva e gráficos com ggplot2, já com objetivos de aprendizagem, CSS customizado e blocos de "nota ao professor".
- `GraficosMatematicos.Rmd` — tutorial learnr sobre funções e gráficos matemáticos em R base, com estilo visual (CSS com variáveis de cor) que deve ser reutilizado para manter identidade visual entre os arquivos.
- `aula_git_github_rstudio_beamer.tex` — slides beamer de uma aula sobre Git, GitHub e RStudio (tema Madrid, cores UFVBlue/UFVGreen). Use como referência de conteúdo para a seção de Git/GitHub do tutorial.
- `CompanhiaMB_clear2.xls` — planilha real de dados (única base de dados real disponível na pasta).
- `Logo.png`, `Logo100.png`, `UFV.png` — logos institucionais a incluir no cabeçalho/capa do tutorial e no rodapé dos slides, se houver.
- `graphical-data-analysis-with-r-...pdf` — livro de referência sobre análise gráfica de dados em R; pode ser consultado para exemplos e boas práticas, não precisa ser citado no tutorial.

## Objetivo do tutorial

Capacitar os participantes no uso do R para **importação, organização e visualização de dados em diferentes formatos (CSV e TXT)**, desenvolvendo habilidades para interpretar e construir os principais gráficos da Estatística Descritiva.

## Conteúdo obrigatório

1. **Importação e organização de dados**
   - Importar dados de arquivos `.csv` e `.txt` com `readr` (`read_csv()`, `read_delim()`/`read_table()`).
   - Como não há arquivos `.csv`/`.txt` de exemplo na pasta, exporte `CompanhiaMB_clear2.xls` (via `readxl`) para gerar um `dados_companhia.csv` e um `dados_companhia.txt` (delimitado por `;` ou tab) dentro de uma subpasta `dados/`, e use-os como exemplos reais ao longo do tutorial. Gere também um pequeno dataset simulado (pode reaproveitar/adaptar o da `turma` em `EST100_learnR_intro.Rmd`) para exercícios rápidos.
   - Organização básica com `dplyr` (`select`, `filter`, `mutate`, `group_by`/`summarise`).

2. **Gráficos de Estatística Descritiva**
   - Distribuições de frequência (tabelas de frequência absoluta/relativa, gráficos de barras e setores para variáveis qualitativas).
   - Histogramas (e discussão sobre escolha do número/largura de classes).
   - Boxplots (incluindo boxplots comparativos entre grupos).
   - Gráficos de ramos e folhas (`stem()` em R base).
   - Gráficos de densidade como complemento ao histograma.

3. **Análise da distribuição dos dados**
   - Simetria/assimetria (comparação média x mediana, curvas de densidade sobrepostas).
   - Dispersão (variância, desvio padrão, amplitude interquartil, coeficiente de variação).
   - Identificação de valores atípicos (regra do boxplot / 1.5×IQR).
   - Outras características relevantes para Análise Exploratória de Dados (caudas longas, multimodalidade, mistura de subpopulações).

4. **Gráficos matemáticos**
   - Reaproveite e adapte exemplos de `GraficosMatematicos.Rmd` (funções, curvas, gráficos em R base) como uma seção intermediária de transição para o `ggplot2`.

5. **ggplot2 e tidyverse**
   - Seção dedicada explicando a gramática dos gráficos (dados, aesthetics, geoms, stats, facets, coord, theme).
   - Mostrar o mesmo gráfico construído "peça por peça" (como em `EST100_learnR_intro.Rmd`) e depois um painel de possibilidades: `geom_histogram`, `geom_boxplot`, `geom_density`, `geom_bar`, `geom_point`, `facet_wrap`, temas (`theme_minimal`, `theme_light`), paletas de cor.

6. **Git e GitHub**
   - Seção explicando o que são Git e GitHub e por que versionar projetos de análise de dados/aulas em R, usando como base o conteúdo de `aula_git_github_rstudio_beamer.tex` (conceitos de repositório, commit, push, clone) resumido em linguagem simples para quem nunca usou.
   - Ao final dessa seção, **efetivamente conecte esta pasta a um repositório Git/GitHub**:
     - Inicialize o repositório local (`git init`) se ainda não existir.
     - Crie um `.gitignore` adequado para projetos R (ignorar `.Rproj.user/`, `.Rhistory`, `.RData`, `*.Rproj` se aplicável).
     - Faça o primeiro commit com todos os arquivos da pasta.
     - Crie um repositório **público** no GitHub (via `gh repo create` se a CLI do GitHub estiver disponível e autenticada; caso contrário, oriente o usuário a criar manualmente em github.com e forneça os comandos `git remote add origin ...`).
     - Faça o push do commit para o repositório remoto.
     - Documente os comandos usados em um bloco de código dentro do próprio tutorial, para que os participantes possam reproduzir o fluxo depois.

## Requisitos de formato

- YAML com `output: learnr::tutorial:` (`progressive: true`, `allow_skip: true`, `language: pt`), `runtime: shiny_prerendered`, seguindo o padrão de `EST100_learnR_intro.Rmd`/`GraficosMatematicos.Rmd`.
- Reaproveite o CSS já usado em `GraficosMatematicos.Rmd` (variáveis de cor `--cor1`...`--cor5`) para manter consistência visual entre os três tutoriais da pasta.
- Inclua `Logo.png` (ou `Logo100.png`) e `UFV.png` no topo do tutorial (bloco de abertura/boas-vindas).
- Tom didático, para um **minicurso presencial de iniciação à docência** (público: licenciandos/iniciantes em docência, não necessariamente com experiência prévia em R). Frases curtas, exemplos práticos, exercícios com `exercise = TRUE` e `question()` do learnr para checagem de aprendizado ao longo do texto.
- Estrutura sugerida de seções: Boas-vindas → Importando dados (CSV/TXT) → Organizando dados → Gráficos de frequência → Histogramas → Boxplots → Ramo-e-folhas → Simetria, dispersão e outliers → Gráficos matemáticos → ggplot2/tidyverse na prática → Git e GitHub → Encerramento/próximos passos.
- Ao final, valide que o `.Rmd` compila sem erros (`rmarkdown::run()` ou `rstudioapi`/`callr::r(function() rmarkdown::render(...))`) antes de considerar a tarefa concluída.

## Entregável

Um único arquivo `EST100_minicurso_visualizacao_dados.Rmd` funcional na raiz da pasta, mais os arquivos de dados gerados em `dados/`, tudo commitado e enviado (push) para um repositório GitHub público.


<!-- README.md is generated from README.Rmd. Please edit that file -->

# Dorst-notes

<!-- badges: start -->
<!-- badges: end -->

## Apresentação

Este repositório contém anotações sobre o livro

Dorst, Leo, Daniel Fontijne, and Stephen Mann. 2007. *Geometric Algebra
for Computer Science: An Object-Oriented Approach to Geometry*. The
Morgan Kaufmann Series in Computer Graphics.

O site do livro é <https://geometricalgebra.org/>.

Uma versão HTML destas anotações está em
<https://fnaufel.github.io/Dorst-notes/>.

## Requisitos para gerar o HTML das anotações

- As anotações são convertidas para HTML por
  [Quarto](https://quarto.org/). Você pode [instalar
  Quarto](https://quarto.org/docs/get-started/) como um binário no seu
  sistema operacional ou como um pacote no RStudio (veja o próximo
  item).

- Os arquivos que compõem estas anotações podem ser editados com
  qualquer editor de textos, mas minha preferência é usar o [RStudio
  Desktop](https://posit.co/download/rstudio-desktop/).

- Antes de instalar o RStudio Desktop, você deve [instalar o
  R](https://cran.rstudio.com/) versão 3.3.0 ou mais recente.

- Em seguida, [instale o RStudio
  Desktop](https://posit.co/download/rstudio-desktop/).

- Você também precisa de [Python](https://www.python.org/) versão 3.8 ou
  mais recente. Siga estas [instruções para instalar
  Python](https://www.python.org/downloads/).

- A partir do RStudio Desktop, você deve instalar os seguintes pacotes:

  - knitr
  - quarto
  - reticulate

  No *prompt* do R, digite

      install.packages(c('knitr', 'quarto', 'reticulate'))

- A partir de um *shell* Python, você deve instalar os seguintes
  pacotes:

  - sympy (<https://www.sympy.org/en/index.html>)
  - galgebra (<https://galgebra.readthedocs.io/en/latest/>)

  No *prompt* do Python, digite

      pip install sympy galgebra

## Estrutura do repositório

- O diretório
  [docs](https://github.com/fnaufel/Dorst-notes/tree/master/docs) contém
  a versão HTML e a versão pdf das anotações.

- O diretório
  [figures](https://github.com/fnaufel/Dorst-notes/tree/master/figures)
  contém as imagens usadas nas anotações.

- O diretório
  [filters](https://github.com/fnaufel/Dorst-notes/tree/master/filters)
  contém os filtros usados na conversão. Leia mais a respeito em
  <https://quarto.org/docs/extensions/filters.html>.

- O diretório
  [gaviewer](https://github.com/fnaufel/Dorst-notes/tree/master/gaviewer)
  contém *scripts* em GAViewer para gerar figuras de elementos da
  álgebra geométrica. Leia mais sobre o GAViewer em
  <https://geometricalgebra.org/figures.html>.

- Os arquivos 01.qmd, 02.qmd etc. contêm o texto dos capítulos das
  anotações.

- [\_before-body.tex](https://github.com/fnaufel/Dorst-notes/blob/master/_before-body.tex)
  contém comandos LaTeX para serem inseridos logo após
  `\begin{document}` (somente para geração de arquivo pdf).

- [\_custom.scss](https://github.com/fnaufel/Dorst-notes/blob/master/_custom.scss)
  contém regras scss para formatação do HTML gerado.

- [\_math.qmd](https://github.com/fnaufel/Dorst-notes/blob/master/_math.qmd)
  contém comandos em LaTeX para definir macros com a notação da álgebra
  geométrica. Estas macros são usadas tanto para gerar HTML quanto para
  gerar pdf.

- [\_metadata.yml](https://github.com/fnaufel/Dorst-notes/blob/master/_metadata.yml)
  contém opções em YAML que são incluídas no início de cada capítulo.

- [\_preamble.tex](https://github.com/fnaufel/Dorst-notes/blob/master/_preamble.tex)
  contém comandos LaTeX para serem inseridos no preâmbulo (somente para
  geração de arquivo pdf).

- [\_quarto.yml](https://github.com/fnaufel/Dorst-notes/blob/master/_quarto.yml)
  contém as configurações do projeto.

- [\_sympy.qmd](https://github.com/fnaufel/Dorst-notes/blob/master/_sympy.qmd)
  contém comandos para inicializar sympy e galgebra.

- [bibliography.bib](https://github.com/fnaufel/Dorst-notes/blob/master/bibliography.bib)
  contém a bibliografia.

- [index.qmd](https://github.com/fnaufel/Dorst-notes/blob/master/index.qmd)
  contém a apresentação.

- [references.qmd](https://github.com/fnaufel/Dorst-notes/blob/master/references.qmd)
  contém o capítulo com as referências.

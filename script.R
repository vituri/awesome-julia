library(dplyr)
# arquivos = list.files(path = "Julia.jl-master", pattern = ".md", full.names = TRUE)
#
# arquivo = arquivos[1]
#
# destino = "joined_text.md"
# write("", file = destino, append = FALSE)
#
# for (arquivo in arquivos) {
#   texto = readLines(arquivo)
#   write(texto, file = destino, append = TRUE)
# }

# create the .qmd
dir.create("docs")
preamble = '
---
title: "Awesome Julia!"
format:
  html:
    toc: true
    toc-depth: 3
---

Edit the source code [here](https://github.com/vituri/awesome-julia).

'

output_file = 'docs/index.qmd'

write(x = preamble, file = output_file, append = FALSE)

readme = readLines("README.md")

write(x = readme, file = output_file, append = TRUE)

# render
setwd("docs")
quarto::quarto_render(input = "index.qmd", output_format = "html", output_file = "index.html")
library(vituripackage)
arquivos = list.files(path = "Julia.jl-master", pattern = ".md", full.names = TRUE)

arquivo = arquivos[1]

destino = "joined_text.md"
write("", file = destino, append = FALSE)

for (arquivo in arquivos) {
  texto = readLines(arquivo)
  write(texto, file = destino, append = TRUE)
}


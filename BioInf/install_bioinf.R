### INSTRUCTIE

# Gebruik [ctrl]+[shift]+[s] op je toetsenbord om dit computerscript uit te voeren.
# OF klik in de toolbar bovenin: Code > Source.

# Als "Update all/some/none? [a/s/n]:" in console verschijnt, type "n" en druk [enter]. Als dit nog steeds niet werkt probeer dan opnieuw met "a" en [enter].

# Rode berichten in console met "error" zijn belangrijk.

# Alle nodige packages zijn geïnstalleerd en ingeladen als na het uitvoeren van de code "!!! All packages installed !!!" in console staat.



R.version

### R PACKAGES

pack <- c("devtools", "gplots", "ggplot2", "qqman", "plyr", "dplyr", "tidyverse", "magrittr", "hdf5r", "stringr", "RColorBrewer", "useful", "readr", "factoextra", "Seurat", "caret", "class", "randomForest", "e1071")

for (i in pack)
  {
  cat(i, "\n")
  if (!require(i, character.only = TRUE)){
    install.packages(i, dependencies = TRUE)
    # install.packages(i, dependencies = TRUE, repos = "http://cran.us.r-project.org")
  }
  library(i, character.only = TRUE)
}

if (!requireNamespace("BiocManager", quietly = TRUE))
   install.packages("BiocManager")
# BiocManager::install(version = "3.16")

bioc <- c("rhdf5", "DESeq2", "MutationalPatterns", "BSgenome.Hsapiens.UCSC.hg19")

for (j in bioc)
{
  cat(j, "\n")
  if (!require(j, character.only = TRUE)){
    BiocManager::install(j, dependencies = TRUE)
  }
  library(j, character.only = TRUE)
}

cat("!!! All packages installed !!!")

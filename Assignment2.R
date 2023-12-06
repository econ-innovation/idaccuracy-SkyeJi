
# Assignment2
# Dec 06 2023

# Basic setting
getwd()
mydir <- "/Users/liji/Documents/git/idaccuracy-SkyeJi"
datadir <- "/Users/liji/Documents/git/data/assignment_idaccuracy/Aminer"
setwd(datadir)
list.files()
library(readr)

# list files
files_list <- list.files(pattern = "*.csv")

# Loop 
for (file in files_list) {
  file_data <- read.csv(file)
  df  <- rbind(df, file_data)
}

head(all_data)

# lapply 
?lapply
data_list <- lapply(files_list, read.csv)
df2 <- do.call(rbind, data_list)
head(df2)

# R scrip

#! shebang
# "#! /usr/bin/env Rscript"
# Rscript append_script.R /Users/liji/Documents/git/data/assignment_idaccuracy/Aminer

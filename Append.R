Append <- function(datadir){
  setwd(datadir)
  files_list <- list.files(pattern = "*.csv")
  data_list <- lapply(files_list, read.csv)
  df_new<- do.call(rbind, data_list)
  return(df_new)
}

args <- commandArgs(trailingOnly = TRUE)
datadir <- args[1]

result <- Append(datadir)
print("您的数据已经合并完成，以下是前六行")
head(result)
library(readMLData)

# adapt the paths to your computer
pathData <- "C:/Users/gfeng/Documents/datacamp/UCI_ML_DataFolders"
pathDescription <- "C:/Users/gfeng/Documents/datacamp/UCI_ML_DataDescription"

dsList <- prepareDSList(pathData, pathDescription)

selected <- c("statlog-german")

for (id in selected) {
  dsDownload(dsList, id, "wget", "links.txt")
}

download.file("http://archive.ics.uci.edu/ml/machine-learning-databases/statlog/german/german.data", destfile="grade.data")

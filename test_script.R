library(readMLData)

# adapt the paths to your computer
pathData <- "C:/Users/gfeng/Documents/datacamp/UCI_ML_DataFolders"
pathDescription <- "C:/Users/gfeng/Documents/datacamp/UCI_ML_DataDescription"

dsList <- prepareDSList(pathData, pathDescription)

cat("Read all available data sets and print their dimension.\n")

for (ind in which(dsList$available)) {
  dat <- dsRead(dsList, ind, responseName="class")
  cat(dsList$fullName[ind], "/", dsList$identification[ind], ":", dim(dat), "\n")
}

cat("Reread the data sets and compare actual column types\n")
cat("to the ones stored in dsList.\n")

for (id in getAvailable(dsList)) {
  dat <- dsRead(dsList, id, keepContents=TRUE)
  checkType(dsList, id, dat)
}
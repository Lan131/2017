# The following two commands remove any previously installed H2O packages for R.
if ("package:h2o" %in% search()) { detach("package:h2o", unload=TRUE) }
if ("h2o" %in% rownames(installed.packages())) { remove.packages("h2o") }

# Next, we download packages that H2O depends on.
if (! ("methods" %in% rownames(installed.packages()))) { install.packages("methods") }
if (! ("statmod" %in% rownames(installed.packages()))) { install.packages("statmod") }
if (! ("stats" %in% rownames(installed.packages()))) { install.packages("stats") }
if (! ("graphics" %in% rownames(installed.packages()))) { install.packages("graphics") }
if (! ("RCurl" %in% rownames(installed.packages()))) { install.packages("RCurl") }
if (! ("jsonlite" %in% rownames(installed.packages()))) { install.packages("jsonlite") }
if (! ("tools" %in% rownames(installed.packages()))) { install.packages("tools") }
if (! ("utils" %in% rownames(installed.packages()))) { install.packages("utils") }

# Now we download, install and initialize the H2O package for R.
install.packages("h2o", type="source", repos=(c("http://h2o-release.s3.amazonaws.com/h2o/master/3842/R")))
library(h2o)
h2o.shutdown(prompt=F)

localH2O = h2o.init(nthreads=-1)
h2o.removeAll()


quest=h2o.importFile("questions.csv",header=F,
                     col.names = c("Q","Flag"), 
                     col.types = c("String","String"))


tokenize=function(column)
{
  tokenized <- h2o.tokenize(column, " ")
  
  
  tokenized.lower <- h2o.tolower(tokenized)
  # remove short words (less than 2 characters)
  tokenized.lengths <- h2o.nchar(tokenized.lower)
  tokenized.filtered <- tokenized.lower[is.na(tokenized.lengths) || tokenized.lengths >= 2,]
  # remove words that contain numbers
  tokenized.words <- tokenized.filtered[h2o.grep("[0-9]", tokenized.filtered, invert = TRUE, output.logical = TRUE),]
  
  # remove stop words
  tokenized.words[is.na(tokenized.words) || (! tokenized.words %in% c("?","Who","What","Where","When","Why","How")),]
  return(tokenized.words)
}




tokenize_1=tokenize(quest$Q)
response=as.factor(as.h2o(quest$Flag))
tokenize_1=tokenize_1[-1,]
response=response[-1,]

w2v.model <- h2o.word2vec(tokenize_1, init_learning_rate=.1, epochs = 2)

Q_vec <- h2o.transform(w2v.model, tokenize_1, aggregate_method = "AVERAGE")
Q_vec=Q_vec[-1,]

data <- h2o.cbind(Q_vec,response)
#write.csv(as.data.frame(data),"workaround.csv")
splits = h2o.splitFrame(data, .8, seed=1234) #split into train and test
train  = h2o.assign(splits[[1]], "train.hex") # 80%
valid  = h2o.assign(splits[[2]], "valid.hex") # 20%


gbm.model <- h2o.gbm(x = names(words), y = "Flag",
                     training_frame = data.split[[1]], validation_frame = data.split[[2]])

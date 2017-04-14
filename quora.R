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
localH2O = h2o.init(nthreads=-1)
summary(quest)

quest=h2o.importFile("questions.csv",header=F,
                    col.names = c("idx","Q1","Q2","Flag"), 
                     col.types = c("int", "String","String","String"))

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



  F_t <- tokenize(as.character(as.h2o(quest$Flag)))
  job.title.vec <- h2o.transform(w2v, words, aggregate_method = "AVERAGE")
  h2o.predict(gbm, job.title.vec)


tokenize_1=tokenize(quest$Q1)
tokenize_2=tokenize(quest$Q2)
response=as.character(as.h2o(quest$Flag))

w2v.model <- h2o.word2vec(h2o.rbind(tokenize_1,tokenize_2), sent_sample_rate = 0, epochs = 10)

Q1_vec <- h2o.transform(w2v, tokenize_1, aggregate_method = "AVERAGE")
Q2_vec <- h2o.transform(w2v, tokenize_2, aggregate_method = "AVERAGE")

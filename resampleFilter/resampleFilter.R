library("RWeka", lib.loc="~/Library/R/3.4/library")
library("RWekajars", lib.loc="~/Library/R/3.4/library")
TraindataSecom<-read.arff("/Data/SourceCode/DataMiningMachineLearning/resampleFilter/data/SecomTrain.arff ")
colnames(TraindataSecom)[colnames(TraindataSecom)=="591"] <- "class"  
# set the target attribute name to "class" in the training file
TestdataSecom<-read.arff("H:/SecomTest.arff")
colnames(TestdataSecom)[colnames(TestdataSecom)=="591"] <- "class"  
# set the target attribute name to "class" in the testing file
actual<-TestdataSecom[, 591]  # get the class values from the test file

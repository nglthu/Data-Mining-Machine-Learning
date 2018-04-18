# Library
library("RWeka", lib.loc="~/Library/R/3.4/library")
library("RWekajars", lib.loc="~/Library/R/3.4/library")
library("rJava", lib.loc="~/Library/R/3.4/library")
# Data
colnames(TraindataSecom)[colnames(TraindataSecom)=="591"] <- "class"  
# set the target attribute name to "class" in the training file
TestdataSecom<-read.arff("/Data/SourceCode/DataMiningMachineLearning/resampleFilter/data/SecomTest.arff")
colnames(TestdataSecom)[colnames(TestdataSecom)=="591"] <- "class"  
# set the target attribute name to "class" in the testing file
actual<-TestdataSecom[, 591]  # get the class values from the test file

# specify the magnitude increase (Z)  in the size of the training file.
A <- c(100,200,300,400,500,600) 

for (i in A) # fill in the missing range for i
{ 
  # register the Resample filter
  resample <- make_Weka_filter("weka.filters.supervised.instance.Resample") 
  rebalancedDataSet<- resample(class ~., data = TraindataSecom, control = Weka_control(Z=i ), na.action=NULL ) 
  # control the size with the Z value; fill in the control clause above correctly
  # register the J48 classifier
  classifier <- J48(class ~ ., data = rebalancedDataSet, na.action=NULL) 
  # this evaluates accuracy of J48's predictions 
  pred<-predict(classifier,TestdataSecom, na.action=NULL) 
  P11<-0 # this will capture row 1 and column 1 of the confusion matrix
  P12<-0 # this will capture row 1 and column 2 of the confusion matrix
  P21<-0 #this will capture row 2 and column 1 of the confusion matrix
  P22<-0 #this will capture row 2 and column 2 of the confusion matrix
  for ( K in seq(1,523))
    
  { # loop for all 523 instances in the test file
    if(actual[K]==-1){
      if(pred[K]==-1){
        P11=P11+1
      }
      else
      {
        
        P12 = P12 +1
      }
    }
    else if (actual[K]==1){
      if(pred[K]==1){
        
        P22=P22+1
      }
      else
      {
        P21=P21+1	
        
      }
    }
  }
  # calculate precision on class 1
  Prec_1<-(P11/(P11+P21)) 
  # calculate precision on class 2
  Prec_2<-(P22/(P12+P22))  
  # calculate recall on class 1
  Recall_1<-(P11/(P11+P12)) 
  # calculate recall on class 2
  Recall_2<-(P22/(P21+P12)) 
  F_1<-(2*Prec_1*Recall_1/(Prec_1+Recall_1))
  F_2<-(2*Prec_2*Recall_2/(Prec_2+Recall_2))
  print(paste("F-Measure for class 1 is ",F_1))
  print(paste("F-Measure for class 2 is ", F_2)) # Print with the statement
  n_1 = P11+P12
  n_2 = P21+P22
  # calculate F weighted value
  F_weighted<-(F_1*n_1+F_2*n_2)/(n_1+n_2) 
  print(paste("F-weighted is ", F_weighted)) # Print with a statement
  # Add a print statement to check the value of A to know what sample size percentage performs best. 
}

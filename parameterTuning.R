IBk<- make_Weka_classifier("weka/classifiers/lazy/IBk") # register the IBK classifier
for (i in seq (1,19,2)) { 
  IBkModel <- IBk(class ~ ., data = labor, control = Weka_control(K=i),na.action=NULL) 
  # Use Weka_Control to alter the K parameter 
  #Note the na.action argument to specify no action for missing (NULL) value. This is essential as the dataset has missing values
  e <- evaluate_Weka_classifier(IBkModel, numFolds=2,na.action=NULL) # deploy (test) the model built
  print(e)
  print(e[1])
  t<-system.time(evaluate_Weka_classifier(IBkModel, numFolds=2)) # return elapsed cpu time
  print(t[[1]])
}

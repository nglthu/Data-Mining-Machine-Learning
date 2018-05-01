# Purpose of meta learning
The mixture of experts: combining several different models. 

# Data involved

[labour](/DataMiningMachineLearning/meta-learning/data/labor.arff)

[glass](/DataMiningMachineLearning/meta-learning/data/glass.arff)

# Collection of model


1.  dividing the training data into several segments (n) 

2. building a model on each segment

3. keeping the dataset as it is without splitting but using several different algorithms to build model

## Bagging and Boosting

Noted: Meta tab

### Bagging

+ Select Meta option of Bagging from the classify tab in Weka 
+ select J48 as the base learner 
```
Noted:
the default base learner is the REP tree method
```

+ change REP tree to J48
```
Noted:
+ click in the white space beside the “Choose” button 

+ specify J48 as the base learner from the screen that appears 
(use the “Choose” button from the new screen).
```
### Boosting

+ Select Meta option of *AdaBoostM1* from the classify tab in Weka 
+ select J48 as the base learner 
(note that the default base learner is the REP tree method). 
+ change REP tree to J48

### Test Result

**Dataset**|**J48 Accuracy**|**Bagging Accuracy (J48)**|**Boosting Accuracy (J48)**
:-----:|:-----:|:-----:|:-----:|
Labor|73.6842 %|85.9649 %|89.4737 %|
:-----:|:-----:|:-----:|:-----:|
Glass|66.8224 %	|74.2991 %|74.2991 %|


## Vote meta-learner

### Steps

1. meta-classifiers available, 
2. select the “Vote” meta-learner

```
Noted: The Vote meta-learner combines the output of two or more classifier models by choosing one of five voting rules. 
```
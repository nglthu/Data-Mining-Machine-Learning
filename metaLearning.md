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

### Bagging (Bootstrap aggregating)

#### Algorithms
1. Let n be the number of instances in the training data
2. For each of t iterations:
+Sample n instances with replacement from training data
+Apply the learning algorithm to the sample
+Store the resulting model
+Classification
3. For each of the t models:
+Predict class of instance using model
+Return class that has been predicted most often

#### Performance on Weka

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
#### Algorithms

Assign equal weight to each training instance
1. For each of t iterations:
+ Apply learning algorithm to weighted dataset and store resulting model
+ Compute error e of model on weighted dataset and store error
    If e=0 or e>=0.5 &rightarrow;Terminate model generation
2. For each instance in dataset:
    If instance classified correctly by model: &rightarrow;
            + Multiply weight of instance by e/(1-e)
            + Normalize weight of all instances
            + Classification
            + Assign weight of zero to all classes
3. For each of the t (or less) models:
            + Add –log(e/(1-e)) to weight of class predicted by model
            + Return class with highest weight

#### Performance on Weka
+ Select Meta option of *AdaBoostM1* from the classify tab in Weka 
+ select J48 as the base learner 
(note that the default base learner is the REP tree method). 
+ change REP tree to J48

### Test Result

#### Manual Run

**Dataset**|**J48 Accuracy**|**Bagging Accuracy (J48)**|**Boosting Accuracy (J48)**
:-----:|:-----:|:-----:|:-----:|
Labor|73.6842 %|85.9649 %|89.4737 %|
||||
Glass|66.8224 %	|74.2991 %|74.2991 %|

#### Experimenter

+ Running several experiments at the same time and comparing the results. 

+ Results:

**Dataset**|**(1) meta.Bag**|**(2) meta.**|
:-----:|:-----:|:-----:|
labor-neg-data|(100)   85.67|87.17 
||||
Glass|(100)   73.50	|75.15 


![TestOuput](https://github.com/nglthu/DataMiningMachineLearning/blob/master/meta-learning/results/testOuput.png)

## Vote meta-learner

### Steps

1. meta-classifiers available, 
2. select the “Vote” meta-learner

```
Noted: The Vote meta-learner combines the output of two or more classifier models by choosing one of five voting rules. 
```
### Tuning paramters
To get better results:

1. Bagsize Percent
2. Number Interaction
3. Out of bag eror
# Association Rule Mining
## Alogirthm
+ Find all sets of items (itemsets) that have support greater than the minimum support and then using the large itemsets to generate the desired rules that have confidence greater than the minimum confidence. 
+ The lift of a rule is the ratio of the observed support to that expected if X and Y were independent.  

Rule:
X&rightarrow;Y
&rightarrow; Support = frq(X,Y)/N
&rightarrow; Confidence = frq(X,Y) / frq(X)
&rightarrow; Lift = Support / (Support(X)xSupport(Y)) 
## Experimental 1

+ Data: weather.nominal.arff 
```
attributes: 5
Sum of weights: 14
Instances: 14
```

+ Apply the Apriori rule miner (Associate tab).
```
Apriori is an algorithm for frequent item set mining and association rule learning over transactional databases. 

+ Proceeds by identifying the frequent individual items in the database and 
+ Extending them to larger and larger item sets as long as those item sets appear sufficiently often in the database.
```

+ Run Apriori after setting the number of rules to 5 
```
numRules: 5

```

+ Observe the results produced. 
```
Apriori
=======

Minimum support: 0.25 (3 instances)
Minimum metric <confidence>: 0.9
Number of cycles performed: 15

Generated sets of large itemsets:

Size of set of large itemsets L(1): 12

Size of set of large itemsets L(2): 26

Size of set of large itemsets L(3): 4

Best rules found:

1. outlook=overcast 4 ==> play=yes 4    <conf:(1)> lift:(1.56) lev:(0.1) [1] conv:(1.43)
2. temperature=cool 4 ==> humidity=normal 4    <conf:(1)> lift:(2) lev:(0.14) [2] conv:(2)
3. humidity=normal windy=FALSE 4 ==> play=yes 4    <conf:(1)> lift:(1.56) lev:(0.1) [1] conv:(1.43)
4. outlook=sunny play=no 3 ==> humidity=high 3    <conf:(1)> lift:(2) lev:(0.11) [1] conv:(1.5)
5. outlook=sunny humidity=high 3 ==> play=no 3    <conf:(1)> lift:(2.8) lev:(0.14) [1] conv:(1.93)


```
+ Editing metrics of Apriori

* metric &rightarrow; Lift, 
* adjust the minimum metric value &rightarrow; 2.0 and 
* set the lowerBoundMinSupport &rightarrow; 0.05.  
```
Lift =prob(Y|X)/Supp(Y). 

Its emphasis is on rules with high confidence and low support items. 
The rules produced are much more diverse in nature than the ones with confidence as the metric.
```
## Experimental 2

J48

![alt text](https://github.com/nglthu/DataMiningMachineLearning/blob/master/associateRuleMining/treeView_J48.png)

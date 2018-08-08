# Introduction

The dataset is from Orange, a French telecommunication. The dataset includes the output of
upselling via inputs of the propensity of customers. The purpose of this mining process is to
evaluate all target variable to explain the upselling observations in order to get the more
profitable sales. This imbalanced dataset contains missing values, and has moderately high data
dimensionality as many features. Thus, this assignment is to identify data mining techniques in
order to score this large database. The general applied framework of processes are missing
values analysis, data balance, feature selection, parameters tuning and meta-learning. The goal
of these processes is aimed to achieve more than 90% of accuracy. Naïve Bayes, Decision Tree
(J48), K-Nearest Neighbor(IBk), Random Forest, and Support Vector Machine (SMO) are used.
Both oversampling techniques and Synthetic Minority Oversampling (SMOTE) are used to
handle the imbalance issues. It results that the features selected by wrapper subset evaluator
provide the best as it relied on the direct accuracy of the features and all possibilities each time
are evaluated. Finally, the bagging provides the best results which best options derived from
tuning to meta-learning is run.

# Problems
Orange is an imbalance dataset.

According to Weng (2008), there is a bias forwarding to the majority class when working on
the high imbalanced dataset. As an imbalance dataset with a lot of features, it always gets high
accuracy on an imbalanced data of majority class because the model always looks at the data
and decide the best thing to do that is based on the majority class and then achieve a high
accuracy. However, this result is biased because the high accuracy of data belongs to one class,
majority one, thus, minority class has been ignored or not taken into account.
Accuracy is not the only metric when working on imbalance dataset. It must consider other
metrics such as F-measure, ROC, AUC, and AUPRC to avoid any bias and to tell the more
truthful story on the imbalanced dataset.

The orange dataset consists of 1791 samples with 230 features. Each row/record presents a customer. The 230 features which are both numeric and nominal values present churn, appetency (from Var1 to Var 229), and upselling(Var230).
The upselling status is 1 and -1 with regards to customers who responding for upselling and
not responding for upselling respectively.
The customers, who respond for upselling, are only 8% (weighted only 135 out of 1667) while
the customers who did not respond for upselling are high, nearly 92% (weighted 1532 out of
1667).
The orange dataset contains training and testing datasets in which:

• Training: 1667 instance, 230 attributes
• Testing: 3333 instances, 230 attributes

Amongst 230 attributes, there are 20 attributes having 100% missing values and 153 attributes having more than 90% missing values.

# Purpose

Thus, this experiment aims to achieve the following:
• Handle the dataset to have more balanced data by different rebalancing techniques
• Try different algorithms to have spot-checking on the upselling outcome.
• Minimise the number of features but providing the truthful story of upselling situation.
• Finally, gain overall accuracy of 90% but more favour in the customers responding for
upselling (the minority class) observations.


# Reference 

Weng, C. G., & Poon, J. (2008, November). A new evaluation measure for imbalanced datasets.
In Proceedings of the 7th Australasian Data Mining Conference-Volume 87 (pp. 27-32). Australian
Computer Society, Inc..



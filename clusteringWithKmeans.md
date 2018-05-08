# Clustering With K means
## Goals
+ Data: zoo_data
+ Goals:
to identify some of the types of animals automatically through the use of data clustering.
## Experimental 1
+ SimpleKMeans algorithm (Cluster tab)

```
Given data set  through a certain number of  clusters (assume k clusters) fixed apriori. The  main  idea  is to define k centers, one for each cluster.
+
Let  X = {x1,x2,x3,……..,xn} be the set of data points and V = {v1,v2,…….,vc} be the set of centers.

1) Randomly select ‘c’ cluster centers.

2) Calculate the distance between each data point and cluster centers.

3) Assign the data point to the cluster center whose distance from the cluster center is minimum of all the cluster centers.

4) Recalculate the new cluster center using:  

vi = (1/ci) sum(j=1, ci) (xi)
 
 ci : number of data point in the ith clustering


where, ‘ci’ represents the number of data points in ith cluster.


5) Recalculate the distance between each data point and new obtained cluster centers.

6) If no data point was reassigned then stop, otherwise repeat from step 3).

```
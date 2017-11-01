library(readr)
wine <- read_csv("./winetype.csv")
summary(wine)


treeOutput <- tree(as.factor(Class) ~Alcohol+Malic_acid+Ash+Alcalinity_of_ash+Magnesium+Total_phenols+ Flavanoids+Nonflavanoid_phenols+ Proanthocyanins+ Color_intensity+ Hue+ diluted_wines+Proline)

summary(treeOutput)
plot(treeOutput)
text(treeOutput, all=TRUE)

#trainning set
set.seed(2)
train = sample(1: nrow(wine ), 100)
train
#testing set
wine.test = wine[- train, ]
wine.test
##
ClassF<- as.factor(Class)
ClassF.test = ClassF[- train]
ClassF.test

tree.wine = tree(ClassF ~ Alcohol+Malic_acid+Ash+Alcalinity_of_ash+Magnesium+Total_phenols+ Flavanoids+Nonflavanoid_phenols+ Proanthocyanins+ Color_intensity+ Hue+ diluted_wines+Proline, subset = train)
tree.pred = predict(tree.wine, wine.test, type ="class")
tree.wine
wine.test
table (tree.pred, ClassF.test)
###
set.seed(3)
cv.wine = cv.tree(tree.wine , FUN=prune.misclass)
names(cv.wine)
cv.wine
prune.wine = prune.misclass(tree.wine, best =4)
plot(prune.wine)
text(prune.wine, pretty = 0)
tree.pred = predict (prune.wine , wine.test , type ="class")
table(tree.pred , ClassF.test )

tree.pred
### test /Report which producer the bottle of wine came from
summary(wine)
test <- data.frame(Alcohol = 14.25, Malic_acid = 1.77, Ash = 2.45, Alcalinity_of_ash = 15.2, Magnesium = 112, Total_phenols = 3.27, Flavanoids = 3.38, Nonflavanoid_phenols = 0.34, Proanthocyanins = 1.97, Color_intensity
 = 6.75, Hue = 1.05, diluted_wines= 2.86, Proline = 1449)

test_pred <- predict(treeOutput, test)

test_pred <- predict(tree.wine, test)

test_pred


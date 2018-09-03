A short introduction to Principal Component Analysis (PCA) with an example.

PCA is essentially is a method of extracting important features in the form
of "components" for a large data set of variables. It allow us to summarise
many variable in linear combinations of them which reduces a high dimensional
data set of variables to a lower dimension. 

A principal component (pc) is a normalised linear combination of variables in a 
data set. For example, let's say we have p variables X = X1, ..., Xp, then
the first pc is Z1 = L1%*%X where L1 is the "loading" vector comprising of the
loadings l1,...,lp of the first pc. The loadings are constrained to have sum
of squares equal to one, to constrain variance. 

Z1 is a linear combination of the original variables which captures the maximum 
variance of the data set and determines its direction. It is a line in 
p-dimensional space closest to the observations that minimises the sum-of-
squared distance between the data points and the line.

The second pc, Z2 say, is again a linear combination of the original variables
which captures the remaining variance and is uncorrelated to Z1. If two 
components are uncorrelated then they have orthogonal directions.

..and so on.

For our example of PCA, we use data on wine (https://www.kaggle.com/akram24/wine-pca#Wine.csv).
The data set contains several variables assoicated with wines and contains
a customer segment variable which is categorical (3 levels). 
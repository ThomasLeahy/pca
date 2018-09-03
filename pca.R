# import data
wine_data <- read.csv('.../pca/Wine.csv', header = T)
head(wine_data, 3)

# apply a log transform to continuous variables
# (suggested in the literature "Modern applied statistics with S-PLUS")
log.wine <- log(wine_data[, 1:13])

# categorical variable as factor
wine.CS <- as.factor(wine_data[, 14])


# now we calculate the pc's, we normalise the data by 
# centering and scaling, could use other transformations
# e.g. Box-Cox
wine.pca <- prcomp(log.wine,
                   center = TRUE,
                   scale. = TRUE)

# shows the loadings for each of the pc's
print(wine.pca)

# basic plot of the standard deviations (variance explained
# by each pc)
plot(wine.pca, type = "l")


# summary show the proportion of variance explained by each component 
# and displays the cumilative propotion explained .
summary(wine.pca)

# Biplot showing the first two pc's, using Vince Vu's plotting package.
# library(devtools)
# install_github("ggbiplot", "vqv")
library(ggplot2)
library(ggbiplot)
g <- ggbiplot(wine.pca, obs.scale = 1, var.scale = 1, 
              groups = wine.CS, ellipse = TRUE, 
              circle = TRUE)
g <- g + scale_color_discrete(name = '')
g <- g + theme(legend.direction = 'horizontal', 
               legend.position = 'top')
print(g)

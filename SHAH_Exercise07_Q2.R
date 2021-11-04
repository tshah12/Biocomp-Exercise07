file=read.table("iris.csv",header = TRUE,",")
###print the last 2 rows in the last 2 columns to the R terminal
file[149:150,4:5]


## get the number of observations for each species included in the data set
species = file[file$Species=="setosa",]
obers = nrow(species)
sprintf("The number of observations for setosa is %s", obers)
species1 = file[file$Species=="versicolor",]
obers1 = nrow(species1)
sprintf("The number of observations for versicolor is %s", obers1)
species2 = file[file$Species=="virginica",]
obers2 = nrow(species2)
sprintf("The number of observations for virginica is %s", obers2)



###get rows with Sepal.Width > 3.5
width = file[file$Sepal.Width >3.5,]
width1 = subset(file, Sepal.Width >3.5)
print(width1)

###write the data for the species setosa to a comma-delimited file names 'setosa.csv'
write.csv(species,"setosa.csv", row.names = FALSE)
newdata <- read.csv("setosa.csv")
print(newdata)



##calculate the mean, minimum, and maximum of Petal.Length for observations from virginica
sp = file[file$Species=="versicolor",]
## for Max value
Max_petal_Length = max(sp$Petal.Length)
Min_petal_Length = min(sp$Petal.Length)
Mean_petal_Length = mean(sp$Petal.Length)



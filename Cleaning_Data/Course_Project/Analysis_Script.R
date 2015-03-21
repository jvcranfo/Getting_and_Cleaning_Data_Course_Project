library(plyr)

##Read Tables

xtest <- read.table("test/X_test.txt")
ytest <- read.table("test/y_test.txt")
subjecttest <- read.table("test/subject_test.txt")

xtrain <- read.table("train/X_train.txt")
ytrain <- read.table("train/y_train.txt")
subjecttrain <- read.table("train/subject_train.txt")

## Create Data Sets

ydata <- rbind(ytrain, ytest)
xdata <- rbind(xtrain, xtest)
subjectdata <- rbind(subjecttrain, subjecttest)

## Create Single Data Set

completedata <- cbind(ydata, xdata, subjectdata)

## Mean and Standard Deviations

features <- read.table("features.txt")
neededfeatures <- grep("-(mean|std)", features[,2])
xdata <- xdata[, neededfeatures]
xdata_names <- features[neededfeatures, 2]

## Descriptive Activity Names

activity_labels <- read.table("activity_labels.txt")
ydata <- activity_labels[ydata[, 1], 2]
ydata_names <- "activity"

## Descriptive Variable Names

subjectdata_names <- "subject"

## Create a second, independent tidy dataset with variable averages

dataaverages <- ddply(completedata, .(subjectdata_names, ydata_names), function(x)
colMeans(x[, 1:66]))
write.table(dataaverages, "dataaverages.txt", row.name=FALSE)



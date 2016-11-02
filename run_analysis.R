## Getting and Cleaning Data - Course Project

## Download data and unzip it in working directory
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile = "./projectfilesUCI_HAR_Dataset.zip", mode = 'wb')
unzip("projectfilesUCI_HAR_Dataset.zip")
subFolder <- "UCI HAR Dataset"

## Load needed packages
library(dplyr)

## read in the features and create a vector containing the column names
features <- read.table(file.path(subFolder,"features.txt"), 
                       header = FALSE)
xColNames <- features[,2]
## Remove the initial feature set from memory
rm(features)

## Select the column numbers which are mean and standard deviation columns
colSelect <- grep("mean\\(\\)|std\\(\\)",xColNames)

## Tidy up the column names
xColNames <- gsub("mean\\(\\)","Mean" , xColNames)
xColNames <- gsub("std\\(\\)","Std" , xColNames)
xColNames <- gsub("-","" , xColNames)
xColNames <- gsub("^t","time" , xColNames)
xColNames <- gsub("^f","frequency" , xColNames)
xColNames <- gsub("Acc","Accelerometer" , xColNames)
xColNames <- gsub("Gyro","Gyroscope" , xColNames)

## Read the base data for the train and test group
xTrain <- read.table(file.path(subFolder,"train/X_train.txt"), 
                     header = FALSE, 
                     col.names = xColNames, 
                     colClasses = "numeric")
xTest <- read.table(file.path(subFolder,"test/X_test.txt"), 
                    header = FALSE, 
                    col.names = xColNames, 
                    colClasses = "numeric")

## Merge the 2 sets together
xMerge <- rbind(xTrain, xTest)
## Remove the initial data sets from memory
rm(xTrain,xTest)

## Keep just the mean and standard deviation variables
xMerge <- xMerge[,colSelect]

## Load activity data 
yColNames <- "activity"
yTrain <- read.table(file.path(subFolder,"train/y_train.txt"), 
                     header = FALSE, 
                     col.names = yColNames, 
                     colClasses = "numeric")
yTest <- read.table(file.path(subFolder,"test/y_test.txt"), 
                    header = FALSE, 
                    col.names = yColNames, 
                    colClasses = "numeric")
## Merge both activity sets together
yMerge <- rbind(yTrain, yTest)
## Remove the initial activity sets from memory
rm(yTrain,yTest)

## Load the activity references
actColNames <- c("activityCode","activityName")
activityRef <- read.table(file.path(subFolder,"activity_labels.txt"), 
                          header = FALSE,
                          col.names = actColNames, 
                          colClasses = c("numeric","character"))

## Assign the activity names to the base data based on the activity codes
xMerge$activity <- factor(yMerge$activity, 
                          levels = activityRef$activityCode, 
                          labels = activityRef$activityName)

## Remove merged activity data from memory
rm(yMerge)

## Load subjects
subColNames <- "subject"
subjectTrain <- read.table(file.path(subFolder,"train/subject_train.txt"), 
                           header = FALSE, 
                           col.names = subColNames, 
                           colClasses = "numeric")
subjectTest <- read.table(file.path(subFolder,"test/subject_test.txt"), 
                          header = FALSE, 
                          col.names = subColNames, 
                          colClasses = "numeric")
subjectMerge <- rbind(subjectTrain, subjectTest)
## Remove the initial subject data from memory
rm(subjectTrain,subjectTest)

## Add the subject to the base data
xMerge$subject <- subjectMerge$subject
## Remove merge subject data from memory
rm(subjectMerge)

## Define groups to calculate the mean on
groups <- group_by(xMerge, subject, activity)
## Apply mean to all non group variables
summData <- summarise_all(groups, mean)
## Write data to a file with header info
write.table(summData,"tidy_data.txt", col.names = TRUE, row.names = FALSE)

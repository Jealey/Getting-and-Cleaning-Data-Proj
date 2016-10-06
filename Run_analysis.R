## Getting and Cleaning Data Project

#Load the libraries
library(plyr)
library(dplyr)
library(tidyr)

#Clean environment
rm(list=ls())

#Download and unzip data
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", destfile = "UCI_HAR.zip")
unzip("UCI_HAR.zip")

# Load activity labels and features
ACTIVITY <- read.table("UCI HAR/activity_labels.txt")
ACTIVITY[,2] <- as.character(ACTIVITY[,2])
features <- read.table("UCI HAR/features.txt")
features[,2] <- as.character(features[,2])

# Extracts only the measurements on the mean and standard deviation for each measurement
features_proj <- grep(".*mean.*|.*std.*", features[,2])
features_proj.names <- features[features_proj,2]
features_proj.names = gsub('-mean', 'Mean', features_proj.names)
features_proj.names = gsub('-std', 'Std', features_proj.names)
features_proj.names <- gsub('[-()]', '', features_proj.names)

# Load the datasets
train <- read.table("UCI HAR/train/X_train.txt")[features_proj]
trainActivities <- read.table("UCI HAR/train/Y_train.txt")
trainSubjects <- read.table("UCI HAR/train/subject_train.txt")
train <- cbind(trainSubjects, trainActivities, train)

test <- read.table("UCI HAR/test/X_test.txt")[features_proj]
testActivities <- read.table("UCI HAR/test/Y_test.txt")
testSubjects <- read.table("UCI HAR/test/subject_test.txt")
test <- cbind(testSubjects, testActivities, test)

# merge datasets and labels the dataset with descriptive variable names
Dataset <- rbind(train, test)
colnames(Dataset) <- c("SUBJECT", "ACTIVITY", features_proj.names)

# creates second tidy data set
Dataset$ACTIVITY <- factor(Dataset$ACTIVITY, levels = activityLabels[,1], labels = activityLabels[,2])
Dataset$SUBJECT <- as.factor(Dataset$SUBJECT)

Dataset.melted <- melt(Dataset, id = c("SUBJECT", "ACTIVITY"))
Dataset.mean <- dcast(Dataset.melted, SUBJECT + ACTIVITY ~ variable, mean)

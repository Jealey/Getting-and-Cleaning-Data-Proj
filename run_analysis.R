## Getting and Cleaning Data Project 
2 
 
3 #Load the libraries 
4 library(plyr) 
5 library(dplyr) 
6 library(tidyr) 
7 
 
8 #Clean environment 
9 rm(list=ls()) 
10 
 
11 #Download and unzip data 
12 download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", destfile = "UCI_HAR.zip") 
13 unzip("UCI_HAR.zip") 
14 
 
15 # Load activity labels and features 
16 ACTIVITY <- read.table("UCI HAR/activity_labels.txt") 
17 ACTIVITY[,2] <- as.character(ACTIVITY[,2]) 
18 features <- read.table("UCI HAR/features.txt") 
19 features[,2] <- as.character(features[,2]) 
20 
 
21 # Extracts only the measurements on the mean and standard deviation for each measurement 
22 features_proj <- grep(".*mean.*|.*std.*", features[,2]) 
23 features_proj.names <- features[features_proj,2] 
24 features_proj.names = gsub('-mean', 'Mean', features_proj.names) 
25 features_proj.names = gsub('-std', 'Std', features_proj.names) 
26 features_proj.names <- gsub('[-()]', '', features_proj.names) 
27 
 
28 # Load the datasets 
29 train <- read.table("UCI HAR/train/X_train.txt")[features_proj] 
30 trainActivities <- read.table("UCI HAR/train/Y_train.txt") 
31 trainSubjects <- read.table("UCI HAR/train/subject_train.txt") 
32 train <- cbind(trainSubjects, trainActivities, train) 
33 
 
34 test <- read.table("UCI HAR/test/X_test.txt")[features_proj] 
35 testActivities <- read.table("UCI HAR/test/Y_test.txt") 
36 testSubjects <- read.table("UCI HAR/test/subject_test.txt") 
37 test <- cbind(testSubjects, testActivities, test) 
38 
 
39 # merge datasets and labels the dataset with descriptive variable names 
40 Dataset <- rbind(train, test) 
41 colnames(Dataset) <- c("SUBJECT", "ACTIVITY", features_proj.names) 
42 
 
43 # creates second tidy data set 
44 Dataset$ACTIVITY <- factor(Dataset$ACTIVITY, levels = activityLabels[,1], labels = activityLabels[,2]) 
45 Dataset$SUBJECT <- as.factor(Dataset$SUBJECT) 
46 
 
47 Dataset.melted <- melt(Dataset, id = c("SUBJECT", "ACTIVITY")) 
48 Dataset.mean <- dcast(Dataset.melted, SUBJECT + ACTIVITY ~ variable, mean) 
49 
 
50 write.table(Dataset.mean, "tidy.txt", row.names = FALSE, quote = FALSE) 
​

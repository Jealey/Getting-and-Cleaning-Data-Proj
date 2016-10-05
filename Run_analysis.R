## Getting and Cleaning Data Project


library(tidy_proj)

files <- "getdata_dataset.zip"

## Download and unzip the dataset:
if (!file.exists(filename)){
fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip "
download.file(fileURL, files, method="curl")
} 
if (!file.exists("UCI HAR Dataset")) { 
unzip(files) 
}

# Read in data
features = read.table('./features.txt',header=FALSE); #imports features.txt 
ACTIVITY = read.table('./activity_labels.txt',header=FALSE); #imports activity_labels.txt
SUBJECT = read.table('./train/subject_train.txt',header=FALSE); #imports subject_train.txt 
x_Train = read.table('./train/x_train.txt',header=FALSE); #imports x_train.txt 
y_Train = read.table('./train/y_train.txt',header=FALSE); #imports y_train.txt 

# Load activity labels and features
ACTIVITY <- read.table("UCI HAR Dataset/activity_labels.txt")
ACTIVITY[,2] <- as.character(ACTIVITY[,2])
features <- read.table("UCI HAR Dataset/features.txt")
features[,2] <- as.character(features[,2])

# Extracts only the measurements on the mean and standard deviation for each measurement
features_proj <- grep(".*mean.*|.*std.*", features[,2])
features_proj.names <- features[features_proj,2]
features_proj.names = gsub('-mean', 'Mean', features_proj.names)
features_proj.names = gsub('-std', 'Std', features_proj.names)
features_proj.names <- gsub('[-()]', '', features_proj.names)

# Load the datasets
train <- read.table("UCI HAR Dataset/train/X_train.txt")[featuresWanted]
trainActivities <- read.table("UCI HAR Dataset/train/Y_train.txt")
trainSubjects <- read.table("UCI HAR Dataset/train/subject_train.txt")
train <- cbind(trainSubjects, trainActivities, train)

test <- read.table("UCI HAR Dataset/test/X_test.txt")[featuresWanted]
testActivities <- read.table("UCI HAR Dataset/test/Y_test.txt")
testSubjects <- read.table("UCI HAR Dataset/test/subject_test.txt")
test <- cbind(testSubjects, testActivities, test)

# merge datasets and labels the dataset with descriptive variable names
Dataset <- rbind(train, test)
colnames(Dataset) <- c("SUBJECT", "ACTIVITY", features_proj.names)

# creates second tidy data set
Dataset$ACTIVITY <- factor(Dataset$ACTIVITY, levels = activityLabels[,1], labels = activityLabels[,2])
Dataset$SUBJECT <- as.factor(Dataset$SUBJECT)

Dataset.melted <- melt(Dataset, id = c("SUBJECT", "ACTIVITY"))
Dataset.mean <- dcast(Dataset.melted, SUBJECT + ACTIVITY ~ variable, mean)

write.table(Dataset.mean, "tidy.txt", row.names = FALSE, quote = FALSE)
​

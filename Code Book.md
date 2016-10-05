#Code Book

##This code book modifies and updates the available codebooks with the data to indicate all the variables and summaries calculated, along with units, and any other relevant information in tidy.x.

#Identifiers

###SUBJECT- The ID given to the test subect
###ACTIVITY- The type of activity performed when the corresponding measurements were recorded


#Measurements

##- Features are normalized and bounded within [-1,1]. 
##- Each feature vector is a row on the 'X' and 'y' files. 
##- The units used for the accelerations (total and body) are 'g's (gravity of earth -> 9.80665 m/seg2). (Acc)
##- The gyroscope units are rad/seg. (Gyro)

###tBodyAcc_MeanX                 ###tBodyGyroJerkMag_Std
###fBodyAcc_MeanX
###fBodyAcc_MeanY
###fBodyAcc_MeanZ
###fBodyAcc_StdX
###fBodyAcc_StdY
###fBodyAcc_StdZ
###fBodyAcc_MeanFreqX
###fBodyAcc_MeanFreqY
###fBodyAcc_MeanFreqZ
###fBodyAccJerk_MeanX
###fBodyAccJerk_MeanY
###fBodyAccJerk_MeanZ
###fBodyAccJerk_StdX
###fBodyAccJerk_StdY
###fBodyAccJerk_StdZ
###fBodyAccJerk_MeanFreqX
###fBodyAccJerk_MeanFreqY
###fBodyAccJerk_MeanFreqZ
###fBodyGyro_MeanX
###fBodyGyro_MeanY
###fBodyGyro_MeanZ
###fBodyGyro_StdX
###fBodyGyro_StdY
###fBodyGyro_StdZ
###fBodyGyro_MeanFreqX
###fBodyGyro_MeanFreqY
###fBodyGyro_MeanFreqZ
###fBodyAccMag_Mean
###fBodyAccMag_Std
###fBodyAccMag_MeanFreq
###fBodyBodyAccJerkMag_Mean
###fBodyBodyAccJerkMag_Std
###fBodyBodyAccJerkMag_MeanFreq
###fBodyBodyGyroMag_Mean
###fBodyBodyGyroMag_Std
###fBodyBodyGyroMag_MeanFreq
###fBodyBodyGyroJerkMag_Mean
###fBodyBodyGyroJerkMag_Std
###fBodyBodyGyroJerkMag_MeanFreq
###tBodyAcc_MeanY
###tBodyAcc_MeanZ
###tBodyAcc_StdX
###tBodyAcc_StdY
###tBodyAcc_StdZ
###tGravityAcc_MeanX
###tGravityAcc_MeanY
###tGravityAcc_MeanZ
###tGravityAcc_StdX
###tGravityAcc_StdY
###tGravityAcc_StdZ
###tBodyAccJerk_MeanX
###tBodyAccJerk_MeanY
###tBodyAccJerk_MeanZ
###tBodyAccJerk_StdX
###tBodyAccJerk_StdY
###tBodyAccJerk_StdZ
###tBodyGyro_MeanX
###tBodyGyro_MeanY
###tBodyGyro_MeanZ
###tBodyGyro_StdX
###tBodyGyro_StdY
###tBodyGyro_StdZ
###tBodyGyroJerk_MeanX
###tBodyGyroJerk_MeanY
###tBodyGyroJerk_MeanZ
###tBodyGyroJerk_StdX
###tBodyGyroJerk_StdY
###tBodyGyroJerk_StdZ
###tBodyAccMag_Mean
###tBodyAccMag_Std
###tGravityAccMag_Mean
###tGravityAccMag_Std
###tBodyAccJerkMag_Mean
###tBodyAccJerkMag_Std
###tBodyGyroMag_Mean
###tBodyGyroMag_Std
###tBodyGyroJerkMag_Mean



#Activity Labels

###WALKING (1): subject was walking during the test
###WALKING_UPSTAIRS (2): subject was walking up a staircase during the test
###WALKING_DOWNSTAIRS (3): subject was walking down a staircase during the test
###SITTING (4): subject was sitting during the test
###STANDING (5): subject was standing during the test
###LAYING (6): subject was laying down during the test?
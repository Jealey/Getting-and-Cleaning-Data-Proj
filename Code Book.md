#Code Book

##This code book modifies and updates the available codebooks with the data to indicate all the variables and summaries calculated, along with units, and any other relevant information in tidy.x.

#Variables

###SUBJECT- The ID given to the test subject
###ACTIVITY- The type of activity performed when the corresponding measurements were recorded


#Summaries

##- Features are normalized and bounded within [-1,1]. 
##- Each feature vector is a row on the 'X' and 'y' files. 
##- The units used for the accelerations (total and body) are 'g's (gravity of earth -> 9.80665 m/seg2). (Acc)
##- The gyroscope units are rad/seg. (Gyro)

###tBodyAcc_MeanX                 
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
###tBodyGyroJerkMag_Std
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

# Data Set Information

###Data Set Information:

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.



##Activity Labels

###WALKING
###WALKING_UPSTAIRS
###WALKING_DOWNSTAIRS
###SITTING
###STANDING
###LAYING

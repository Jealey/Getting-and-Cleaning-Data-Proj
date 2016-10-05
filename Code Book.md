#Code Book

##This code book modifies and updates the available codebooks with the data to indicate all the variables and summaries calculated, along with units, and any other relevant information in tidy.x.

#Variables

###SUBJECT- The ID given to the test subject
###ACTIVITY- The type of activity performed when the corresponding measurements were recorded


#Features

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

#Features Info

##Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

The complete list of variables of each feature vector is available in 'features.txt'
​

# Data Set Information

###Data Set Information:

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.



##Activity Labels

###(1)WALKING
###(2)WALKING_UPSTAIRS
###(3)WALKING_DOWNSTAIRS
###(4)SITTING
###(5)STANDING
###(6)LAYING

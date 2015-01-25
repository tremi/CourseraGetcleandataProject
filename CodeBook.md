# Code book for Coursera / Get and Clean Data / Course project

## Description of measurements in data
This description is a reference from the feature description of original dataset. For more detailed description of original data, see the original file "features_info.txt" in original dataset which can be found :
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

##Description of data labels

### Subject code
Index number of subject being measured (index from 1 to 30)

### Activity label 
Description of subject's activity (e.g. Walking, Laying)

### Activity code
Index number of subject's activity

### Average of specific measurement
Data labels with "mean()" are averages of different measurements. Measurement definition are described more detailed in the following section.

Following averages of measurement are included in data:
* tBodyAcc-mean()-X 
* tBodyAcc-mean()-Y 
* tBodyAcc-mean()-Z 
* tGravityAcc-mean()-X 
* tGravityAcc-mean()-Y 
* tGravityAcc-mean()-Z 
* tBodyAccJerk-mean()-X 
* tBodyAccJerk-mean()-Y 
* tBodyAccJerk-mean()-Z 
* tBodyGyro-mean()-X 
* tBodyGyro-mean()-Y 
* tBodyGyro-mean()-Z 
* tBodyGyroJerk-mean()-X 
* tBodyGyroJerk-mean()-Y 
* tBodyGyroJerk-mean()-Z 
* tBodyAccMag-mean() 
* tGravityAccMag-mean() 
* tBodyAccJerkMag-mean() 
* tBodyGyroMag-mean() 
* tBodyGyroJerkMag-mean() 
* fBodyAcc-mean()-X 
* fBodyAcc-mean()-Y 
* fBodyAcc-mean()-Z 
* fBodyAccJerk-mean()-X 
* fBodyAccJerk-mean()-Y 
* fBodyAccJerk-mean()-Z 
* fBodyGyro-mean()-X 
* fBodyGyro-mean()-Y 
* fBodyGyro-mean()-Z 
* fBodyAccMag-mean() 
* fBodyBodyAccJerkMag-mean() 
* fBodyBodyGyroMag-mean() 
* fBodyBodyGyroJerkMag-mean() 

### Standard deviation of measurement
Data labels with "std()" are averages of different measurements. Measurement definition are described more detailed in the following section.

Following standard deviations of measurement are included in data:
* tBodyAcc-std()-X 
* tBodyAcc-std()-Y 
* tBodyAcc-std()-Z 
* tGravityAcc-std()-X 
* tGravityAcc-std()-Y 
* tGravityAcc-std()-Z
* tBodyAccJerk-std()-X 
* tBodyAccJerk-std()-Y 
* tBodyAccJerk-std()-Z 
* tBodyGyro-std()-X 
* tBodyGyro-std()-Y 
* tBodyGyro-std()-Z 
* tBodyGyroJerk-std()-X 
* tBodyGyroJerk-std()-Y 
* tBodyGyroJerk-std()-Z 
* tBodyAccMag-std() 
* tGravityAccMag-std() 
* tBodyAccJerkMag-std()  
* tBodyGyroMag-std() 
* tBodyGyroJerkMag-std() 
* fBodyAcc-std()-X 
* fBodyAcc-std()-Y 
* fBodyAcc-std()-Z 
* fBodyAccJerk-std()-X 
* fBodyAccJerk-std()-Y 
* fBodyAccJerk-std()-Z 
* fBodyGyro-std()-X 
* fBodyGyro-std()-Y 
* fBodyGyro-std()-Z 
* fBodyAccMag-std() 
* fBodyBodyAccJerkMag-std() 
* fBodyBodyGyroMag-std() 
* fBodyBodyGyroJerkMag-std()




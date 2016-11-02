#Analysis on Human Activity Recognition Using Smartphones

##Background
The analysis is performed on the data collected from the accelerometers of the Samsung Galaxy S smartphone.

A full description of the raw data is available at the site below:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The raw data for this analysis can be found here:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The README.txt and features_info.txt files contained with the dataset describe the setup of the experiment and how the collected data looks like.

##Analysis description
The goal of this analysis is to get a data set that contains average data of all the mean and standard deviation variables per subject and activity.
A subject is one of the 30 volunteers in the experiment.
Each subject performs activities and each time accelerometer and gyroscope measurements are registered. Activities are categorised in: Walking; Walking upstairs; Walking Downstairs; Sitting; Standing; Laying.

##Process steps
- The files X_train.txt and X_test.txt are loaded and merged into one set.
- From this total set just the mean and standard deviation variables are kept. The variables are identified by the strings 'mean()' or 'std()'. The file features.txt is used as the reference for the variable names.
- The files y_train.txt and y_test.txt are combined together as well to one set and containing the activity codes for each measurement. The file activity_labels.txt contains the relation from the activity codes to the activity names. Combining these files togethere a column is added to the measurement data with the activity name.
- The files subject_train.txt and subject_test.txt are merged to one set and contains the subject id for each measurement. This is added as a column to the measurment data.
- The new columns subject and activity are the group over which the means are calculated.
- For all other variables the mean is calculated.

##Changes in variable names
Several changes are made to the variable names to make them more readable
- 'mean()' has been replaced by 'Mean'
- 'std()' has been replaced by 'Std'
- a 't' at the first position is replaced by 'time'
- a 'f' at the first position is replaced by 'frequency'
- dashes ('-') are left out
- 'Acc' is written out fully as 'Accelerometer'
- 'Gyro' is written out fully as 'Gyroscope'

##Variable descriptions


|Variable|Description|
|------|------|
|subject|The volunteer on which the measurements are performed identified by a subject id. Ranging from 1 - 30|
|activity|Activity the subject performed during the measurement. Possible values are: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING|
|timeBodyAccelerometerMeanX|Mean of tBodyAcc-mean()-X calculated per subject and activity|
|timeBodyAccelerometerMeanY|Mean of tBodyAcc-mean()-Y calculated per subject and activity|
|timeBodyAccelerometerMeanZ|Mean of tBodyAcc-mean()-Z calculated per subject and activity|
|timeBodyAccelerometerStdX|Mean of tBodyAcc-std()-X calculated per subject and activity|
|timeBodyAccelerometerStdY|Mean of tBodyAcc-std()-Y calculated per subject and activity|
|timeBodyAccelerometerStdZ|Mean of tBodyAcc-std()-Z calculated per subject and activity|
|timeGravityAccelerometerMeanX|Mean of tGravityAcc-mean()-X calculated per subject and activity|
|timeGravityAccelerometerMeanY|Mean of tGravityAcc-mean()-Y calculated per subject and activity|
|timeGravityAccelerometerMeanZ|Mean of tGravityAcc-mean()-Z calculated per subject and activity|
|timeGravityAccelerometerStdX|Mean of tGravityAcc-std()-X calculated per subject and activity|
|timeGravityAccelerometerStdY|Mean of tGravityAcc-std()-Y calculated per subject and activity|
|timeGravityAccelerometerStdZ|Mean of tGravityAcc-std()-Z calculated per subject and activity|
|timeBodyAccelerometerJerkMeanX|Mean of tBodyAccJerk-mean()-X calculated per subject and activity|
|timeBodyAccelerometerJerkMeanY|Mean of tBodyAccJerk-mean()-Y calculated per subject and activity|
|timeBodyAccelerometerJerkMeanZ|Mean of tBodyAccJerk-mean()-Z calculated per subject and activity|
|timeBodyAccelerometerJerkStdX|Mean of tBodyAccJerk-std()-X calculated per subject and activity|
|timeBodyAccelerometerJerkStdY|Mean of tBodyAccJerk-std()-Y calculated per subject and activity|
|timeBodyAccelerometerJerkStdZ|Mean of tBodyAccJerk-std()-Z calculated per subject and activity|
|timeBodyGyroscopeMeanX|Mean of tBodyGyro-mean()-X calculated per subject and activity|
|timeBodyGyroscopeMeanY|Mean of tBodyGyro-mean()-Y calculated per subject and activity|
|timeBodyGyroscopeMeanZ|Mean of tBodyGyro-mean()-Z calculated per subject and activity|
|timeBodyGyroscopeStdX|Mean of tBodyGyro-std()-X calculated per subject and activity|
|timeBodyGyroscopeStdY|Mean of tBodyGyro-std()-Y calculated per subject and activity|
|timeBodyGyroscopeStdZ|Mean of tBodyGyro-std()-Z calculated per subject and activity|
|timeBodyGyroscopeJerkMeanX|Mean of tBodyGyroJerk-mean()-X calculated per subject and activity|
|timeBodyGyroscopeJerkMeanY|Mean of tBodyGyroJerk-mean()-Y calculated per subject and activity|
|timeBodyGyroscopeJerkMeanZ|Mean of tBodyGyroJerk-mean()-Z calculated per subject and activity|
|timeBodyGyroscopeJerkStdX|Mean of tBodyGyroJerk-std()-X calculated per subject and activity|
|timeBodyGyroscopeJerkStdY|Mean of tBodyGyroJerk-std()-Y calculated per subject and activity|
|timeBodyGyroscopeJerkStdZ|Mean of tBodyGyroJerk-std()-Z calculated per subject and activity|
|timeBodyAccelerometerMagMean|Mean of tBodyAccMag-mean() calculated per subject and activity|
|timeBodyAccelerometerMagStd|Mean of tBodyAccMag-std() calculated per subject and activity|
|timeGravityAccelerometerMagMean|Mean of tGravityAccMag-mean() calculated per subject and activity|
|timeGravityAccelerometerMagStd|Mean of tGravityAccMag-std() calculated per subject and activity|
|timeBodyAccelerometerJerkMagMean|Mean of tBodyAccJerkMag-mean() calculated per subject and activity|
|timeBodyAccelerometerJerkMagStd|Mean of tBodyAccJerkMag-std() calculated per subject and activity|
|timeBodyGyroscopeMagMean|Mean of tBodyGyroMag-mean() calculated per subject and activity|
|timeBodyGyroscopeMagStd|Mean of tBodyGyroMag-std() calculated per subject and activity|
|timeBodyGyroscopeJerkMagMean|Mean of tBodyGyroJerkMag-mean() calculated per subject and activity|
|timeBodyGyroscopeJerkMagStd|Mean of tBodyGyroJerkMag-std() calculated per subject and activity|
|frequencyBodyAccelerometerMeanX|Mean of fBodyAcc-mean()-X calculated per subject and activity|
|frequencyBodyAccelerometerMeanY|Mean of fBodyAcc-mean()-Y calculated per subject and activity|
|frequencyBodyAccelerometerMeanZ|Mean of fBodyAcc-mean()-Z calculated per subject and activity|
|frequencyBodyAccelerometerStdX|Mean of fBodyAcc-std()-X calculated per subject and activity|
|frequencyBodyAccelerometerStdY|Mean of fBodyAcc-std()-Y calculated per subject and activity|
|frequencyBodyAccelerometerStdZ|Mean of fBodyAcc-std()-Z calculated per subject and activity|
|frequencyBodyAccelerometerJerkMeanX|Mean of fBodyAccJerk-mean()-X calculated per subject and activity|
|frequencyBodyAccelerometerJerkMeanY|Mean of fBodyAccJerk-mean()-Y calculated per subject and activity|
|frequencyBodyAccelerometerJerkMeanZ|Mean of fBodyAccJerk-mean()-Z calculated per subject and activity|
|frequencyBodyAccelerometerJerkStdX|Mean of fBodyAccJerk-std()-X calculated per subject and activity|
|frequencyBodyAccelerometerJerkStdY|Mean of fBodyAccJerk-std()-Y calculated per subject and activity|
|frequencyBodyAccelerometerJerkStdZ|Mean of fBodyAccJerk-std()-Z calculated per subject and activity|
|frequencyBodyGyroscopeMeanX|Mean of fBodyGyro-mean()-X calculated per subject and activity|
|frequencyBodyGyroscopeMeanY|Mean of fBodyGyro-mean()-Y calculated per subject and activity|
|frequencyBodyGyroscopeMeanZ|Mean of fBodyGyro-mean()-Z calculated per subject and activity|
|frequencyBodyGyroscopeStdX|Mean of fBodyGyro-std()-X calculated per subject and activity|
|frequencyBodyGyroscopeStdY|Mean of fBodyGyro-std()-Y calculated per subject and activity|
|frequencyBodyGyroscopeStdZ|Mean of fBodyGyro-std()-Z calculated per subject and activity|
|frequencyBodyAccelerometerMagMean|Mean of fBodyAccMag-mean() calculated per subject and activity|
|frequencyBodyAccelerometerMagStd|Mean of fBodyAccMag-std() calculated per subject and activity|
|frequencyBodyBodyAccelerometerJerkMagMean|Mean of fBodyBodyAccJerkMag-mean() calculated per subject and activity|
|frequencyBodyBodyAccelerometerJerkMagStd|Mean of fBodyBodyAccJerkMag-std() calculated per subject and activity|
|frequencyBodyBodyGyroscopeMagMean|Mean of fBodyBodyGyroMag-mean() calculated per subject and activity|
|frequencyBodyBodyGyroscopeMagStd|Mean of fBodyBodyGyroMag-std() calculated per subject and activity|
|frequencyBodyBodyGyroscopeJerkMagMean|Mean of fBodyBodyGyroJerkMag-mean() calculated per subject and activity|
|frequencyBodyBodyGyroscopeJerkMagStd|Mean of fBodyBodyGyroJerkMag-std() calculated per subject and activity|

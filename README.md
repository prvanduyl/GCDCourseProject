# GCDCourseProject
Course Project of Getting and Cleaning Data
This README file describes briefly what scripts are used to 

##Scripts
run_analysis.R

##Process Description
The script run_analysis.R performs the below steps
- Download the data and unzip it in the working directory
- From the features.txt file the column names are extracted and determined is which columns are mean() and std() columns
- The column names are cleaned up to make them more readable
- The training and test data sets (X_train.txt and X_test.txt) are loaded and merged together to one data set
- The merged set is filtered for the columns that are used for the analysis (determined earlier)
- The activity data sets for the training and test groups (y_train.txt and y_test.txt) are loaded and merged into one set
- Based on the activity_labels.txt file (combined with above activity data) the activity names are added to the initial data set
- The subject data sets (subject_train.txt and subject_test.txt) are loaded and merged into one set; This data is also added to the initial data set
- The data is grouped by subject and activity and for the other variables the mean is calculated
- As a last step the calculated means are written to the file tidy_data.txt

During the whole process data sets are removed from memory whenever they are not needed anymore.
This way the memory is kept available for the next calculation.

## Detailed information
CodeBook.md describes in more detail the dataset delivered and the transformations applied to the data
# INTRODUCTION
the script r_analysis.R does the following five steps whcih where explained in the project file.

* 1.Merges the training and the test sets to create one data set.
* 2.Extracts only the measurements on the mean and standard deviation for each measurement.
* 3.Uses descriptive activity names to name the activities in the data set
* 4.Appropriately labels the data set with descriptive variable names.
* 5.From the data set in step 4, creates a second, independent tidy data set with the average of 
  each variable for each activity and each subject.
  
# Variables

the following variables are used inside the r_analysis.R file.

* x_train , Y_train, X_test, Y_test, subject_train, subject_test are the data files.
* x_data, Y_data and subject_data are obtained by combining the train and test data set respectively.
* features contains all the correct names.
* activity contains all the names for the different ways the data was collected.
* complete_data contains the combined data of X_data, Y_data, subject_data.
* tidy_data.txt is constructed using write.table function which is our final tidy data set.

## Load and Read the train data into R

X_train <- read.table("train/X_train.txt")
Y_train <- read.table("train/y_train.txt")

##Load and Read the test data into R

X_test <- read.table("test/X_test.txt")
Y_test <- read.table("test/y_test.txt")

##Form a Final data-sets combining train and test data-set

X_data <- rbind(X_train, X_test)
Y_data <- rbind(Y_train, Y_test)

##Load and Read the subject data and form a new dataset combining test & train

subject_train <- read.table("train/subject_train.txt")
subject_test <- read.table("test/subject_test.txt")
subject_data <- rbind(subject_train, subject_test)

##Load activity and feature data into R

activity <- read.table("activity_labels.txt")
features <- read.table("features.txt")

##Extract the mean and standard deviation values

mean_std <- grep("-(mean|std)\\()", features[, 2])

##Subset these values

X_data <- X_data[, mean_std]

##Correct names of X_data

names(X_data) <- features[mean_std, 2]

##Subset Y_data using activity

Y_data[, 1] <- activity[Y_data[, 1], 2]

##Correct names of Y_data and subject_data

names(Y_data) <- "Activity"
names(subject_data) <- "Subject"

##Form a new data by combining the exsisting data-sets

complete_data <- cbind(subject_data, Y_data, X_data)

##Create a second, independent tidy data set with the average of each variable
##for each activity and each subject

answer_data <- ddply(complete_data, .(Subject, Activity), function(x) colMeans(x[, 3:66]))

##write the new data into a independent file

write.table(answer_data, file = "tidy_data.txt", row.names = FALSE)
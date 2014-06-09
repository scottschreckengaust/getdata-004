# Clear up everything.
rm(list=ls())

# Download and unzip the raw data.
temp <- tempfile()
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", temp, method="curl")
unzip(temp) 
unlink(temp)

# Ready the activity labels.
activity_labels <- read.delim("UCI HAR Dataset/activity_labels.txt", header=FALSE, sep=" ")
names(activity_labels)[1] <- "activity_label"
names(activity_labels)[2] <- "activity"

# Load the test data.
x_test <- read.fwf(file="UCI HAR Dataset/test/X_test.txt", header=FALSE, widths=rep.int(16,128))
y_test <- read.delim(file="UCI HAR Dataset/test/y_test.txt", header=FALSE)
names(y_test)[1] <- "activity_label"
subject_test <- read.delim(file="UCI HAR Dataset/test/subject_test.txt", header=FALSE)
names(subject_test)[1] <- "subject"
xy_test <- cbind(y_test, x_test)
test_test <- cbind(subject_test, xy_test)

# Load the training data.
x_train <- read.fwf(file="UCI HAR Dataset/train/X_train.txt", header=FALSE, widths=rep.int(16,128))
y_train <- read.delim(file="UCI HAR Dataset/train/y_train.txt", header=FALSE)
names(y_train)[1] <- "activity_label"
subject_train <- read.delim(file="UCI HAR Dataset/train/subject_train.txt", header=FALSE)
names(subject_train)[1] <- "subject"
xy_train <- cbind(y_train, x_train)
test_train <- cbind(subject_train, xy_train)

# Combine the test and training data.
test <- rbind(test_test, test_train)
test <- merge(test, activity_labels, by=c("activity_label"))

# Remove unused data.
rm(x_test, y_test, x_train, y_train, 
   xy_test, xy_train, subject_train, subject_test, 
   activity_labels, test_test, test_train, temp)
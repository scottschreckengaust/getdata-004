# Clear up everything.
rm(list=ls())

# Download and unzip the raw data.
temp <- tempfile()
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", temp, method="curl")
unzip(temp) 
unlink(temp)
rm(temp)

# Get the names of the features and those columns to keep.
features <- read.table("UCI HAR Dataset/features.txt")
feature_names <- as.character(features[,2])
rm(features)
features_to_keep <- feature_names[grepl("mean()|std()", feature_names)]

# Ready the activity labels.
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")
names(activity_labels)[1] <- "activity_label"
names(activity_labels)[2] <- "activity"

# Load the test data.
x_test <- read.table(file="UCI HAR Dataset/test/X_test.txt")
names(x_test) <- feature_names
x_test <- x_test[,features_to_keep]

y_test <- read.table(file="UCI HAR Dataset/test/y_test.txt")
names(y_test)[1] <- "activity_label"
y_test <- merge(y_test, activity_labels, by=c("activity_label"))

subject_test <- read.table(file="UCI HAR Dataset/test/subject_test.txt")
names(subject_test)[1] <- "subject"
xy_test <- cbind(y_test, x_test)
test_test <- cbind(subject_test, xy_test)
rm(x_test,y_test,subject_test,xy_test)

# Load the training data.
x_train <- read.table(file="UCI HAR Dataset/train/X_train.txt")
names(x_train) <- feature_names
x_train <- x_train[,features_to_keep]

y_train <- read.table(file="UCI HAR Dataset/train/y_train.txt")
names(y_train)[1] <- "activity_label"
y_train <- merge(y_train, activity_labels, by=c("activity_label"))

subject_train <- read.table(file="UCI HAR Dataset/train/subject_train.txt")
names(subject_train)[1] <- "subject"
xy_train <- cbind(y_train, x_train)
test_train <- cbind(subject_train, xy_train)
rm(x_train,y_train,subject_train,xy_train)

# Combine the test and training data.
test <- rbind(test_test, test_train)
rm(test_test, test_train)
rm(activity_labels)
rm(features_to_keep,feature_names)

# Write the Tidy output.
write.table(x=test, file="tidy.txt")
rm(test)

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
features_to_keep <- feature_names[grepl("mean[(][)]|std[(][)]", feature_names)]

features_renames <- gsub("()", "", 
        gsub("Freq", "Frequency", 
        gsub("-X", "XAxis",
        gsub("-Y", "YAxis",
        gsub("-Z", "ZAxis",
        gsub("-std()", "StandardDeviation",
        gsub("-mean()", "Mean",
        gsub("Jerk", "JerkSignal",
        gsub("Gyro", "Gyroscope",
        gsub("Mag", "Magnitude",
        gsub("Acc", "Acceleration",
        gsub("^f", "FourierTransform",
        gsub("^t","TimeDomain", features_to_keep)))))))))))), fixed=TRUE)
rm(features)

# Ready the activity labels.
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")
names(activity_labels)[1] <- "activity_label"
names(activity_labels)[2] <- "activity"

# Load the test data.
x_test <- read.table(file="UCI HAR Dataset/test/X_test.txt")
names(x_test) <- feature_names

# Just keep the mean() and std() values.
x_test <- x_test[,features_to_keep]

# Rename them so they are human readable and fully descriptive.
names(x_test) <- features_renames

# Load the activity.
y_test <- read.table(file="UCI HAR Dataset/test/y_test.txt")
names(y_test)[1] <- "activity_label"

# Load what subject performed the record.
subject_test <- read.table(file="UCI HAR Dataset/test/subject_test.txt")
names(subject_test)[1] <- "subject"

# Column bind the subject and activity.
test <- cbind(subject_test, y_test)

# Add the human readable version of the activity.
test <- merge(test, activity_labels, by=c("activity_label"))

# Add the data.
test <- cbind(test, x_test)

######################
# Load the train data.
x_train <- read.table(file="UCI HAR Dataset/train/X_train.txt")
names(x_train) <- feature_names

# Just keep the mean() and std() values.
x_train <- x_train[,features_to_keep]

# Rename them so they are human readable and fully descriptive.
names(x_train) <- features_renames

# Load the activity.
y_train <- read.table(file="UCI HAR Dataset/train/y_train.txt")
names(y_train)[1] <- "activity_label"

# Load what subject performed the record.
subject_train <- read.table(file="UCI HAR Dataset/train/subject_train.txt")
names(subject_train)[1] <- "subject"

# Column bind the subject and activity.
train <- cbind(subject_train, y_train)

# Add the human readable version of the activity.
train <- merge(train, activity_labels, by=c("activity_label"))

# Add the data.
train <- cbind(train, x_train)

# Combine the training and test data.
combined <- rbind(train, test)

# Summarize the data using the average of each measure by subject and activity.
library(plyr)
tidy <- ddply(combined, .(subject, activity), summarize, 
      TimeDomainBodyAccelerationMeanXAxis=mean(TimeDomainBodyAccelerationMeanXAxis),
      TimeDomainBodyAccelerationMeanYAxis=mean(TimeDomainBodyAccelerationMeanYAxis),
      TimeDomainBodyAccelerationMeanZAxis=mean(TimeDomainBodyAccelerationMeanZAxis),
      TimeDomainBodyAccelerationStandardDeviationXAxis=mean(TimeDomainBodyAccelerationStandardDeviationXAxis),
      TimeDomainBodyAccelerationStandardDeviationYAxis=mean(TimeDomainBodyAccelerationStandardDeviationYAxis),
      TimeDomainBodyAccelerationStandardDeviationZAxis=mean(TimeDomainBodyAccelerationStandardDeviationZAxis),
      TimeDomainGravityAccelerationMeanXAxis=mean(TimeDomainGravityAccelerationMeanXAxis),
      TimeDomainGravityAccelerationMeanYAxis=mean(TimeDomainGravityAccelerationMeanYAxis),
      TimeDomainGravityAccelerationMeanZAxis=mean(TimeDomainGravityAccelerationMeanZAxis),
      TimeDomainGravityAccelerationStandardDeviationXAxis=mean(TimeDomainGravityAccelerationStandardDeviationXAxis),
      TimeDomainGravityAccelerationStandardDeviationYAxis=mean(TimeDomainGravityAccelerationStandardDeviationYAxis),
      TimeDomainGravityAccelerationStandardDeviationZAxis=mean(TimeDomainGravityAccelerationStandardDeviationZAxis),
      TimeDomainBodyAccelerationJerkSignalMeanXAxis=mean(TimeDomainBodyAccelerationJerkSignalMeanXAxis),
      TimeDomainBodyAccelerationJerkSignalMeanYAxis=mean(TimeDomainBodyAccelerationJerkSignalMeanYAxis),
      TimeDomainBodyAccelerationJerkSignalMeanZAxis=mean(TimeDomainBodyAccelerationJerkSignalMeanZAxis),
      TimeDomainBodyAccelerationJerkSignalStandardDeviationXAxis=mean(TimeDomainBodyAccelerationJerkSignalStandardDeviationXAxis),
      TimeDomainBodyAccelerationJerkSignalStandardDeviationYAxis=mean(TimeDomainBodyAccelerationJerkSignalStandardDeviationYAxis),
      TimeDomainBodyAccelerationJerkSignalStandardDeviationZAxis=mean(TimeDomainBodyAccelerationJerkSignalStandardDeviationZAxis),
      TimeDomainBodyGyroscopeMeanXAxis=mean(TimeDomainBodyGyroscopeMeanXAxis),
      TimeDomainBodyGyroscopeMeanYAxis=mean(TimeDomainBodyGyroscopeMeanYAxis),
      TimeDomainBodyGyroscopeMeanZAxis=mean(TimeDomainBodyGyroscopeMeanZAxis),
      TimeDomainBodyGyroscopeStandardDeviationXAxis=mean(TimeDomainBodyGyroscopeStandardDeviationXAxis),
      TimeDomainBodyGyroscopeStandardDeviationYAxis=mean(TimeDomainBodyGyroscopeStandardDeviationYAxis),
      TimeDomainBodyGyroscopeStandardDeviationZAxis=mean(TimeDomainBodyGyroscopeStandardDeviationZAxis),
      TimeDomainBodyGyroscopeJerkSignalMeanXAxis=mean(TimeDomainBodyGyroscopeJerkSignalMeanXAxis),
      TimeDomainBodyGyroscopeJerkSignalMeanYAxis=mean(TimeDomainBodyGyroscopeJerkSignalMeanYAxis),
      TimeDomainBodyGyroscopeJerkSignalMeanZAxis=mean(TimeDomainBodyGyroscopeJerkSignalMeanZAxis),
      TimeDomainBodyGyroscopeJerkSignalStandardDeviationXAxis=mean(TimeDomainBodyGyroscopeJerkSignalStandardDeviationXAxis),
      TimeDomainBodyGyroscopeJerkSignalStandardDeviationYAxis=mean(TimeDomainBodyGyroscopeJerkSignalStandardDeviationYAxis),
      TimeDomainBodyGyroscopeJerkSignalStandardDeviationZAxis=mean(TimeDomainBodyGyroscopeJerkSignalStandardDeviationZAxis),
      TimeDomainBodyAccelerationMagnitudeMean=mean(TimeDomainBodyAccelerationMagnitudeMean),
      TimeDomainBodyAccelerationMagnitudeStandardDeviation=mean(TimeDomainBodyAccelerationMagnitudeStandardDeviation),
      TimeDomainGravityAccelerationMagnitudeMean=mean(TimeDomainGravityAccelerationMagnitudeMean),
      TimeDomainGravityAccelerationMagnitudeStandardDeviation=mean(TimeDomainGravityAccelerationMagnitudeStandardDeviation),
      TimeDomainBodyAccelerationJerkSignalMagnitudeMean=mean(TimeDomainBodyAccelerationJerkSignalMagnitudeMean),
      TimeDomainBodyAccelerationJerkSignalMagnitudeStandardDeviation=mean(TimeDomainBodyAccelerationJerkSignalMagnitudeStandardDeviation),
      TimeDomainBodyGyroscopeMagnitudeMean=mean(TimeDomainBodyGyroscopeMagnitudeMean),
      TimeDomainBodyGyroscopeMagnitudeStandardDeviation=mean(TimeDomainBodyGyroscopeMagnitudeStandardDeviation),
      TimeDomainBodyGyroscopeJerkSignalMagnitudeMean=mean(TimeDomainBodyGyroscopeJerkSignalMagnitudeMean),
      TimeDomainBodyGyroscopeJerkSignalMagnitudeStandardDeviation=mean(TimeDomainBodyGyroscopeJerkSignalMagnitudeStandardDeviation),
      FourierTransformBodyAccelerationMeanXAxis=mean(FourierTransformBodyAccelerationMeanXAxis),
      FourierTransformBodyAccelerationMeanYAxis=mean(FourierTransformBodyAccelerationMeanYAxis),
      FourierTransformBodyAccelerationMeanZAxis=mean(FourierTransformBodyAccelerationMeanZAxis),
      FourierTransformBodyAccelerationStandardDeviationXAxis=mean(FourierTransformBodyAccelerationStandardDeviationXAxis),
      FourierTransformBodyAccelerationStandardDeviationYAxis=mean(FourierTransformBodyAccelerationStandardDeviationYAxis),
      FourierTransformBodyAccelerationStandardDeviationZAxis=mean(FourierTransformBodyAccelerationStandardDeviationZAxis),
      FourierTransformBodyAccelerationJerkSignalMeanXAxis=mean(FourierTransformBodyAccelerationJerkSignalMeanXAxis),
      FourierTransformBodyAccelerationJerkSignalMeanYAxis=mean(FourierTransformBodyAccelerationJerkSignalMeanYAxis),
      FourierTransformBodyAccelerationJerkSignalMeanZAxis=mean(FourierTransformBodyAccelerationJerkSignalMeanZAxis),
      FourierTransformBodyAccelerationJerkSignalStandardDeviationXAxis=mean(FourierTransformBodyAccelerationJerkSignalStandardDeviationXAxis),
      FourierTransformBodyAccelerationJerkSignalStandardDeviationYAxis=mean(FourierTransformBodyAccelerationJerkSignalStandardDeviationYAxis),
      FourierTransformBodyAccelerationJerkSignalStandardDeviationZAxis=mean(FourierTransformBodyAccelerationJerkSignalStandardDeviationZAxis),
      FourierTransformBodyGyroscopeMeanXAxis=mean(FourierTransformBodyGyroscopeMeanXAxis),
      FourierTransformBodyGyroscopeMeanYAxis=mean(FourierTransformBodyGyroscopeMeanYAxis),
      FourierTransformBodyGyroscopeMeanZAxis=mean(FourierTransformBodyGyroscopeMeanZAxis),
      FourierTransformBodyGyroscopeStandardDeviationXAxis=mean(FourierTransformBodyGyroscopeStandardDeviationXAxis),
      FourierTransformBodyGyroscopeStandardDeviationYAxis=mean(FourierTransformBodyGyroscopeStandardDeviationYAxis),
      FourierTransformBodyGyroscopeStandardDeviationZAxis=mean(FourierTransformBodyGyroscopeStandardDeviationZAxis),
      FourierTransformBodyAccelerationMagnitudeMean=mean(FourierTransformBodyAccelerationMagnitudeMean),
      FourierTransformBodyAccelerationMagnitudeStandardDeviation=mean(FourierTransformBodyAccelerationMagnitudeStandardDeviation),
      FourierTransformBodyBodyAccelerationJerkSignalMagnitudeMean=mean(FourierTransformBodyBodyAccelerationJerkSignalMagnitudeMean),
      FourierTransformBodyBodyAccelerationJerkSignalMagnitudeStandardDeviation=mean(FourierTransformBodyBodyAccelerationJerkSignalMagnitudeStandardDeviation),
      FourierTransformBodyBodyGyroscopeMagnitudeMean=mean(FourierTransformBodyBodyGyroscopeMagnitudeMean),
      FourierTransformBodyBodyGyroscopeMagnitudeStandardDeviation=mean(FourierTransformBodyBodyGyroscopeMagnitudeStandardDeviation),
      FourierTransformBodyBodyGyroscopeJerkSignalMagnitudeMean=mean(FourierTransformBodyBodyGyroscopeJerkSignalMagnitudeMean),
      FourierTransformBodyBodyGyroscopeJerkSignalMagnitudeStandardDeviation=mean(FourierTransformBodyBodyGyroscopeJerkSignalMagnitudeStandardDeviation)
)

# Write the Tidy output.
write.table(x=tidy, file="tidy.txt")
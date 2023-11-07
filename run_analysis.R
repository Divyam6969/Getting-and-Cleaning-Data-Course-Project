# Load required library
library(dplyr)

# Download the dataset
if(!file.exists("./getcleandata")) {
  dir.create("./getcleandata")
}
fileurl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileurl, destfile = "./getcleandata/projectdataset.zip")

# Unzip the dataset
unzip(zipfile = "./getcleandata/projectdataset.zip", exdir = "./getcleandata")

# 1. Merge the training and test datasets
# 1.1 Reading files

# Reading training datasets
x_train <- read.table("./getcleandata/UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./getcleandata/UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("./getcleandata/UCI HAR Dataset/train/subject_train.txt")

# Reading test datasets
x_test <- read.table("./getcleandata/UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./getcleandata/UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("./getcleandata/UCI HAR Dataset/test/subject_test.txt")

# Reading feature vector
features <- read.table("./getcleandata/UCI HAR Dataset/features.txt")

# Reading activity labels
activityLabels <- read.table("./getcleandata/UCI HAR Dataset/activity_labels.txt")
colnames(activityLabels) <- c("activityID", "activityType")

# 1.2 Assigning variable names
colnames(x_train) <- features[, 2]
colnames(y_train) <- "activityID"
colnames(subject_train) <- "subjectID"

colnames(x_test) <- features[, 2]
colnames(y_test) <- "activityID"
colnames(subject_test) <- "subjectID"

# 1.3 Merging all datasets into one set
alltrain <- cbind(y_train, subject_train, x_train)
alltest <- cbind(y_test, subject_test, x_test)
finaldataset <- rbind(alltrain, alltest)

# 2. Extracting only the measurements on the mean and sd for each measurement
mean_and_std <- grepl("activityID|subjectID|mean\\(\\)|std\\(\\)", colnames(finaldataset))
setforMeanandStd <- finaldataset[, mean_and_std]

# 3. Use descriptive activity names
setWithActivityNames <- merge(setforMeanandStd, activityLabels, by = "activityID", all.x = TRUE)

# 4. Label the data set with descriptive variable names
colnames(setWithActivityNames) <- gsub("^t", "time", colnames(setWithActivityNames))
colnames(setWithActivityNames) <- gsub("^f", "frequency", colnames(setWithActivityNames))
colnames(setWithActivityNames) <- gsub("Acc", "Accelerometer", colnames(setWithActivityNames))
colnames(setWithActivityNames) <- gsub("Gyro", "Gyroscope", colnames(setWithActivityNames))
colnames(setWithActivityNames) <- gsub("Mag", "Magnitude", colnames(setWithActivityNames))
colnames(setWithActivityNames) <- gsub("BodyBody", "Body", colnames(setWithActivityNames))

# 5. Creating a second, independent tidy data set with the avg of each variable for each activity and subject
tidySet <- setWithActivityNames %>%
  group_by(subjectID, activityID, activityType) %>%
  summarise_all(mean)

# Writing second tidy data set into a txt file
write.table(tidySet, "tidySet.txt", row.names = FALSE)


#original work by github.com/divyam6969
# Project Code Book

This document serves as the code book for the project. It provides essential information on how to access the source data, execute the R script, and understand the variables and transformations applied in the process.

## How to Access the Data:

1. **Download Data:**
   - Download the source data from the following link: [Human Activity Recognition Using Smartphones Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).
   - Unzip the downloaded file into the working directory of R Studio.

2. **Execute the R Script:**
   - Run the R script named "run_analysis.R" to perform the necessary operations on the data.

## About the Source Data:

The source data for this project originates from the Human Activity Recognition Using Smartphones Data Set. A comprehensive description of the dataset can be found at the official site: [Human Activity Recognition Using Smartphones Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).
Direct link to the data: [UCI HAR Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

## About the R Script:

The R script, "run_analysis.R," performs the following steps as per the assigned task of the coursework:

1. **Data Reading and Merging:**
   - Reads the training and testing datasets along with feature vectors and activity labels.
   - Assigns variable names.
   - Merges all data into one dataset.

2. **Extracting Relevant Measurements:**
   - Selects only the measurements corresponding to mean and standard deviation for each feature.

3. **Descriptive Activity Names:**
   - Uses descriptive activity names to label the activities in the dataset.

4. **Descriptive Variable Names:**
   - Appropriately labels the dataset with descriptive variable names.

5. **Creating Tidy Data Set:**
   - Generates a second, independent tidy data set with the average of each variable for each activity and each subject.
   - Writes the resulting tidy data set into a text file.

**Note:** The code assumes that all data files are present in the same folder, uncompressed, and with their original names intact.

## About Variables:

- `x_train`, `y_train`, `x_test`, `y_test`, `subject_train`, and `subject_test` contain data from the downloaded files.
- `x_data`, `y_data`, and `subject_data` merge the above datasets for further analysis.
- `features` contains the correct names for the `x_data` dataset, applied to the column names for detailed reference.

Feel free to refer to this document for a clear understanding of the project's data sources, processing steps, and variables used in the analysis.

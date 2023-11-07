# Peer-graded Assignment: Getting and Cleaning Data Course Project 2023

This repository contains the R script `run_analysis.R` that performs the analysis as outlined in the project requirements. The goal of this project is to demonstrate the ability to collect, work with, and clean a data set for further analysis. The data used in this project are collected from the accelerometers of the Samsung Galaxy S smartphone.

Completed by: Divyam :)

## Files in this Repository

1. **`run_analysis.R`**: This R script performs the following steps:
   1. Merges the training and test sets to create one data set.
   2. Extracts only the measurements on the mean and standard deviation for each measurement.
   3. Uses descriptive activity names to name the activities in the data set.
   4. Appropriately labels the data set with descriptive variable names.
   5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

2. **`CodeBook.md`**: This file describes the variables, the data, and any transformations or work that was performed to clean up the data.

3. **`tidy_data.txt`**: This file contains the final tidy data set with the average of each variable for each activity and each subject.

## How to Run the Script

To run the analysis, follow these steps:

1. **Download the Data**: If you haven't already, download the data from the following link: [Data for the project](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip). Extract the contents of the zip file to your working directory.

2. **Run the Script**: Open R or RStudio and run the `run_analysis.R` script. This script will read the data, perform the necessary transformations, and generate the `tidy_data.txt` file with the tidy data set.

## About the Data

The data used in this project were collected from the accelerometers of the Samsung Galaxy S smartphone. A full description of the data is available at the following link: [Human Activity Recognition Using Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

## Code Book

For details about the variables, data, and transformations used in this analysis, please refer to the `CodeBook.md` file in this repository.

Thank you!

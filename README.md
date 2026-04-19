
# Getting and Cleaning Data - Course Project

This repository contains the R script and tidy data set for the Week 4 assignment.

### Files included:
* **run_analysis.R**: The R script used to transform the raw UCI HAR Dataset into a tidy summary.
* **FinalData.txt**: The final tidy data set containing the averages of each variable for each activity and each subject.
* **CodeBook.md**: A document describing the variables, the data, and the transformations performed.

### How the script works:
1. Merges the training and test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation.
3. Uses descriptive activity names (e.g., WALKING, SITTING).
4. Labels the variables with descriptive names (e.g., Accelerometer instead of Acc).
5. Creates a second tidy data set with the average of each variable for each activity and each subject.

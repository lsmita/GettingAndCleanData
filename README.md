#Getting and Cleaning Data Course Project

##Purpose

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit:

* a tidy data set as described below;
* a link to a Github repository with your script for performing the analysis; and
* a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md.

You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.
Objectives

#####run_analysis.R performs the following:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive activity names.
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

##run_analysis.R

1. It downloads the 'UCI HAR Dataset' data set zip file into data directory in current working directrory. After it is downloaded, it unzips the file into the 'UCI HAR Dataset' folder in the data directory. This step is performed only if the data doesn't exists already.
    
2. It loads the train and test data sets and merges the two datasets into one data frame. This is done using rbind. This step is repeated for x data (measurement data), y data (activity data) and subject data.

3. It extracts just the mean and standard deviation columns names from the features data set. This is done using grep.

4. Now it gives meaningful column names to measurementData and calls it extractedData

5. Now it loads the descriptive names for activities and uses it to replace activity id with descriptive names. It labels the Subject and Activity columns for the appropriate data sets.

6. The three data sets measurementData, activityData and subjectData, are merged. Then, it is written as a text file into the 'weeks' folder in the same working directory, named 'measurement_tidy_data.txt'.

7. Using the tidy data set from step 6, it creates a new average dataset by calculating the mean/average of each measurement by subject and activity. This summary data set is written into the 'week3' folder as text file; this is named average_measurement_tidy_data.txt.

The R code contains str for easier preview of the two final data sets.

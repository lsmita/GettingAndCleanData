library(RCurl)
library(plyr)

run_analysis <- function() {  
    # Get Raw data set to be cleaned
    getData()
    
    #Step 1: Merges the training and the test sets for X, Y and subject to create one data set.
    measurementData <- mergeDataSets('./data/UCI HAR Dataset' , 'X_train.txt', 'X_test.txt')
    activityData <- mergeDataSets('./data/UCI HAR Dataset', 'y_train.txt', 'y_test.txt')
    subjectData <- mergeDataSets('./data/UCI HAR Dataset', 'subject_train.txt', 'subject_test.txt')
    
    # Step 2: Extracts only the measurements on the mean and standard deviation for each measurement.
    features <- read.table('./data/UCI HAR Dataset/features.txt')
    meanStdColumns <- grep("-mean\\(\\)|-std\\(\\)", features[, 2])
    extractedData <- measurementData[, meanStdColumns]
    
    #Step 3: Uses descriptive activity names to name the activities in the data set
    names(extractedData) <- features[meanStdColumns, 2]
    names(extractedData) <- updateToDescriptiveNames(extractedData)
    #
    
    #
    #Step 4: Appropriately labels the data set with descriptive variable names
    # and create the merged and cleaned data
    #
    activities <- read.table('./data/UCI HAR Dataset/activity_labels.txt')
    activities[, 2] <- as.character(activities[, 2])
    activityData[, 1] = activities[activityData[, 1], 2]
    colnames(activityData) <- 'Activity'
    colnames(subjectData) <- 'Subject'
    
    # Merge  labels the data set with descriptive activity names.
    tidyData <- cbind(subjectData, activityData, extractedData)
    str(tidyData)
    
    #Write tidy data
    write.table(tidyData, './week3/tidy_data.txt', row.names = F)
    
    # Step 5: Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
    createAverageData(tidyData)
}

# check if data dir exists and if it is a directory. 
# If not, download the zip file, create the diectory and uzip the data into the created directory
getData <- function() {
    if (file.exists('./data/UCI HAR Dataset') & !file.info('./data/UCI HAR Dataset')$isdir) {
        dataFile <- 'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'
        dir.create('./data/UCI HAR Dataset')
        download.file(dataFile, 'UCI-HAR-dataset.zip', method='curl')
        unzip('./data/UCI-HAR-dataset.zip')
    }
}

#
# Merges the train and test data sets for X(measurements), Y(activity), subject data sets into 
# one data set
#
mergeDataSets <- function(dir, train, test) {
    # Merging the X training and the test sets to create one X data set using rbind
    trainData <- read.table(paste(dir, 'train', train, sep='/'))
    testData <- read.table(paste(dir, 'test', test, sep='/'))
    mergedData <- rbind(trainData, testData)
    mergedData
}

#
# Uses descriptive measurement names to name the measurements in the data set
#
updateToDescriptiveNames <- function(extractedData) {
    names(extractedData)<-gsub("Acc", "Accelerometer", names(extractedData))
    names(extractedData)<-gsub("Gyro", "Gyroscope", names(extractedData))
    names(extractedData)<-gsub("BodyBody", "Body", names(extractedData))
    names(extractedData)<-gsub("Mag", "Magnitude", names(extractedData))
    names(extractedData)<-gsub("^t", "Time", names(extractedData))
    names(extractedData)<-gsub("^f", "Frequency", names(extractedData))
    names(extractedData)<-gsub("tBody", "TimeBody", names(extractedData))
    names(extractedData)<-gsub("-mean()", "Mean", names(extractedData), ignore.case = TRUE)
    names(extractedData)<-gsub("-std()", "Std", names(extractedData), ignore.case = TRUE)
    names(extractedData)<-gsub("-freq()", "Frequency", names(extractedData), ignore.case = TRUE)
    names(extractedData)<-gsub("angle", "Angle", names(extractedData))
    names(extractedData)<-gsub("gravity", "Gravity", names(extractedData))
    names(extractedData)
}

#
#aggregate each measurement by subject and activity using mean function 
#
createAverageData <- function(tidyData) {
    averageData <- aggregate(x=tidyData, by=list(subject=tidyData$Subject, activity=tidyData$Activity), FUN=mean, na.rm = TRUE)
    averageData <- averageData[, !(colnames(averageData) %in% c("Subject", "Activity"))]
    averageData <- averageData[order(averageData$subject, averageData$activity),]
    str(averageData)
    write.table(averageData, './week3/summary_tidy_data.txt', row.names = F)
}

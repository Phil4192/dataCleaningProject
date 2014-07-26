run_analysis <- function(){
#### course project ####
# run_analysis.R writen as a function for submit, but could also just run the body to keep all the intermeadiate
# variables in the environment as was done during development

# the required data files should be in the working directory
# read the 8 files below that will be used to construct and save two tidy data frames.  
# 1 st data frame is a tidy subset of data without processing it.
# the 2nd data frame is a tidy data frame with the average over combinations of Subject and Activity:

# activity_labels.txt
# features.txt
# subject_test.txt
# subject_train.txt
# X_test.txt
# X_train.txt
# y_test.txt
# y_train.txt

# subject_test, subject_train = person being measured  (there were 30 people in all.  distinct set in each file)
# y_test, y_train = activities performed in x_test, X_train represented by a number [1:6] (the contents of y_test matches activity labels)
# X_test and X_train = the feature data as described in the documentation
# the column labels and you will want to draw on their description of the data for writing your codebook.
# features.txt maps feature number (varaible) to a textula name
# activity_labels.txt mapps numbers (1:6) to textual descriptions of the activity

# test and training data were tidied seprately and then combined so that could be analyized separately, but
# since the project does not make hte distinction between test and training, they could have been combined first

    
    #### load each needed files to an R object ####
    featureMap <- read.table("features.txt")
    featureMap[,2] <- gsub("[[:punct:]]", "", featureMap[,2]) # remove puntuation chars from var names
    featureMap[,2] <- gsub("mean", "Mean", featureMap[,2]) # make 1st letter of mean and std caps
    featureMap[,2] <- gsub("std", "Std", featureMap[,2])
    activityMap <- read.table("activity_labels.txt")  #how to map number to activity
    
    #### for test data  ####
    sensorsTest <- read.table("X_test.txt")
    names(sensorsTest) <- featureMap[,2]  #replace names with meaningful names
    subjectTest <- read.table("subject_test.txt")
    
    # keep only mean and std data:
    meanListTest <- grep("Mean", featureMap[,2])
    stdListTest <- grep("Std", featureMap[,2])
    keepListTest <- c(meanListTest,stdListTest)
    sensorsTest <- sensorsTest[, keepListTest]
    
    # add action col 
    sensorsTestActNum <- read.table("y_test.txt")
    sensorTestActName <- activityMap[sensorsTestActNum[, 1], 2]
    sensorsTest <- cbind(sensorTestActName,sensorsTest)
    names(sensorsTest)[1] <- "Activity"
    
    #add subject col
    sensorsTest <-cbind(subjectTest[[1]], sensorsTest)
    names(sensorsTest)[1] <- "Subject"
    
    #### for train data  ####
    sensorsTrain <- read.table("X_train.txt")
    names(sensorsTrain) <- featureMap[,2]  #replace names with meaningful names
    subjectTrain <- read.table("subject_train.txt")
    
    # keep only mean and std data:
    meanListTrain <- grep("Mean", featureMap[,2])
    stdListTrain <- grep("Std", featureMap[,2])
    keepListTrain <- c(meanListTrain,stdListTrain)
    sensorsTrain <- sensorsTrain[, keepListTrain]
    
    # add action col 
    sensorsTrainActNum <- read.table("y_train.txt")
    sensorTrainActName <- activityMap[sensorsTrainActNum[, 1], 2]
    sensorsTrain <- cbind(sensorTrainActName,sensorsTrain)
    names(sensorsTrain)[1] <- "Activity"
    
    #add subject col
    sensorsTrain <-cbind(subjectTrain[[1]], sensorsTrain)
    names(sensorsTrain)[1] <- "Subject"
    
    #### join the test and train data and save file ####
    tidyData <- rbind(sensorsTrain, sensorsTest) 
    write.table(tidyData, file="TidyData.txt") 

    #### take mean of tidyData for each measurement over groups defined by combinations of Subject and Activity
    mTidyData <- aggregate(tidyData, by = list(tidyData$Subject, tidyData$Activity), FUN=mean)
    # remove and rename the cols to clean up the table
    mTidyData$Subject <- NULL
    mTidyData$Activity <- NULL
    names(mTidyData)[1:2] <- c("Subject", "Activity")
    # stick "Ave" to the end of the varaibles to indicate an average over each grouping was done
    aNames <- names(mTidyData)[3:length(mTidyData)] 
    aNames <- lapply(aNames, paste, "Ave", collapse="", sep="")
    names(mTidyData)[3:length(mTidyData)] <- aNames 
    # save the file
    write.table(mTidyData, file="mTidyData.txt")
    # readback the file as a check
    mTidyReadback <- read.table("mTidyData.txt")
    mTidyReadback[1:8,1:6]  # visually check the table after readback
    return(mTidyData)
}
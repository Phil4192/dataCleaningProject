dataCleaningProject
===================

project for the getting and cleaning data coursera course

The run_analysis.R file contains the R code for the course project.

run_analysis.R 
run_analysis.R writen as a function for submit, but could also just run the body to keep all the intermeadiate
variables in the environment as was done during development

The required data files should be in the R working directory.

run_analysis will read the 8 files below that will be used to construct and save two tidy data frames.  
1 st data frame is a tidy subset of data without processing it.
the 2nd data frame is a tidy data frame with the average over combinations of Subject and Activity:

activity_labels.txt

features.txt

subject_test.txt

subject_train.txt

X_test.txt

X_train.txt

y_test.txt

y_train.txt


subject_test, subject_train = person being measured  (there were 30 people in all.  distinct set in each file)
y_test, y_train = activities performed in x_test, X_train represented by a number [1:6] (the contents of y_test matches activity labels)
X_test and X_train = the feature data (as described in the documentation)

features.txt maps feature number (varaible) to a textula name
activity_labels.txt mapps numbers (1:6) to textual descriptions of the activity

The function will save both the 1st and 2nd data frames as tidyData.txt and mTidyData.txt respectively
The function will will return the mTidyData data frame.

 
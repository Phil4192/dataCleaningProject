# CodeBook for project data
The data is the result of tidying a subset of the data from the UCI study:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
then processing that data into a tidy data frame.  the processing is averaging the data over each combination of Subject and Activity

## ID data
There are two variable to indicate the ID of the Subject (person) and the Activity of the subject

[1] "Subject"
* ID of person [1:30]

[2] "Activity" 
* WALKING		
* WALKING_UPSTAIRS
* WALKING_DOWNSTAIRS
* SITTING
* STANDING
* LAYING 

## Measurement data (features)
Data is averaged data.  The averaging is over each combination of Subject and Activity
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

A Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

(note that 'angle' indicates an Angle between to vectors)

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ

tGravityAcc-XYZ

tBodyAccJerk-XYZ

tBodyGyro-XYZ

tBodyGyroJerk-XYZ

tBodyAccMag

tGravityAccMag

tBodyAccJerkMag

tBodyGyroMag

tBodyGyroJerkMag

fBodyAcc-XYZ

fBodyAccJerk-XYZ

fBodyGyro-XYZ

fBodyAccMag

fBodyAccJerkMag

fBodyGyroMag

fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

Mean value
Standard deviation

Each subject generated data for each of the activities.  The data for the Mean value and Standard deviation are extracted and averaged.

Units are normalized to +/-1 of full scale range
		                          
 [3] "tBodyAccMeanXAve"           
 [4] "tBodyAccMeanYAve"           
 [5] "tBodyAccMeanZAve"           
 [6] "tGravityAccMeanXAve"        
 [7] "tGravityAccMeanYAve"        
 [8] "tGravityAccMeanZAve"        
 [9] "tBodyAccJerkMeanXAve"       
[10] "tBodyAccJerkMeanYAve"       
[11] "tBodyAccJerkMeanZAve"       
[12] "tBodyGyroMeanXAve"          
[13] "tBodyGyroMeanYAve"          
[14] "tBodyGyroMeanZAve"          
[15] "tBodyGyroJerkMeanXAve"      
[16] "tBodyGyroJerkMeanYAve"      
[17] "tBodyGyroJerkMeanZAve"      
[18] "tBodyAccMagMeanAve"         
[19] "tGravityAccMagMeanAve"      
[20] "tBodyAccJerkMagMeanAve"     
[21] "tBodyGyroMagMeanAve"        
[22] "tBodyGyroJerkMagMeanAve"    
[23] "fBodyAccMeanXAve"           
[24] "fBodyAccMeanYAve"           
[25] "fBodyAccMeanZAve"           
[26] "fBodyAccJerkMeanXAve"       
[27] "fBodyAccJerkMeanYAve"       
[28] "fBodyAccJerkMeanZAve"       
[29] "fBodyGyroMeanXAve"          
[30] "fBodyGyroMeanYAve"          
[31] "fBodyGyroMeanZAve"          
[32] "fBodyAccMagMeanAve"         
[33] "fBodyBodyAccJerkMagMeanAve"  
[34] "fBodyBodyGyroMagMeanAve"    
[35] "fBodyBodyGyroJerkMagMeanAve" 
[36] "tBodyAccStdXAve"            
[37] "tBodyAccStdYAve"            
[38] "tBodyAccStdZAve"            
[39] "tGravityAccStdXAve"         
[40] "tGravityAccStdYAve"         
[41] "tGravityAccStdZAve"         
[42] "tBodyAccJerkStdXAve"        
[43] "tBodyAccJerkStdYAve"        
[44] "tBodyAccJerkStdZAve"        
[45] "tBodyGyroStdXAve"           
[46] "tBodyGyroStdYAve"           
[47] "tBodyGyroStdZAve"           
[48] "tBodyGyroJerkStdXAve"       
[49] "tBodyGyroJerkStdYAve"       
[50] "tBodyGyroJerkStdZAve"       
[51] "tBodyAccMagStdAve"          
[52] "tGravityAccMagStdAve"       
[53] "tBodyAccJerkMagStdAve"      
[54] "tBodyGyroMagStdAve"         
[55] "tBodyGyroJerkMagStdAve"     
[56] "fBodyAccStdXAve"            
[57] "fBodyAccStdYAve"            
[58] "fBodyAccStdZAve"            
[59] "fBodyAccJerkStdXAve"        
[60] "fBodyAccJerkStdYAve"        
[61] "fBodyAccJerkStdZAve"        
[62] "fBodyGyroStdXAve"           
[63] "fBodyGyroStdYAve"           
[64] "fBodyGyroStdZAve"           
[65] "fBodyAccMagStdAve"          
[66] "fBodyBodyAccJerkMagStdAve"  
[67] "fBodyBodyGyroMagStdAve"     
[68] "fBodyBodyGyroJerkMagStdAve" 
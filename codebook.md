# CodeBook for project data
The data is the result of tidying a subset of the data from the UCI study:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
then processing that data into a tidy data frame.  the processing is averaging the data over each combination of Subject and Activity

## ID data
 [1] "Subject"                             
 		ID of person (1:30)
 
 [2] "Activity" 
 		WALKING
		WALKING_UPSTAIRS
		WALKING_DOWNSTAIRS
		SITTING
		STANDING
		LAYING 
## Measurement data (features)
Data is averaged data.  The averaging is over each combination of Subject and Activity
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

A Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

(note that 'angle' indicates an Angle between to vectors.

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
[26] "fBodyAccMeanFreqXAve"                
[27] "fBodyAccMeanFreqYAve"                
[28] "fBodyAccMeanFreqZAve"                
[29] "fBodyAccJerkMeanXAve"                
[30] "fBodyAccJerkMeanYAve"                
[31] "fBodyAccJerkMeanZAve"                
[32] "fBodyAccJerkMeanFreqXAve"            
[33] "fBodyAccJerkMeanFreqYAve"            
[34] "fBodyAccJerkMeanFreqZAve"            
[35] "fBodyGyroMeanXAve"                   
[36] "fBodyGyroMeanYAve"                   
[37] "fBodyGyroMeanZAve"                   
[38] "fBodyGyroMeanFreqXAve"               
[39] "fBodyGyroMeanFreqYAve"               
[40] "fBodyGyroMeanFreqZAve"               
[41] "fBodyAccMagMeanAve"                  
[42] "fBodyAccMagMeanFreqAve"              
[43] "fBodyBodyAccJerkMagMeanAve"          
[44] "fBodyBodyAccJerkMagMeanFreqAve"      
[45] "fBodyBodyGyroMagMeanAve"             
[46] "fBodyBodyGyroMagMeanFreqAve"         
[47] "fBodyBodyGyroJerkMagMeanAve"         
[48] "fBodyBodyGyroJerkMagMeanFreqAve"     
[49] "angletBodyAccMeangravityAve"         
[50] "angletBodyAccJerkMeangravityMeanAve" 

[51] "angletBodyGyroMeangravityMeanAve"    
[52] "angletBodyGyroJerkMeangravityMeanAve"

[53] "angleXgravityMeanAve"                
[54] "angleYgravityMeanAve"                
[55] "angleZgravityMeanAve"                
[56] "tBodyAccStdXAve"                     
[57] "tBodyAccStdYAve"                     
[58] "tBodyAccStdZAve"                     
[59] "tGravityAccStdXAve"                  
[60] "tGravityAccStdYAve"                  
[61] "tGravityAccStdZAve"                  
[62] "tBodyAccJerkStdXAve"                 
[63] "tBodyAccJerkStdYAve"                 
[64] "tBodyAccJerkStdZAve"                 
[65] "tBodyGyroStdXAve"                    
[66] "tBodyGyroStdYAve"                    
[67] "tBodyGyroStdZAve"                    
[68] "tBodyGyroJerkStdXAve"                
[69] "tBodyGyroJerkStdYAve"                
[70] "tBodyGyroJerkStdZAve"                
[71] "tBodyAccMagStdAve"                   
[72] "tGravityAccMagStdAve"                
[73] "tBodyAccJerkMagStdAve"               
[74] "tBodyGyroMagStdAve"                  
[75] "tBodyGyroJerkMagStdAve"              
[76] "fBodyAccStdXAve"                     
[77] "fBodyAccStdYAve"                     
[78] "fBodyAccStdZAve"                     
[79] "fBodyAccJerkStdXAve"                 
[80] "fBodyAccJerkStdYAve"                 
[81] "fBodyAccJerkStdZAve"                 
[82] "fBodyGyroStdXAve"                    
[83] "fBodyGyroStdYAve"                    
[84] "fBodyGyroStdZAve"                    
[85] "fBodyAccMagStdAve"                   
[86] "fBodyBodyAccJerkMagStdAve"           
[87] "fBodyBodyGyroMagStdAve"              
[88] "fBodyBodyGyroJerkMagStdAve" 

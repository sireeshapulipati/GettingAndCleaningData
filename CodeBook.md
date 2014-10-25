Description of the experiment that generated original dataset:
--------------------------------------------------------------
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity measurements were captured at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 
The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 
Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 
These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
=====================================================================================

Description of the current dataset
-----------------------------------
For the present dataset, only the mean and standard deviation measurements are extracted from the above experiment data. Those measurements are averaged for each Subject (person) and Activity. The variable names are modified to make them more descriptive and readable. 
The following steps are performed in order to arrive at the final dataset:
1.	Obtain the raw data by combining Train and Test data from the original dataset. Subject and Activity labels are associated with the measurement data. Features names are used to name the measurement columns. This dataset has 10299 rows and 563 columns.
2.	Only the Mean and Standard Deviation measurements are extracted from the pool of 561 features by identifying “mean()” or “std()” in the column names and sub-setting those columns.
3.	Descriptive names are given to the Activity labels as follows:
o	1- Walking
o	2- Walking_Upstairs
o	3- Walking_Downstairs
o	4- Sitting
o	5- Standing
o	6- Laying
4.	Meaningful names are given to each of the measurement columns by substituting cryptic representations to complete words wherever possible.
5.	For all the measurement columns, the average of each subject for each activity is obtained. The final dataset has 68 columns and 180 rows. (30 subjects X 6 activities)
=====================================================================================

Dataset columns:
----------------
The following is the list of variables in the dataset:

1.	Activity
It is a factor variable with 6 levels.
o	1- Walking
o	2- Walking_Upstairs
o	3- Walking_Downstairs
o	4- Sitting
o	5- Standing
o	6- Laying

2.	 Subject 
It is a factor variable with 30 levels, corresponding to 30 subjects/volunteers.
Note:  All the measurements below are normalized and bounded within [-1,1]. Hence the measurements have no units. The measurements with “t” prefix denote time signals and those with “f” prefix denote frequency signals. Each measurement value is the average for each subject and each activity.

3.	tBodyAccelerationMeanX
4.	tBodyAccelerationMeanY 
5.	tBodyAccelerationMeanZ  
6.	tBodyAccelerationStdX  
7.	tBodyAccelerationStdY 
8.	tBodyAccelerationStdZ
9.	tGravityAccelerationMeanX            
10.	tGravityAccelerationMeanY 
11.	tGravityAccelerationMeanZ 
12.	tGravityAccelerationStdX
13.	tGravityAccelerationStdY 
14.	tGravityAccelerationStdZ
15.	tBodyAccelerationJerkMeanX  
16.	tBodyAccelerationJerkMeanY  
17.	tBodyAccelerationJerkMeanZ 
18.	tBodyAccelerationJerkStdX  
19.	tBodyAccelerationJerkStdY  
20.	tBodyAccelerationJerkStdZ  
21.	tBodyAngularVelocityMeanX  
22.	tBodyAngularVelocityMeanY 
23.	tBodyAngularVelocityMeanZ 
24.	tBodyAngularVelocityStdX  
25.	tBodyAngularVelocityStdY  
26.	tBodyAngularVelocityStdZ 
27.	tBodyAngularVelocityJerkMeanX    
28.	tBodyAngularVelocityJerkMeanY  
29.	tBodyAngularVelocityJerkMeanZ
30.	tBodyAngularVelocityJerkStdX
31.	tBodyAngularVelocityJerkStdY     
32.	tBodyAngularVelocityJerkStdZ  
33.	tBodyAccelerationMagnitudeMean  
34.	tBodyAccelerationMagnitudeStd  
35.	tGravityAccelerationMagnitudeMean 
36.	tGravityAccelerationMagnitudeStd    
37.	tBodyAccelerationJerkMagnitudeMean 
38.	tBodyAccelerationJerkMagnitudeStd 
39.	tBodyAngularVelocityMagnitudeMean 
40.	tBodyAngularVelocityMagnitudeStd 
41.	tBodyAngularVelocityJerkMagnitudeMean 
42.	tBodyAngularVelocityJerkMagnitudeStd 
43.	fBodyAccelerationMeanX  
44.	fBodyAccelerationMeanY    
45.	fBodyAccelerationMeanZ  
46.	fBodyAccelerationStdX   
47.	fBodyAccelerationStdY   
48.	fBodyAccelerationStdZ   
49.	fBodyAccelerationJerkMeanX   
50.	fBodyAccelerationJerkMeanY  
51.	fBodyAccelerationJerkMeanZ   
52.	fBodyAccelerationJerkStdX 
53.	fBodyAccelerationJerkStdY 
54.	fBodyAccelerationJerkStdZ  
55.	fBodyAngularVelocityMeanX   
56.	fBodyAngularVelocityMeanY  
57.	fBodyAngularVelocityMeanZ  
58.	fBodyAngularVelocityStdX   
59.	fBodyAngularVelocityStdY    
60.	fBodyAngularVelocityStdZ    
61.	fBodyAccelerationMagnitudeMean        
62.	fBodyAccelerationMagnitudeStd         
63.	fBodyAccelerationJerkMagnitudeMean   
64.	fBodyAccelerationJerkMagnitudeStd     
65.	fBodyAngularVelocityMagnitudeMean     
66.	fBodyAngularVelocityMagnitudeStd  
67.	fBodyAngularVelocityJerkMagnitudeMean 
68.	fBodyAngularVelocityJerkMagnitudeStd



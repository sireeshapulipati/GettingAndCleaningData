==================================================================
Human Activity Recognition Using Smartphones Tidy Dataset
Course Project for "Getting and Cleaning Data" course.
==================================================================
Original dataset contributors:

Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================
Original dataset description:

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

========================================
Current Dataset

For the present dataset, only the mean and standard deviation measurements are extracted from the above experiment data. Those measurements are averaged for each Subject (person) and Activity. The variable names are modified to make them more descriptive and readable. 

The following steps were performed:

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
 


For each record it is provided:
======================================

- Subject label (1 to 30) Identifier of the Subject who carried out the experiment.
- Activity label
- A 66-feature vector with time and frequency domain variables. (Mean and Std)


The dataset includes the following files:
=========================================

- 'README.md'

- 'run_analysis.R': Provides the script for extracting and manipulating the original dataset. It details all the steps taken to arrive  at the final tidy dataset.

- 'CodeBook.md': Describes the dataset and its variables



License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.

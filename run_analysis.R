
########  Step  1: Merges the training and the test sets to create one data set.    #########

##Train Data

# Read Train data into TrainX
TrainX<-read.table("UCI HAR Dataset/train/X_train.txt", header=F,sep="")

#check the dimensions of the dataframe
dim(TrainX)

# Read Train Label data into TrainY
TrainY<-read.table("UCI HAR Dataset/train/y_train.txt", header=F,sep="")

#check the dimensions of the dataframe
dim(TrainY)

#Add Activity label data to the Train data
TrainXY<-cbind(TrainY,TrainX)
#
check the dimensions of the dataframe
dim(TrainXY)

##Test Data

# Read Test data into TestX
TestX<-read.table("UCI HAR Dataset/test/X_test.txt", header=F,sep="")

#check the dimensions of the dataframe
dim(TestX)

# Read Train Label data into TestY
TestY<-read.table("UCI HAR Dataset/test/y_test.txt", header=F,sep="")

#check the dimensions of the dataframe
dim(TestY)

#Add Activity label data to the Test data
TestXY<-cbind(TestY,TestX)
#check the dimensions of the dataframe
dim(TestXY)



## Combine Train and Test Datasets
TotalData<-rbind(TrainXY,TestXY)


## Get Feature names
features<-read.table("UCI HAR Dataset/features.txt", header=F)



## Assign column names to Total Data using features

# first, extract the names from features dataset
colNames<-features[,2]

# Add "Activity" as first column name
colNames<-c("Activity",as.character(colNames))
colnames(TotalData)<-colNames

##Get subject data for train and  test datasets, combine them  and add it to the  MeanStdDataset

# Get the subject data
subjects_train<-read.table("UCI HAR Dataset/train/subject_train.txt",header=F)
subjects_test<-read.table("UCI HAR Dataset/test/subject_test.txt",header=F)
subjects<-rbind(subjects_train,subjects_test)


# Combine it with TotalData
DataWithSubjects<-cbind(subjects,TotalData)
# Name the subject column
colnames(DataWithSubjects)[1]<-"Subject"

########  Step 2: Extracts only the measurements on the mean and standard deviation for each measurement.     #########


##Figure out the mean() and std() measurement columns
# The columns with mean() or std() in their columns names are considered as the required columns. 
# As, such the pattern to search is defined as below:

pattern<-".*mean\\(\\).*|.*std\\(\\).*"

# Identify the required column names
selectedCols<-grep(pattern,colnames(DataWithSubjects),value=F) #Gets the indices of mean() and  std() columns 

##Subset  only mean() and std() measurement  columns
MeanStdData<-DataWithSubjects[c(1,2,selectedCols)]


########  Step 3: Uses descriptive activity names to name the activities in the data set.     #########

##Give  descriptive names  to Activity column

#First, convert the Activity column into a factor 
MeanStdData$Activity<-factor(MeanStdData$Activity)

#Assign descriptive labels  to the factor levels
install.packages("plyr")
library(plyr)
MeanStdData$Activity<-revalue(MeanStdData$Activity,c("1"="Walking","2"="Walking_Upstairs","3"="Walking_Downstairs","4"="Sitting","5"="Standing","6"="Laying"))

########  Step 4: Appropriately labels the data set with descriptive variable names.     #########


##Give descriptive names to  the variables

# Rules I followed:
# Here, I have expanded various parts of the variable names to make them more descriptive: 
  #Acc to Acceleration
  #Mag to Magnitude
  #Gyro to AngularVelocity

# I have left "t" and "f" as they are to denote time and frequency signals not to make the names too long (Note that they are considerably long wvwn without this).
# I have removed all the symbols like underscore and parantheses
# I have capitalized the beginning letter of each word
# I have removed duplicate "Body" from the names as I feel it's redundant and does not provide additional information.
 

# 1. Replace  -mean() with Mean
varnames<-sub("-mean\\(\\)","Mean",names(MeanStdData))

# 2. Replace -std() with Std
varnames<-sub("-std\\(\\)","Std",varnames)

# 3. Replace Acc with Acceleration
varnames<-sub("Acc","Acceleration",varnames)

#  4. Remove -
varnames<-sub("-","",varnames)

# 5. Remove Body from BodyBody
varnames<-sub("BodyBody","Body",varnames)

# 6. Replace Mag with Magnitude
varnames<-sub("Mag","Magnitude",varnames)

#7 Replace  Gyro with AngularVelocity
varnames<-sub("Gyro","AngularVelocity",varnames)

# finally, assign the modified variable names to the dataset
names(MeanStdData)<-varnames

#########   Step 5: From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.   ###########

# convert the dataset to a data.table in order to facilitate the manipulation required. 
# The manipulation can be done in different ways and the way I have chosen requires a data.table                    
install.packages("data.table")
library(data.table)
datatable<-data.table(MeanStdData)

# Convert Subject to  factor variable
datatable$Subject<-factor(datatable$Subject)

dim(datatable)

# Find the average of the variables by  Activity and Subject
tidydata<-datatable[, lapply(.SD, mean, na.rm=TRUE), by=c("Activity","Subject"), .SDcols=3:68  ]
# Order the final dataset by Activity and Subject
#tidydata<-tidydata[order(tidydata$Activty,tidydata$Subject),]

dim(tidydata)

# Write the final dataset into a text file
write.table(tidydata,"C:/Users/savvari/Documents/Coursera/tidydata.txt",row.names=F)

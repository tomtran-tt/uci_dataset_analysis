# Human Activity Recognition Using Smartphones Raw Dataset Overview
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. 
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) 
wearing a smartphone (Samsung Galaxy S II) on the waist.  The raw dataset obtained from the Galaxy SII sensor 
signals while each person performed the six activities. 

The complete experiment description can be found at [http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

# Tidy Dataframe Overview

The tidy dataframe is generated from running the run_analysis.R script. It takes the raw input from the
[Human Activity Recognition Using Smartphones Dataset](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

Perform the following cleanup tasks:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

The tidy dataframe produced in step 5 has the following structure:

## Row variables:

This tidy datafram has 180 rows (observation) for each of the SUBJECT.ID (30) x ACTIVITY.ID (6) combination.
Below is the detailed description of the row variables:

##### ACTIVITY.ID

* ACTIVITY.ID is an integer range from 1 to 6

#####ACTIVITY.NAME

* ACTIVIY.NAME is the activity description for each activity id.

1. WALKING
2. WALKING_UPSTAIRS
3. WALKING_DOWNSTAIRS
4. SITTING
5. STANDING
6. LAYING

#####SUBJECT.ID

* SUBJECT.ID is an integer range from 1 to 30

## Column variables ( Averages of the mean and standard deviation for each measurements)

This tidy dataframe contains averages of 79 variables (mean and standard deviation measurements)
out of the 561 variables collected during the experiment.  Each of the 79 variable is labeled
using the following keyword:

* **TIME**: a time domain signal, captured at a constant rate of 50Hz. hen they were filtered using a median 
filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise.

* **FFT**: 

#####TIME.BODY.ACC.MEAN.X
#####TIME.BODY.ACC.MEAN.Y             
#####TIME.BODY.ACC.MEAN.Z            
#####TIME.BODY.ACC.STD.X              
#####TIME.BODY.ACC.STD.Y             
#####TIME.BODY.ACC.STD.Z              
#####TIME.GRAVITY.ACC.MEAN.X          
#####TIME.GRAVITY.ACC.MEAN.Y          
#####TIME.GRAVITY.ACC.MEAN.Z         
#####TIME.GRAVITY.ACC.STD.X           
#####TIME.GRAVITY.ACC.STD.Y           
#####TIME.GRAVITY.ACC.STD.Z           
#####TIME.BODY.ACC.JERK.MEAN.X       
#####TIME.BODY.ACC.JERK.MEAN.Y        
#####TIME.BODY.ACC.JERK.MEAN.Z        
#####TIME.BODY.ACC.JERK.STD.X         
#####TIME.BODY.ACC.JERK.STD.Y        
#####TIME.BODY.ACC.JERK.STD.Z         
#####TIME.BODY.GYRO.MEAN.X            
#####TIME.BODY.GYRO.MEAN.Y            
#####TIME.BODY.GYRO.MEAN.Z           
#####TIME.BODY.GYRO.STD.X             
#####TIME.BODY.GYRO.STD.Y             
#####TIME.BODY.GYRO.STD.Z             
#####TIME.BODY.GYRO.JERK.MEAN.X      
#####TIME.BODY.GYRO.JERK.MEAN.Y      
#####TIME.BODY.GYRO.JERK.MEAN.Z       
#####TIME.BODY.GYRO.JERK.STD.X        
#####TIME.BODY.GYRO.JERK.STD.Y       
#####TIME.BODY.GYRO.JERK.STD.Z        
#####TIME.BODY.ACC.MAG.MEAN           
#####TIME.BODY.ACC.MAG.STD            
#####TIME.GRAVITY.ACC.MAG.MEAN       
#####TIME.GRAVITY.ACC.MAG.STD         
#####TIME.BODY.ACC.JERK.MAG.MEAN      
#####TIME.BODY.ACC.JERK.MAG.STD       
#####TIME.BODY.GYRO.MAG.MEAN         
#####TIME.BODY.GYRO.MAG.STD           
#####TIME.BODY.GYRO.JERK.MAG.MEAN     
#####TIME.BODY.GYRO.JERK.MAG.STD      
#####FFT.BODY.ACC.MEAN.X             
#####FFT.BODY.ACC.MEAN.Y              
#####FFT.BODY.ACC.MEAN.Z              
#####FFT.BODY.ACC.STD.X               
#####FFT.BODY.ACC.STD.Y              
#####FFT.BODY.ACC.STD.Z               
#####FFT.BODY.ACC.MEAN.FREQ.X         
#####FFT.BODY.ACC.MEAN.FREQ.Y        
#####FFT.BODY.ACC.MEAN.FREQ.Z        
#####FFT.BODY.ACC.JERK.MEAN.X         
#####FFT.BODY.ACC.JERK.MEAN.Y         
#####FFT.BODY.ACC.JERK.MEAN.Z         
#####FFT.BODY.ACC.JERK.STD.X         
#####FFT.BODY.ACC.JERK.STD.Y          
#####FFT.BODY.ACC.JERK.STD.Z         
#####FFT.BODY.ACC.JERK.MEAN.FREQ.X    
#####FFT.BODY.ACC.JERK.MEAN.FREQ.Y   
#####FFT.BODY.ACC.JERK.MEAN.FREQ.Z    
#####FFT.BODY.GYRO.MEAN.X             
#####FFT.BODY.GYRO.MEAN.Y             
#####FFT.BODY.GYRO.MEAN.Z            
#####FFT.BODY.GYRO.STD.X              
#####FFT.BODY.GYRO.STD.Y              
#####FFT.BODY.GYRO.STD.Z              
#####FFT.BODY.GYRO.MEAN.FREQ.X       
#####FFT.BODY.GYRO.MEAN.FREQ.Y        
#####FFT.BODY.GYRO.MEAN.FREQ.Z        
#####FFT.BODY.ACC.MAG.MEAN            
#####FFT.BODY.ACC.MAG.STD            
#####FFT.BODY.ACC.MAG.MEAN.FREQ       
#####FFT.BODY.ACC.JERK.MAG.MEAN       
#####FFT.BODY.ACC.JERK.MAG.STD        
#####FFT.BODY.ACC.JERK.MAG.MEAN.FREQ 
#####FFT.BODY.GYRO.MAG.MEAN           
#####FFT.BODY.GYRO.MAG.STD            
#####FFT.BODY.GYRO.MAG.MEAN.FREQ      
#####FFT.BODY.GYRO.JERK.MAG.MEAN     
#####FFT.BODY.GYRO.JERK.MAG.STD       
#####FFT.BODY.GYRO.JERK.MAG.MEAN.FREQ
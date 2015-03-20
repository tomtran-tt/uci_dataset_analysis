# Human Activity Recognition Using Smartphones Raw Dataset Overview
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. 
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) 
wearing a smartphone (Samsung Galaxy S II) on the waist.  The raw dataset obtained from the Galaxy SII sensor 
signals while each person performed the six activities. 

The complete experiment description can be found at [http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

# HAR Tidy Dataframe (har_tidy_data.txt) Overview

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
out of the 561 variables collected during the experiment.  

* All variables units are normalized within [-1,1]

Each of the 79 variable is labeled using the following keywords:

* **TIME**: a time domain signal, captured at a constant rate of 50Hz. Then they were filtered using a median 
filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise.

* **FFT**: a frequency domain signals, as a result of applying Fast Fourier Transform (FFT) to some of the signal

* **ACC**: GSII accelerometer signals

* **GYRO**: GSII gyroscope signals

* **BODY**: Body signals separated from low pass Butterworth filter with corner frequency of 0.3Hz

* **GRAVITY**: Gravity signals separated from low pass Butterworth filter with corner frequency of 0.3Hz

* **JERK**: The body linear acceleration and angular velocity were derived in time to obtain Jerk signals

* **MAG**: The magnitude of these signals were calculated using the Euclidean norm

* **STD**: Standard deviation value 

* **MEAN**: Mean value

* **FREQ**: Frequency

* **X.Y.Y**: Denote 3-axial signals in the X, Y and Z directions.

#####TIME.BODY.ACC.MEAN.X
* Number range from -1 to 1

#####TIME.BODY.ACC.MEAN.Y
* Number range from -1 to 1

#####TIME.BODY.ACC.MEAN.Z
* Number range from -1 to 1
            
#####TIME.BODY.ACC.STD.X
* Number range from -1 to 1
              
#####TIME.BODY.ACC.STD.Y
* Number range from -1 to 1
             
#####TIME.BODY.ACC.STD.Z
* Number range from -1 to 1
             
#####TIME.GRAVITY.ACC.MEAN.X          
* Number range from -1 to 1

#####TIME.GRAVITY.ACC.MEAN.Y
* Number range from -1 to 1
          
#####TIME.GRAVITY.ACC.MEAN.Z         
* Number range from -1 to 1

#####TIME.GRAVITY.ACC.STD.X
* Number range from -1 to 1
           
#####TIME.GRAVITY.ACC.STD.Y
* Number range from -1 to 1
           
#####TIME.GRAVITY.ACC.STD.Z           
* Number range from -1 to 1

#####TIME.BODY.ACC.JERK.MEAN.X       
* Number range from -1 to 1

#####TIME.BODY.ACC.JERK.MEAN.Y        
* Number range from -1 to 1

#####TIME.BODY.ACC.JERK.MEAN.Z        
* Number range from -1 to 1

#####TIME.BODY.ACC.JERK.STD.X         
* Number range from -1 to 1

#####TIME.BODY.ACC.JERK.STD.Y        
* Number range from -1 to 1

#####TIME.BODY.ACC.JERK.STD.Z         
* Number range from -1 to 1

#####TIME.BODY.GYRO.MEAN.X            
* Number range from -1 to 1

#####TIME.BODY.GYRO.MEAN.Y            
* Number range from -1 to 1

#####TIME.BODY.GYRO.MEAN.Z           
* Number range from -1 to 1

#####TIME.BODY.GYRO.STD.X             
* Number range from -1 to 1

#####TIME.BODY.GYRO.STD.Y             
* Number range from -1 to 1

#####TIME.BODY.GYRO.STD.Z             
* Number range from -1 to 1

#####TIME.BODY.GYRO.JERK.MEAN.X      
* Number range from -1 to 1

#####TIME.BODY.GYRO.JERK.MEAN.Y      
* Number range from -1 to 1

#####TIME.BODY.GYRO.JERK.MEAN.Z       
* Number range from -1 to 1

#####TIME.BODY.GYRO.JERK.STD.X        
* Number range from -1 to 1

#####TIME.BODY.GYRO.JERK.STD.Y       
* Number range from -1 to 1

#####TIME.BODY.GYRO.JERK.STD.Z        
* Number range from -1 to 1

#####TIME.BODY.ACC.MAG.MEAN           
* Number range from -1 to 1

#####TIME.BODY.ACC.MAG.STD            
* Number range from -1 to 1

#####TIME.GRAVITY.ACC.MAG.MEAN       
* Number range from -1 to 1

#####TIME.GRAVITY.ACC.MAG.STD         
* Number range from -1 to 1

#####TIME.BODY.ACC.JERK.MAG.MEAN      
* Number range from -1 to 1

#####TIME.BODY.ACC.JERK.MAG.STD       
* Number range from -1 to 1

#####TIME.BODY.GYRO.MAG.MEAN         
* Number range from -1 to 1

#####TIME.BODY.GYRO.MAG.STD           
* Number range from -1 to 1

#####TIME.BODY.GYRO.JERK.MAG.MEAN     
* Number range from -1 to 1

#####TIME.BODY.GYRO.JERK.MAG.STD      
* Number range from -1 to 1

#####FFT.BODY.ACC.MEAN.X             
* Number range from -1 to 1

#####FFT.BODY.ACC.MEAN.Y              
* Number range from -1 to 1

#####FFT.BODY.ACC.MEAN.Z              
* Number range from -1 to 1

#####FFT.BODY.ACC.STD.X               
* Number range from -1 to 1

#####FFT.BODY.ACC.STD.Y              
* Number range from -1 to 1

#####FFT.BODY.ACC.STD.Z               
* Number range from -1 to 1

#####FFT.BODY.ACC.MEAN.FREQ.X         
* Number range from -1 to 1

#####FFT.BODY.ACC.MEAN.FREQ.Y        
* Number range from -1 to 1

#####FFT.BODY.ACC.MEAN.FREQ.Z        
* Number range from -1 to 1

#####FFT.BODY.ACC.JERK.MEAN.X         
* Number range from -1 to 1

#####FFT.BODY.ACC.JERK.MEAN.Y         
* Number range from -1 to 1

#####FFT.BODY.ACC.JERK.MEAN.Z         
* Number range from -1 to 1

#####FFT.BODY.ACC.JERK.STD.X         
* Number range from -1 to 1

#####FFT.BODY.ACC.JERK.STD.Y          
* Number range from -1 to 1

#####FFT.BODY.ACC.JERK.STD.Z         
* Number range from -1 to 1

#####FFT.BODY.ACC.JERK.MEAN.FREQ.X    
* Number range from -1 to 1

#####FFT.BODY.ACC.JERK.MEAN.FREQ.Y   
* Number range from -1 to 1

#####FFT.BODY.ACC.JERK.MEAN.FREQ.Z    
* Number range from -1 to 1

#####FFT.BODY.GYRO.MEAN.X             
* Number range from -1 to 1

#####FFT.BODY.GYRO.MEAN.Y             
* Number range from -1 to 1

#####FFT.BODY.GYRO.MEAN.Z            
* Number range from -1 to 1

#####FFT.BODY.GYRO.STD.X              
* Number range from -1 to 1

#####FFT.BODY.GYRO.STD.Y              
* Number range from -1 to 1

#####FFT.BODY.GYRO.STD.Z              
* Number range from -1 to 1

#####FFT.BODY.GYRO.MEAN.FREQ.X       
* Number range from -1 to 1

#####FFT.BODY.GYRO.MEAN.FREQ.Y        
* Number range from -1 to 1

#####FFT.BODY.GYRO.MEAN.FREQ.Z        
* Number range from -1 to 1

#####FFT.BODY.ACC.MAG.MEAN            
* Number range from -1 to 1

#####FFT.BODY.ACC.MAG.STD            
* Number range from -1 to 1

#####FFT.BODY.ACC.MAG.MEAN.FREQ       
* Number range from -1 to 1

#####FFT.BODY.ACC.JERK.MAG.MEAN       
* Number range from -1 to 1

#####FFT.BODY.ACC.JERK.MAG.STD        
* Number range from -1 to 1

#####FFT.BODY.ACC.JERK.MAG.MEAN.FREQ 
* Number range from -1 to 1

#####FFT.BODY.GYRO.MAG.MEAN           
* Number range from -1 to 1

#####FFT.BODY.GYRO.MAG.STD            
* Number range from -1 to 1

#####FFT.BODY.GYRO.MAG.MEAN.FREQ      
* Number range from -1 to 1

#####FFT.BODY.GYRO.JERK.MAG.MEAN     
* Number range from -1 to 1

#####FFT.BODY.GYRO.JERK.MAG.STD       
* Number range from -1 to 1

#####FFT.BODY.GYRO.JERK.MAG.MEAN.FREQ
* Number range from -1 to 1

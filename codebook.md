# Human Activity Recognition Using Smartphones Dataset Overview
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

The complete experiment description can be found [here](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones )

# Tidy Dataframe 

This tidy data frame is generated from running the run_analysis.R script. It takes the raw input from the
[Human Activity Recognition Using Smartphones Dataset](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).



It has 180 observations
for the 30 SUBJECT.ID x 6 ACTIVITY.ID combination.  Below is the detailed description of each variables:

## Row variables:
##### ACTIVITY.ID / ACTIVITY.NAME
1. WALKING
2. WALKING_UPSTAIRS
3. WALKING_DOWNSTAIRS
4. SITTING
5. STANDING
6. LAYING

#####SUBJECT.ID

* Subject ID range from 1 to 30

## Column variables ( GS3 sensors data collected during the experiment)

* TIME: a time based variable unit in xxx
* FFT: 

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
## uci_dataset_analysis

This repository contains the run_analyis.R script which takes a raw data 
from "./UCI HAR Dataset" directory, perform 5 mains processings steps and return
a tidy dataframe as a result.  Below is the detailed description of the expected
input, processings steps and its output:

##Expected input: "./UCI HAR Dataset"
#./UCI HAR Dataset/test (test-group data-set)
./UCI HAR Dataset/test/subject_test.txt (test-group subject-id linked to X_test.txt data)
./UCI HAR Dataset/test/y_test.txt (test-group activity-id linked to X_test.txt data)
./UCI HAR Dataset/test/X_test.txt (sensors data for test-group)

#./UCI HAR Dataset/train (train-group data-set)
./UCI HAR Dataset/train/subject_train.txt (train-group subject-id linked to X_train.txt data)
./UCI HAR Dataset/train/y_train.txt (train-group activity-id linked to X_train.txt data)
./UCI HAR Dataset/trai/X_train.txt (sensors data for train-group)

## Processing steps : 

run_analysis() does the following process to the raw dataset

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for 
   each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data 
   set with the average of each variable for each activity and each subject.

## Output results : 

1. return a tidy dataframe from step 5
2. it also writes this tidy dataframe to a file named "har_tidy.data.txt"

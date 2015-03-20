# uci_dataset_analysis

This repository contains the run_analyis.R script which takes raw data 
from "./UCI HAR Dataset" directory, perform 5 cleanup tasks to the raw data and return
a tidy dataframe as a result.  Below are the detailed descriptions of the expected
input, cleanup tasks and the output:

##Expected input: "./UCI HAR Dataset"
1. activity_labels.txt ( Text label for each activity id)
2. features.txt ( Text label for each sensor output)

####./UCI HAR Dataset/test (test-group data-set)
1. subject_test.txt (test-group subject-id linked to X_test.txt data)
2. y_test.txt (test-group activity-id linked to X_test.txt data)
3. X_test.txt (sensors data for test-group)

####./UCI HAR Dataset/train (train-group data-set)
1. subject_train.txt (train-group subject-id linked to X_train.txt data)
2. y_train.txt (train-group activity-id linked to X_train.txt data)
3. X_train.txt (sensors data for train-group)

## Cleanup tasks : 

run_analysis() perform the following cleanup tasks to the raw dataset

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

###############################################################################
#
# Raw data input: ./UCI HAR Dataset
#
#   ./UCI HAR Dataset/test (test-group data-set)
#   ./UCI HAR Dataset/test/subject_test.txt (test-group subject-id linked to X_test.txt data)
#   ./UCI HAR Dataset/test/y_test.txt (test-group activity-id linked to X_test.txt data)
#   ./UCI HAR Dataset/test/X_test.txt (sensors data for test-group)
#
#   ./UCI HAR Dataset/train (train-group data-set)
#   ./UCI HAR Dataset/train/subject_train.txt (train-group subject-id linked to X_train.txt data)
#   ./UCI HAR Dataset/train/y_train.txt (train-group activity-id linked to X_train.txt data)
#   ./UCI HAR Dataset/trai/X_train.txt (sensors data for train-group)
#
# output data frame : run_analysis does the following processing and return a tidy ouput data frame
#   1 Merges the training and the test sets to create one data set.
#   2 Extracts only the measurements on the mean and standard deviation for 
#     each measurement. 
#   3 Uses descriptive activity names to name the activities in the data set
#   4 Appropriately labels the data set with descriptive variable names. 
#   5 From the data set in step 4, creates a second, independent tidy data 
#     set with the average of each variable for each activity and each subject.

require("reshape2")

run_analysis <- function() {
    
    if (!file.exists("./UCI HAR Dataset")) {
        message("Please download and unzip UCI HAR Dataset to current directory")
        return(-1)
    }
    
    # Read activity labels
    activity.labels <- read.table("./UCI HAR Dataset/activity_labels.txt")
    
    # Read Samsung Galaxy S3 features headers
    gs3.features.labels <- read.table("./UCI HAR Dataset/features.txt")
    
    # Read in raw data from test-group and create a test.data.frame
    #
    test.subject.id <- read.table("./UCI HAR Dataset/test/subject_test.txt")
    test.activity.id <- read.table("./UCI HAR Dataset/test/y_test.txt")
    test.subject.activity.data <- cbind(test.subject.id, test.activity.id) 
    names(test.subject.activity.data) <- c("SUBJECT.ID", "ACTIVITY.ID")
    test.sensors.raw <- read.table("./UCI HAR Dataset/test/x_test.txt")
    names(test.sensors.raw) <- gs3.features.labels[,2]
    test.data.frame <- cbind(test.subject.activity.data, test.sensors.raw)
    
                               
    # Read in raw data from training-group and create train.data.frame
    train.subject.id <- read.table("./UCI HAR Dataset/train/subject_train.txt")
    train.activity.id <- read.table("./UCI HAR Dataset/train/y_train.txt")
    train.subject.activity.data <- cbind(train.subject.id, train.activity.id) 
    names(train.subject.activity.data) <- c("SUBJECT.ID", "ACTIVITY.ID")    
    train.sensors.raw <- read.table("./UCI HAR Dataset/train/x_train.txt")
    names(train.sensors.raw) <- gs3.features.labels[,2]
    train.data.frame <- cbind(train.subject.activity.data, train.sensors.raw)
    
    
    # 1 Merges the training and the test sets to create one data set.
    combined.data.frame <- rbind(test.data.frame, train.data.frame)
    
    # 2 Extracts only the measurements on the mean and standard deviation for each measurement.
    tidy.data <- combined.data.frame[,grep("SUBJECT|ACTIVITY|mean|std",names(combined.data.frame))]
    
    # 3 Uses descriptive activity names to name the activities in the data set
    # Create a data frame out of the activity.labels then merge it with the tidy data frame
    names(activity.labels) <- c("ACTIVITY.ID", "ACTIVITY.NAME")
    tidy.data <- merge(activity.labels, tidy.data, by.x = "ACTIVITY.ID", by.y= "ACTIVITY.ID", all = TRUE)
    
    # 4 Appropriately labels the data set with descriptive variable names.
    # by making the following substitution so that labels are all CAP with . seperated
    #
    names(tidy.data) <- gsub(pattern="[()]", replacement="", names(tidy.data))
    names(tidy.data) <- gsub(pattern="[-]", replacement=".", names(tidy.data))
    names(tidy.data) <- gsub(pattern="tBodyAcc", replacement="TIME.BODY.ACC", names(tidy.data))
    names(tidy.data) <- gsub(pattern="fBodyAcc", replacement="FFT.BODY.ACC", names(tidy.data))
    names(tidy.data) <- gsub(pattern="fBodyBodyAcc", replacement="FFT.BODY.ACC", names(tidy.data))
    names(tidy.data) <- gsub(pattern="tGravityAcc", replacement="TIME.GRAVITY.ACC", names(tidy.data))
    names(tidy.data) <- gsub(pattern="tBodyGyro", replacement="TIME.BODY.GYRO", names(tidy.data))
    names(tidy.data) <- gsub(pattern="fBodyGyro", replacement="FFT.BODY.GYRO", names(tidy.data))
    names(tidy.data) <- gsub(pattern="fBodyBodyGyro", replacement="FFT.BODY.GYRO", names(tidy.data))
    names(tidy.data) <- gsub(pattern="std", replacement="STD", names(tidy.data))
    names(tidy.data) <- gsub(pattern="mean", replacement="MEAN", names(tidy.data))
    names(tidy.data) <- gsub(pattern="ACCJerk", replacement="ACC.JERK", names(tidy.data))
    names(tidy.data) <- gsub(pattern="ACCMag", replacement="ACC.MAG", names(tidy.data))
    names(tidy.data) <- gsub(pattern="GYROJerk", replacement="GYRO.JERK", names(tidy.data))
    names(tidy.data) <- gsub(pattern="JERKMag", replacement="JERK.MAG", names(tidy.data))
    names(tidy.data) <- gsub(pattern="GYROMag", replacement="GYRO.MAG", names(tidy.data))
    names(tidy.data) <- gsub(pattern="MEANFreq", replacement="MEAN.FREQ", names(tidy.data))
    
    # 5 From the data set in step 4, creates a second, independent tidy data 
    # set with the average of each variable for each activity and each subject.
    out.data.frame <- melt(tidy.data, id = c("ACTIVITY.NAME","SUBJECT.ID"))
    out.data.frame <- dcast(out.data.frame, ACTIVITY.NAME + SUBJECT.ID ~ variable,mean)
    
    # write out.data.frame to har_tidy_data.txt file
    write.table(out.data.frame, file = "har_tidy_data.txt", row.name=FALSE)
    
    # return tidy data frame
    out.data.frame
}
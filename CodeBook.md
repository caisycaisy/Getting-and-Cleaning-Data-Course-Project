## Getting and Cleaning Data Course Project  
### Overview  
One of the most exciting areas in all of data science right now is wearable computing. Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:  
[Human Activity Recognition Using Smartphones Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)  
[Data source for the project](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)  
### Procedures  
The script run_analysis.R performs the following Procedures to clean up the data and create tidy data sets:  
1.	Assign column names to the training and test sets. Then merges the training and the test sets to create one data set (calls all_set).  
2.	Extracts only the measurements on the mean and standard deviation for each measurement (calls mean_std_set).  
3.	Uses descriptive activity names to name the activities in the data set (calls act_mean_std_set).  
4.	Appropriately labels the data set with descriptive variable names. That is making names clear and understandable.  
5.	From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject. The result is saved as avg_by_act_sub.  
### Variables  
Columns Names / Description  
activityId / 1~6  
activityType / WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING  
subjectId / Id of 1~30 volunteers  
Time.BodyAcceleration.Mean.X / Original Name : tBodyAcc-mean()-X  
Time.BodyAcceleration.Mean.Y / Original Name : tBodyAcc-mean()-Y  
Time.BodyAcceleration.Mean.Z / Original Name : tBodyAcc-mean()-Z  
Time.BodyAcceleration.Std.X / Original Name : tBodyAcc-std()-X  
Time.BodyAcceleration.Std.Y / Original Name : tBodyAcc-std()-Y  
Time.BodyAcceleration.Std.Z / Original Name : tBodyAcc-std()-Z  
Time.GravityAcceleration.Mean.X / Original Name : tGravityAcc-mean()-X  
Time.GravityAcceleration.Mean.Y	/ Original Name : tGravityAcc-mean()-Y  
Time.GravityAcceleration.Mean.Z	/ Original Name : tGravityAcc-mean()-Z  
Time.GravityAcceleration.Std.X / Original Name : tGravityAcc-std()-X  
Time.GravityAcceleration.Std.Y / Original Name : tGravityAcc-std()-Y  
Time.GravityAcceleration.Std.Z / Original Name : tGravityAcc-std()-Z  
Time.BodyAccelerationJerk.Mean.X / Original Name : tBodyAccJerk-mean()-X  
Time.BodyAccelerationJerk.Mean.Y / Original Name : tBodyAccJerk-mean()-Y  
Time.BodyAccelerationJerk.Mean.Z / Original Name : tBodyAccJerk-mean()-Z  
Time.BodyAccelerationJerk.Std.X / Original Name : tBodyAccJerk-std()-X  
Time.BodyAccelerationJerk.Std.Y / Original Name : tBodyAccJerk-std()-Y  
Time.BodyAccelerationJerk.Std.Z / Original Name : tBodyAccJerk-std()-Z  
Time.BodyGyroscope.Mean.X / Original Name : tBodyGyro-mean()-X  
Time.BodyGyroscope.Mean.Y / Original Name : tBodyGyro-mean()-Y  
Time.BodyGyroscope.Mean.Z / Original Name : tBodyGyro-mean()-Z  
Time.BodyGyroscope.Std.X / Original Name : tBodyGyro-std()-X  
Time.BodyGyroscope.Std.Y / Original Name : tBodyGyro-std()-Y  
Time.BodyGyroscope.Std.Z / Original Name : tBodyGyro-std()-Z  
Time.BodyGyroscopeJerk.Mean.X / Original Name : tBodyGyroJerk-mean()-X  
Time.BodyGyroscopeJerk.Mean.Y / Original Name : tBodyGyroJerk-mean()-Y  
Time.BodyGyroscopeJerk.Mean.Z / Original Name : tBodyGyroJerk-mean()-Z  
Time.BodyGyroscopeJerk.Std.X / Original Name : tBodyGyroJerk-std()-X  
Time.BodyGyroscopeJerk.Std.Y / Original Name : tBodyGyroJerk-std()-Y  
Time.BodyGyroscopeJerk.Std.Z / Original Name : tBodyGyroJerk-std()-Z  
Time.BodyAccelerationMagnitude.Mean / Original Name : tBodyAccMag-mean()  
Time.BodyAccelerationMagnitude.Std / Original Name : tBodyAccMag-std()  
Time.GravityAccelerationMagnitude.Mean / Original Name : tGravityAccMag-mean()  
Time.GravityAccelerationMagnitude.Std / Original Name : tGravityAccMag-std()  
Time.BodyAccelerationJerkMagnitude.Mean / Original Name : tBodyAccJerkMag-mean()  
Time.BodyAccelerationJerkMagnitude.Std / Original Name : tBodyAccJerkMag-std()  
Time.BodyGyroscopeMagnitude.Mean / Original Name : tBodyGyroMag-mean()  
Time.BodyGyroscopeMagnitude.Std / Original Name : tBodyGyroMag-std()  
Time.BodyGyroscopeJerkMagnitude.Mean / Original Name : tBodyGyroJerkMag-mean()  
Time.BodyGyroscopeJerkMagnitude.Std / Original Name : tBodyGyroJerkMag-std()  
Frequency.BodyAcceleration.Mean.X / Original Name : fBodyAcc-mean()-X  
Frequency.BodyAcceleration.Mean.Y / Original Name : fBodyAcc-mean()-Y  
Frequency.BodyAcceleration.Mean.Z / Original Name : fBodyAcc-mean()-Z  
Frequency.BodyAcceleration.Std.X / Original Name : fBodyAcc-std()-X  
Frequency.BodyAcceleration.Std.Y / Original Name : fBodyAcc-std()-Y  
Frequency.BodyAcceleration.Std.Z / Original Name : fBodyAcc-std()-Z  
Frequency.BodyAccelerationJerk.Mean.X / Original Name : fBodyAccJerk-mean()-X  
Frequency.BodyAccelerationJerk.Mean.Y / Original Name : fBodyAccJerk-mean()-Y  
Frequency.BodyAccelerationJerk.Mean.Z / Original Name : fBodyAccJerk-mean()-Z  
Frequency.BodyAccelerationJerk.Std.X / Original Name : fBodyAccJerk-std()-X  
Frequency.BodyAccelerationJerk.Std.Y / Original Name : fBodyAccJerk-std()-Y  
Frequency.BodyAccelerationJerk.Std.Z / Original Name : fBodyAccJerk-std()-Z  
Frequency.BodyGyroscope.Mean.X / Original Name : fBodyGyro-mean()-X  
Frequency.BodyGyroscope.Mean.Y / Original Name : fBodyGyro-mean()-Y  
Frequency.BodyGyroscope.Mean.Z / Original Name : fBodyGyro-mean()-Z  
Frequency.BodyGyroscope.Std.X / Original Name : fBodyGyro-std()-X  
Frequency.BodyGyroscope.Std.Y / Original Name : fBodyGyro-std()-Y  
Frequency.BodyGyroscope.Std.Z / Original Name : fBodyGyro-std()-Z  
Frequency.BodyAccelerationMagnitude.Mean / Original Name : fBodyAccMag-mean()  
Frequency.BodyAccelerationMagnitude.Std / Original Name : fBodyAccMag-std()  
Frequency.BodyBodyAccelerationJerkMagnitude.Mean / Original Name : fBodyBodyAccJerkMag-mean()  
Frequency.BodyBodyAccelerationJerkMagnitude.Std / Original Name : fBodyBodyAccJerkMag-std()  
Frequency.BodyBodyGyroscopeMagnitude.Mean / Original Name : fBodyBodyGyroMag-mean()  
Frequency.BodyBodyGyroscopeMagnitude.Std / Original Name : fBodyBodyGyroMag-std()  
Frequency.BodyBodyGyroscopeJerkMagnitude.Mean / Original Name : fBodyBodyGyroJerkMag-mean()  
Frequency.BodyBodyGyroscopeJerkMagnitude.Std / Original Name : fBodyBodyGyroJerkMag-std()  
### Output  
avg_by_act_sub.txt  
avg_by_act_sub.txt is a 180x69 data frame  
- The first column contains activityId. activityId are integers between 1 and 6.  
- The second column contains activityType.  
- The third column contains subjectId. subjectId are integers between 1 and 30.  
- The last 66 columns are measurements. The numbers are average of each variable for each activity and each subject.  






##########################################################################################
#Getting and Cleaning Data Course Project

#1.Merges the training and the test sets to create one data set.
#2.Extracts only the measurements on the mean and standard deviation for each measurement. 
#3.Uses descriptive activity names to name the activities in the data set
#4.Appropriately labels the data set with descriptive variable names. 
#5.From the data set in step 4, creates a second, independent tidy data set 
#  with the average of each variable for each activity and each subject.
##########################################################################################

#####################
#Download the file
#####################

setwd("C:\\Users\\ASUS\\Desktop\\Data Science\\Getting and Cleaning Data\\Course Project")
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile="C:\\Users\\ASUS\\Desktop\\Data Science\\Getting and Cleaning Data\\Course Project\\Data.zip")
unzip(zipfile="C:\\Users\\ASUS\\Desktop\\Data Science\\Getting and Cleaning Data\\Course Project\\Data.zip",exdir="./data")

###############
#read raw data
###############

setwd("C:\\Users\\ASUS\\Desktop\\Data Science\\Getting and Cleaning Data\\Course Project\\data\\UCI HAR Dataset");
activity_labels = read.table('./activity_labels.txt',header=FALSE); 
features = read.table('./features.txt',header=FALSE);

subject_train = read.table('./train/subject_train.txt',header=FALSE); 
x_train = read.table('./train/X_train.txt',header=FALSE);
y_train = read.table('./train/y_train.txt',header=FALSE);

subject_test = read.table('./test/subject_test.txt',header=FALSE); 
x_test = read.table('./test/X_test.txt',header=FALSE);
y_test = read.table('./test/y_test.txt',header=FALSE);

##################################################################
#1.Merges the training and the test sets to create one data set
##################################################################

# Assign column names to the training sets
colnames(activity_labels)  = c('activityId','activityType'); 
colnames(subject_train)  = "subjectId"; 
colnames(x_train)        = features[,2];  
colnames(y_train)        = "activityId"; 

# Assign column names to the test sets
colnames(subject_test)  = "subjectId"; 
colnames(x_test)        = features[,2];  
colnames(y_test)        = "activityId"; 

# conbine training set 
training_set = cbind(subject_train,y_train,x_train);

# conbine test set 
test_set = cbind(subject_test,y_test,x_test);

# conbine training and test sets
all_set = rbind(training_set,test_set);


###########################################################################################
#2.Extracts only the measurements on the mean and standard deviation for each measurement
###########################################################################################

colNames  = colnames(all_set); 

logicalVector = (grepl("activity..",colNames) | grepl("subject..",colNames) | 
                 grepl("-mean..",colNames) & !grepl("-meanFreq..",colNames) |
                 grepl("-std..",colNames)  & !grepl("-stdFreq..",colNames)  ) 

mean_std_set= all_set[logicalVector==TRUE];


###########################################################################
#3.Uses descriptive activity names to name the activities in the data set
###########################################################################

act_mean_std_set = merge(mean_std_set,activity_labels,by='activityId',all.x=TRUE);


#####################################################################
#4.Appropriately labels the data set with descriptive variable names
#####################################################################

# Remove parentheses
names(act_mean_std_set) <- gsub('\\(|\\)',"",names(act_mean_std_set), perl = TRUE)
# Make syntactically valid names
names(act_mean_std_set) <- make.names(names(act_mean_std_set))
# Make clearer names
names(act_mean_std_set) <- gsub('^t',"Time.",names(act_mean_std_set))
names(act_mean_std_set) <- gsub('^f',"Frequency.",names(act_mean_std_set))
names(act_mean_std_set) <- gsub('Acc',"Acceleration",names(act_mean_std_set))
names(act_mean_std_set) <- gsub('Gyro',"Gyroscope",names(act_mean_std_set))
names(act_mean_std_set) <- gsub('Mag',"Magnitude",names(act_mean_std_set))
names(act_mean_std_set) <- gsub('\\.mean',".Mean",names(act_mean_std_set))
names(act_mean_std_set) <- gsub('\\.std',".Std",names(act_mean_std_set))


##########################################################################
#5.Creates an independent tidy data set with the average of each variable 
#  for each activity and each subject
##########################################################################

require(plyr)
avg_by_act_sub = ddply(act_mean_std_set, c("activityId","activityType","subjectId"), numcolwise(mean))
write.table(avg_by_act_sub, file = "avg_by_act_sub.txt",row.name=FALSE)


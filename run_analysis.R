# Script for analyzing data from Coursera Getting and Cleaning Data course
# 
# Orville Jackson
# Created 7-17-2014 Last modified 7-21-2014

# BEFORE RUNNING THIS SCRIPT:
# Please note that this script will download
# the original UCI HAR Data from the web and
# Unzip it in your current working directory.
# If you would prefer not to redo these
# steps. Please comment out the lines with the
# download.file and unzip commands by
# placing a # at the beginning of those lines.

###################################
# Download the data from the web  #
###################################
download.file('https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip', destfile = 'coursera_getdata_005_project_data.zip')

##############################################
# Unzip the data into the current directory  #
##############################################
unzip('coursera_getdata_005_project_data.zip')

######################################################
# Load the data into memory from the relevant files #
####################################################

# activity names
activities <- read.table('UCI HAR Dataset/activity_labels.txt') 

# feature names
features <- read.table('UCI HAR Dataset/features.txt', stringsAsFactors = F) 

# training activity labels
trainactivity <- read.table('UCI HAR Dataset/train/Y_train.txt', col.names = 'activity') 

# training data
traindata <- read.table('UCI HAR Dataset/train/X_train.txt') 

# training subject numbers
trainsub <- read.table('UCI HAR Dataset/train/subject_train.txt', col.names = 'subject') 

# test activity labels
testactivity <- read.table('UCI HAR Dataset/test/Y_test.txt', col.names = 'activity') 

# test data
testdata <- read.table('UCI HAR Dataset/test/X_test.txt') 

# test subject numbers
testsub <- read.table('UCI HAR Dataset/test/subject_test.txt', col.names = 'subject') 

###########################################################
# Clean up the features for use as variable/column names #
# By removing any special characters.                   #
########################################################

# Convert all the feature names to lower case for ease of use
features <- tolower(features[, 2])

# Next, remove parentheses ( or )
features <- gsub("(\\(|\\))","",features)

# Then replace dashes - and commas , with underscores _
features <- gsub("(\\-|\\,)","_",features)

#####################################################################
# Assign the features as variable names in training and test data  #
###################################################################

# Name the test data variables
names(testdata) <- features

# Name the training data variables
names(traindata) <- features

######################################
# Step 1.                            # 
# Merge the training and the test    #
# sets to create one data set.       #
######################################

# First, combine the subject, activity, and feature data
# for both training and test

# training
merged_train_data <- cbind(trainsub, trainactivity, traindata) 

# test
merged_test_data <- cbind(testsub, testactivity, testdata)

# Next, combine the training and test data into a final dataset
final_merged_data <- rbind(merged_train_data, merged_test_data)

##################################
# Clean up the workspace a bit  #
################################

# make a vector with objects to keep
keepers <- c("final_merged_data", "activities") 

# remove any object not in the list (including the keepers vector!)
rm(list = ls()[!ls() %in% keepers]) 

######################################
# Step 2.                            #
# Extracts only the measurements     #
# on the mean and standard           #
# deviation for each measurement.    #
######################################

filtered_data <- final_merged_data[,grep("subject|activity|_mean|_std",names(final_merged_data))]

######################################
# Step 3.                            #
# Use descriptive activity names     #
# to name the activities in the      #
# data set.                          #
######################################

# Get the activity labels from the activities data frame
# and assign them to the 'activity' variable using factor function
filtered_data$activity <- factor(filtered_data$activity, levels = 1:6, labels = activities[,2])

# Remove the activities and full data set now since they are no longer needed.
rm(list = c('activities', 'final_merged_data'))

######################################
# Step 4.                            #
# Appropriately label the data set   #
# with descriptive variable names.   #
######################################

# Use the gsub function to change variable names 
# based on information from the features_info.txt file

# First, fix all the names with the 'bodybody' error
names(filtered_data) <- gsub('bodybody', 'body', names(filtered_data))

# Next, change any leading 't' to time
names(filtered_data) <- gsub('^t', 'time_', names(filtered_data))

# Next, change any leading 'f' to frequency
names(filtered_data) <- gsub('^f', 'frequency_', names(filtered_data))

# Next, label acceleration signals
names(filtered_data) <- gsub('acc', '_acceleration_', names(filtered_data))

# Next, label angular velocity signals
names(filtered_data) <- gsub('gyro', '_angular_velocity_', names(filtered_data))

# Next, label magnitude signals
names(filtered_data) <- gsub('mag', '_magnitude_', names(filtered_data))

# Next, fix the 'std' names
names(filtered_data) <- gsub('std', 'standard_deviation', names(filtered_data))

# Then, fix the 'meanfreq' names
names(filtered_data) <- gsub('meanfreq', 'mean_frequency', names(filtered_data))

# And label the axis measurements
names(filtered_data) <- gsub('_x$', '_x_axis', names(filtered_data))
names(filtered_data) <- gsub('_y$', '_y_axis', names(filtered_data))
names(filtered_data) <- gsub('_z$', '_z_axis', names(filtered_data))

# Finally, fix any names with a double "_" from all the wierd cleaning we did.
names(filtered_data) <- gsub('__', '_', names(filtered_data))

######################################
# Step 5.                            #
# Creates a second, independent tidy #
# data set with the average of each  #
# variable for each activity and     #
# each subject.                      #
######################################

# Yeah, do that.
tidy_data <- aggregate(. ~ subject + activity, filtered_data, mean)

# Clear out the old data.
rm(filtered_data)

# Write the data to a text file
write.table(tidy_data, "coursera_getdata_005_project_tidy_data.txt", row.names = F)

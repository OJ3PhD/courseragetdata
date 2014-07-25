Code Book for Coursera Getting and Cleaning Data course project 
===============
Original data are from Human Activity Recognition Using Smartphones Dataset
Version 1.0.
Downloaded from: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## About the data
The original data were recorded from a group of 30 volunteers performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Original data includes a 561-feature vector with time and frequency domain variables. The script run_analysis.R filters the original data to include only mean and stadard deviation features and then averages these features by subject and activity. This analysis results in a data set with 181 rows representing all unique subject/activity pairings and 81 columns representing the averaged mean and standard deviation variables.

Below is the list of variables contained in the final tidy data set, along with data types and descriptions:

VARIABLE NAME: subject
DATA TYPE: Integer
DESCRIPTION: Subject number in the original study
VARIABLE NAME: activity
DATA TYPE: Factor w/ 6 levels
DESCRIPTION: Activity subject was engaged in: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
VARIABLE NAME: time_body_acceleration_mean_x_axis
DATA TYPE: Numeric
DESCRIPTION: average of time body acceleration mean x axis
VARIABLE NAME: time_body_acceleration_mean_y_axis
DATA TYPE: Numeric
DESCRIPTION: average of time body acceleration mean y axis
VARIABLE NAME: time_body_acceleration_mean_z_axis
DATA TYPE: Numeric
DESCRIPTION: average of time body acceleration mean z axis
VARIABLE NAME: time_body_acceleration_standard_deviation_x_axis
DATA TYPE: Numeric
DESCRIPTION: average of time body acceleration standard deviation x axis
VARIABLE NAME: time_body_acceleration_standard_deviation_y_axis
DATA TYPE: Numeric
DESCRIPTION: average of time body acceleration standard deviation y axis
VARIABLE NAME: time_body_acceleration_standard_deviation_z_axis
DATA TYPE: Numeric
DESCRIPTION: average of time body acceleration standard deviation z axis
VARIABLE NAME: time_gravity_acceleration_mean_x_axis
DATA TYPE: Numeric
DESCRIPTION: average of time gravity acceleration mean x axis
VARIABLE NAME: time_gravity_acceleration_mean_y_axis
DATA TYPE: Numeric
DESCRIPTION: average of time gravity acceleration mean y axis
VARIABLE NAME: time_gravity_acceleration_mean_z_axis
DATA TYPE: Numeric
DESCRIPTION: average of time gravity acceleration mean z axis
VARIABLE NAME: time_gravity_acceleration_standard_deviation_x_axis
DATA TYPE: Numeric
DESCRIPTION: average of time gravity acceleration standard deviation x axis
VARIABLE NAME: time_gravity_acceleration_standard_deviation_y_axis
DATA TYPE: Numeric
DESCRIPTION: average of time gravity acceleration standard deviation y axis
VARIABLE NAME: time_gravity_acceleration_standard_deviation_z_axis
DATA TYPE: Numeric
DESCRIPTION: average of time gravity acceleration standard deviation z axis
VARIABLE NAME: time_body_acceleration_jerk_mean_x_axis
DATA TYPE: Numeric
DESCRIPTION: average of time body acceleration jerk mean x axis
VARIABLE NAME: time_body_acceleration_jerk_mean_y_axis
DATA TYPE: Numeric
DESCRIPTION: average of time body acceleration jerk mean y axis
VARIABLE NAME: time_body_acceleration_jerk_mean_z_axis
DATA TYPE: Numeric
DESCRIPTION: average of time body acceleration jerk mean z axis
VARIABLE NAME: time_body_acceleration_jerk_standard_deviation_x_axis
DATA TYPE: Numeric
DESCRIPTION: average of time body acceleration jerk standard deviation x axis
VARIABLE NAME: time_body_acceleration_jerk_standard_deviation_y_axis
DATA TYPE: Numeric
DESCRIPTION: average of time body acceleration jerk standard deviation y axis
VARIABLE NAME: time_body_acceleration_jerk_standard_deviation_z_axis
DATA TYPE: Numeric
DESCRIPTION: average of time body acceleration jerk standard deviation z axis
VARIABLE NAME: time_body_angular_velocity_mean_x_axis
DATA TYPE: Numeric
DESCRIPTION: average of time body angular velocity mean x axis
VARIABLE NAME: time_body_angular_velocity_mean_y_axis
DATA TYPE: Numeric
DESCRIPTION: average of time body angular velocity mean y axis
VARIABLE NAME: time_body_angular_velocity_mean_z_axis
DATA TYPE: Numeric
DESCRIPTION: average of time body angular velocity mean z axis
VARIABLE NAME: time_body_angular_velocity_standard_deviation_x_axis
DATA TYPE: Numeric
DESCRIPTION: average of time body angular velocity standard deviation x axis
VARIABLE NAME: time_body_angular_velocity_standard_deviation_y_axis
DATA TYPE: Numeric
DESCRIPTION: average of time body angular velocity standard deviation y axis
VARIABLE NAME: time_body_angular_velocity_standard_deviation_z_axis
DATA TYPE: Numeric
DESCRIPTION: average of time body angular velocity standard deviation z axis
VARIABLE NAME: time_body_angular_velocity_jerk_mean_x_axis
DATA TYPE: Numeric
DESCRIPTION: average of time body angular velocity jerk mean x axis
VARIABLE NAME: time_body_angular_velocity_jerk_mean_y_axis
DATA TYPE: Numeric
DESCRIPTION: average of time body angular velocity jerk mean y axis
VARIABLE NAME: time_body_angular_velocity_jerk_mean_z_axis
DATA TYPE: Numeric
DESCRIPTION: average of time body angular velocity jerk mean z axis
VARIABLE NAME: time_body_angular_velocity_jerk_standard_deviation_x_axis
DATA TYPE: Numeric
DESCRIPTION: average of time body angular velocity jerk standard deviation x axis
VARIABLE NAME: time_body_angular_velocity_jerk_standard_deviation_y_axis
DATA TYPE: Numeric
DESCRIPTION: average of time body angular velocity jerk standard deviation y axis
VARIABLE NAME: time_body_angular_velocity_jerk_standard_deviation_z_axis
DATA TYPE: Numeric
DESCRIPTION: average of time body angular velocity jerk standard deviation z axis
VARIABLE NAME: time_body_acceleration_magnitude_mean
DATA TYPE: Numeric
DESCRIPTION: average of time body acceleration magnitude mean
VARIABLE NAME: time_body_acceleration_magnitude_standard_deviation
DATA TYPE: Numeric
DESCRIPTION: average of time body acceleration magnitude standard deviation
VARIABLE NAME: time_gravity_acceleration_magnitude_mean
DATA TYPE: Numeric
DESCRIPTION: average of time gravity acceleration magnitude mean
VARIABLE NAME: time_gravity_acceleration_magnitude_standard_deviation
DATA TYPE: Numeric
DESCRIPTION: average of time gravity acceleration magnitude standard deviation
VARIABLE NAME: time_body_acceleration_jerk_magnitude_mean
DATA TYPE: Numeric
DESCRIPTION: average of time body acceleration jerk magnitude mean
VARIABLE NAME: time_body_acceleration_jerk_magnitude_standard_deviation
DATA TYPE: Numeric
DESCRIPTION: average of time body acceleration jerk magnitude standard deviation
VARIABLE NAME: time_body_angular_velocity_magnitude_mean
DATA TYPE: Numeric
DESCRIPTION: average of time body angular velocity magnitude mean
VARIABLE NAME: time_body_angular_velocity_magnitude_standard_deviation
DATA TYPE: Numeric
DESCRIPTION: average of time body angular velocity magnitude standard deviation
VARIABLE NAME: time_body_angular_velocity_jerk_magnitude_mean
DATA TYPE: Numeric
DESCRIPTION: average of time body angular velocity jerk magnitude mean
VARIABLE NAME: time_body_angular_velocity_jerk_magnitude_standard_deviation
DATA TYPE: Numeric
DESCRIPTION: average of time body angular velocity jerk magnitude standard deviation
VARIABLE NAME: frequency_body_acceleration_mean_x_axis
DATA TYPE: Numeric
DESCRIPTION: average of frequency body acceleration mean x axis
VARIABLE NAME: frequency_body_acceleration_mean_y_axis
DATA TYPE: Numeric
DESCRIPTION: average of frequency body acceleration mean y axis
VARIABLE NAME: frequency_body_acceleration_mean_z_axis
DATA TYPE: Numeric
DESCRIPTION: average of frequency body acceleration mean z axis
VARIABLE NAME: frequency_body_acceleration_standard_deviation_x_axis
DATA TYPE: Numeric
DESCRIPTION: average of frequency body acceleration standard deviation x axis
VARIABLE NAME: frequency_body_acceleration_standard_deviation_y_axis
DATA TYPE: Numeric
DESCRIPTION: average of frequency body acceleration standard deviation y axis
VARIABLE NAME: frequency_body_acceleration_standard_deviation_z_axis
DATA TYPE: Numeric
DESCRIPTION: average of frequency body acceleration standard deviation z axis
VARIABLE NAME: frequency_body_acceleration_mean_frequency_x_axis
DATA TYPE: Numeric
DESCRIPTION: average of frequency body acceleration mean frequency x axis
VARIABLE NAME: frequency_body_acceleration_mean_frequency_y_axis
DATA TYPE: Numeric
DESCRIPTION: average of frequency body acceleration mean frequency y axis
VARIABLE NAME: frequency_body_acceleration_mean_frequency_z_axis
DATA TYPE: Numeric
DESCRIPTION: average of frequency body acceleration mean frequency z axis
VARIABLE NAME: frequency_body_acceleration_jerk_mean_x_axis
DATA TYPE: Numeric
DESCRIPTION: average of frequency body acceleration jerk mean x axis
VARIABLE NAME: frequency_body_acceleration_jerk_mean_y_axis
DATA TYPE: Numeric
DESCRIPTION: average of frequency body acceleration jerk mean y axis
VARIABLE NAME: frequency_body_acceleration_jerk_mean_z_axis
DATA TYPE: Numeric
DESCRIPTION: average of frequency body acceleration jerk mean z axis
VARIABLE NAME: frequency_body_acceleration_jerk_standard_deviation_x_axis
DATA TYPE: Numeric
DESCRIPTION: average of frequency body acceleration jerk standard deviation x axis
VARIABLE NAME: frequency_body_acceleration_jerk_standard_deviation_y_axis
DATA TYPE: Numeric
DESCRIPTION: average of frequency body acceleration jerk standard deviation y axis
VARIABLE NAME: frequency_body_acceleration_jerk_standard_deviation_z_axis
DATA TYPE: Numeric
DESCRIPTION: average of frequency body acceleration jerk standard deviation z axis
VARIABLE NAME: frequency_body_acceleration_jerk_mean_frequency_x_axis
DATA TYPE: Numeric
DESCRIPTION: average of frequency body acceleration jerk mean frequency x axis
VARIABLE NAME: frequency_body_acceleration_jerk_mean_frequency_y_axis
DATA TYPE: Numeric
DESCRIPTION: average of frequency body acceleration jerk mean frequency y axis
VARIABLE NAME: frequency_body_acceleration_jerk_mean_frequency_z_axis
DATA TYPE: Numeric
DESCRIPTION: average of frequency body acceleration jerk mean frequency z axis
VARIABLE NAME: frequency_body_angular_velocity_mean_x_axis
DATA TYPE: Numeric
DESCRIPTION: average of frequency body angular velocity mean x axis
VARIABLE NAME: frequency_body_angular_velocity_mean_y_axis
DATA TYPE: Numeric
DESCRIPTION: average of frequency body angular velocity mean y axis
VARIABLE NAME: frequency_body_angular_velocity_mean_z_axis
DATA TYPE: Numeric
DESCRIPTION: average of frequency body angular velocity mean z axis
VARIABLE NAME: frequency_body_angular_velocity_standard_deviation_x_axis
DATA TYPE: Numeric
DESCRIPTION: average of frequency body angular velocity standard deviation x axis
VARIABLE NAME: frequency_body_angular_velocity_standard_deviation_y_axis
DATA TYPE: Numeric
DESCRIPTION: average of frequency body angular velocity standard deviation y axis
VARIABLE NAME: frequency_body_angular_velocity_standard_deviation_z_axis
DATA TYPE: Numeric
DESCRIPTION: average of frequency body angular velocity standard deviation z axis
VARIABLE NAME: frequency_body_angular_velocity_mean_frequency_x_axis
DATA TYPE: Numeric
DESCRIPTION: average of frequency body angular velocity mean frequency x axis
VARIABLE NAME: frequency_body_angular_velocity_mean_frequency_y_axis
DATA TYPE: Numeric
DESCRIPTION: average of frequency body angular velocity mean frequency y axis
VARIABLE NAME: frequency_body_angular_velocity_mean_frequency_z_axis
DATA TYPE: Numeric
DESCRIPTION: average of frequency body angular velocity mean frequency z axis
VARIABLE NAME: frequency_body_acceleration_magnitude_mean
DATA TYPE: Numeric
DESCRIPTION: average of frequency body acceleration magnitude mean
VARIABLE NAME: frequency_body_acceleration_magnitude_standard_deviation
DATA TYPE: Numeric
DESCRIPTION: average of frequency body acceleration magnitude standard deviation
VARIABLE NAME: frequency_body_acceleration_magnitude_mean_frequency
DATA TYPE: Numeric
DESCRIPTION: average of frequency body acceleration magnitude mean frequency
VARIABLE NAME: frequency_body_acceleration_jerk_magnitude_mean
DATA TYPE: Numeric
DESCRIPTION: average of frequency body acceleration jerk magnitude mean
VARIABLE NAME: frequency_body_acceleration_jerk_magnitude_standard_deviation
DATA TYPE: Numeric
DESCRIPTION: average of frequency body acceleration jerk magnitude standard deviation
VARIABLE NAME: frequency_body_acceleration_jerk_magnitude_mean_frequency
DATA TYPE: Numeric
DESCRIPTION: average of frequency body acceleration jerk magnitude mean frequency
VARIABLE NAME: frequency_body_angular_velocity_magnitude_mean
DATA TYPE: Numeric
DESCRIPTION: average of frequency body angular velocity magnitude mean
VARIABLE NAME: frequency_body_angular_velocity_magnitude_standard_deviation
DATA TYPE: Numeric
DESCRIPTION: average of frequency body angular velocity magnitude standard deviation
VARIABLE NAME: frequency_body_angular_velocity_magnitude_mean_frequency
DATA TYPE: Numeric
DESCRIPTION: average of frequency body angular velocity magnitude mean frequency
VARIABLE NAME: frequency_body_angular_velocity_jerk_magnitude_mean
DATA TYPE: Numeric
DESCRIPTION: average of frequency body angular velocity jerk magnitude mean
VARIABLE NAME: frequency_body_angular_velocity_jerk_magnitude_standard_deviation
DATA TYPE: Numeric
DESCRIPTION: average of frequency body angular velocity jerk magnitude standard deviation
VARIABLE NAME: frequency_body_angular_velocity_jerk_magnitude_mean_frequency
DATA TYPE: Numeric
DESCRIPTION: average of frequency body angular velocity jerk magnitude mean frequency

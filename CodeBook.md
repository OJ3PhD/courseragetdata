Code Book for Coursera Getting and Cleaning Data course project 
===============
Original data are from Human Activity Recognition Using Smartphones Dataset
Version 1.0.
Downloaded from: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

### About the data
The original data were recorded from a group of 30 volunteers performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Original data includes a 561-feature vector with time and frequency domain variables. The script run_analysis.R filters the original data to include only mean and stadard deviation features and then averages these features by subject and activity. This analysis results in a data set with 181 rows representing all unique subject/activity pairings and 81 columns representing the averaged mean and standard deviation variables. Below is a table

|Variable Name|Data type|Description|
|————|————|————|
|subject|Integer|Subject number in the original study|
|activity|Factor w/ 6 levels |Activity subject was engaged in while measurements were taken: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING|
|time_body_acceleration_mean_x_axis|Numeric|average of time body acceleration mean x axis|
|time_body_acceleration_mean_y_axis|Numeric|average of time body acceleration mean y axis|
|time_body_acceleration_mean_z_axis|Numeric|average of time body acceleration mean z axis|
|time_body_acceleration_standard_deviation_x_axis|Numeric|average of time body acceleration standard deviation x axis|
|time_body_acceleration_standard_deviation_y_axis|Numeric|average of time body acceleration standard deviation y axis|
|time_body_acceleration_standard_deviation_z_axis|Numeric|average of time body acceleration standard deviation z axis|
|time_gravity_acceleration_mean_x_axis|Numeric|average of time gravity acceleration mean x axis|
|time_gravity_acceleration_mean_y_axis|Numeric|average of time gravity acceleration mean y axis|
|time_gravity_acceleration_mean_z_axis|Numeric|average of time gravity acceleration mean z axis|
|time_gravity_acceleration_standard_deviation_x_axis|Numeric|average of time gravity acceleration standard deviation x axis|
|time_gravity_acceleration_standard_deviation_y_axis|Numeric|average of time gravity acceleration standard deviation y axis|
|time_gravity_acceleration_standard_deviation_z_axis|Numeric|average of time gravity acceleration standard deviation z axis|
|time_body_acceleration_jerk_mean_x_axis|Numeric|average of time body acceleration jerk mean x axis|
|time_body_acceleration_jerk_mean_y_axis|Numeric|average of time body acceleration jerk mean y axis|
|time_body_acceleration_jerk_mean_z_axis|Numeric|average of time body acceleration jerk mean z axis|
|time_body_acceleration_jerk_standard_deviation_x_axis|Numeric|average of time body acceleration jerk standard deviation x axis|
|time_body_acceleration_jerk_standard_deviation_y_axis|Numeric|average of time body acceleration jerk standard deviation y axis|
|time_body_acceleration_jerk_standard_deviation_z_axis|Numeric|average of time body acceleration jerk standard deviation z axis|
|time_body_angular_velocity_mean_x_axis|Numeric|average of time body angular velocity mean x axis|
|time_body_angular_velocity_mean_y_axis|Numeric|average of time body angular velocity mean y axis|
|time_body_angular_velocity_mean_z_axis|Numeric|average of time body angular velocity mean z axis|
|time_body_angular_velocity_standard_deviation_x_axis|Numeric|average of time body angular velocity standard deviation x axis|
|time_body_angular_velocity_standard_deviation_y_axis|Numeric|average of time body angular velocity standard deviation y axis|
|time_body_angular_velocity_standard_deviation_z_axis|Numeric|average of time body angular velocity standard deviation z axis|
|time_body_angular_velocity_jerk_mean_x_axis|Numeric|average of time body angular velocity jerk mean x axis|
|time_body_angular_velocity_jerk_mean_y_axis|Numeric|average of time body angular velocity jerk mean y axis|
|time_body_angular_velocity_jerk_mean_z_axis|Numeric|average of time body angular velocity jerk mean z axis|
|time_body_angular_velocity_jerk_standard_deviation_x_axis|Numeric|average of time body angular velocity jerk standard deviation x axis|
|time_body_angular_velocity_jerk_standard_deviation_y_axis|Numeric|average of time body angular velocity jerk standard deviation y axis|
|time_body_angular_velocity_jerk_standard_deviation_z_axis|Numeric|average of time body angular velocity jerk standard deviation z axis|
|time_body_acceleration_magnitude_mean|Numeric|average of time body acceleration magnitude mean|
|time_body_acceleration_magnitude_standard_deviation|Numeric|average of time body acceleration magnitude standard deviation|
|time_gravity_acceleration_magnitude_mean|Numeric|average of time gravity acceleration magnitude mean|
|time_gravity_acceleration_magnitude_standard_deviation|Numeric|average of time gravity acceleration magnitude standard deviation|
|time_body_acceleration_jerk_magnitude_mean|Numeric|average of time body acceleration jerk magnitude mean|
|time_body_acceleration_jerk_magnitude_standard_deviation|Numeric|average of time body acceleration jerk magnitude standard deviation|
|time_body_angular_velocity_magnitude_mean|Numeric|average of time body angular velocity magnitude mean|
|time_body_angular_velocity_magnitude_standard_deviation|Numeric|average of time body angular velocity magnitude standard deviation|
|time_body_angular_velocity_jerk_magnitude_mean|Numeric|average of time body angular velocity jerk magnitude mean|
|time_body_angular_velocity_jerk_magnitude_standard_deviation|Numeric|average of time body angular velocity jerk magnitude standard deviation|
|frequency_body_acceleration_mean_x_axis|Numeric|average of frequency body acceleration mean x axis|
|frequency_body_acceleration_mean_y_axis|Numeric|average of frequency body acceleration mean y axis|
|frequency_body_acceleration_mean_z_axis|Numeric|average of frequency body acceleration mean z axis|
|frequency_body_acceleration_standard_deviation_x_axis|Numeric|average of frequency body acceleration standard deviation x axis|
|frequency_body_acceleration_standard_deviation_y_axis|Numeric|average of frequency body acceleration standard deviation y axis|
|frequency_body_acceleration_standard_deviation_z_axis|Numeric|average of frequency body acceleration standard deviation z axis|
|frequency_body_acceleration_mean_frequency_x_axis|Numeric|average of frequency body acceleration mean frequency x axis|
|frequency_body_acceleration_mean_frequency_y_axis|Numeric|average of frequency body acceleration mean frequency y axis|
|frequency_body_acceleration_mean_frequency_z_axis|Numeric|average of frequency body acceleration mean frequency z axis|
|frequency_body_acceleration_jerk_mean_x_axis|Numeric|average of frequency body acceleration jerk mean x axis|
|frequency_body_acceleration_jerk_mean_y_axis|Numeric|average of frequency body acceleration jerk mean y axis|
|frequency_body_acceleration_jerk_mean_z_axis|Numeric|average of frequency body acceleration jerk mean z axis|
|frequency_body_acceleration_jerk_standard_deviation_x_axis|Numeric|average of frequency body acceleration jerk standard deviation x axis|
|frequency_body_acceleration_jerk_standard_deviation_y_axis|Numeric|average of frequency body acceleration jerk standard deviation y axis|
|frequency_body_acceleration_jerk_standard_deviation_z_axis|Numeric|average of frequency body acceleration jerk standard deviation z axis|
|frequency_body_acceleration_jerk_mean_frequency_x_axis|Numeric|average of frequency body acceleration jerk mean frequency x axis|
|frequency_body_acceleration_jerk_mean_frequency_y_axis|Numeric|average of frequency body acceleration jerk mean frequency y axis|
|frequency_body_acceleration_jerk_mean_frequency_z_axis|Numeric|average of frequency body acceleration jerk mean frequency z axis|
|frequency_body_angular_velocity_mean_x_axis|Numeric|average of frequency body angular velocity mean x axis|
|frequency_body_angular_velocity_mean_y_axis|Numeric|average of frequency body angular velocity mean y axis|
|frequency_body_angular_velocity_mean_z_axis|Numeric|average of frequency body angular velocity mean z axis|
|frequency_body_angular_velocity_standard_deviation_x_axis|Numeric|average of frequency body angular velocity standard deviation x axis|
|frequency_body_angular_velocity_standard_deviation_y_axis|Numeric|average of frequency body angular velocity standard deviation y axis|
|frequency_body_angular_velocity_standard_deviation_z_axis|Numeric|average of frequency body angular velocity standard deviation z axis|
|frequency_body_angular_velocity_mean_frequency_x_axis|Numeric|average of frequency body angular velocity mean frequency x axis|
|frequency_body_angular_velocity_mean_frequency_y_axis|Numeric|average of frequency body angular velocity mean frequency y axis|
|frequency_body_angular_velocity_mean_frequency_z_axis|Numeric|average of frequency body angular velocity mean frequency z axis|
|frequency_body_acceleration_magnitude_mean|Numeric|average of frequency body acceleration magnitude mean|
|frequency_body_acceleration_magnitude_standard_deviation|Numeric|average of frequency body acceleration magnitude standard deviation|
|frequency_body_acceleration_magnitude_mean_frequency|Numeric|average of frequency body acceleration magnitude mean frequency|
|frequency_body_acceleration_jerk_magnitude_mean|Numeric|average of frequency body acceleration jerk magnitude mean|
|frequency_body_acceleration_jerk_magnitude_standard_deviation|Numeric|average of frequency body acceleration jerk magnitude standard deviation|
|frequency_body_acceleration_jerk_magnitude_mean_frequency|Numeric|average of frequency body acceleration jerk magnitude mean frequency|
|frequency_body_angular_velocity_magnitude_mean|Numeric|average of frequency body angular velocity magnitude mean|
|frequency_body_angular_velocity_magnitude_standard_deviation|Numeric|average of frequency body angular velocity magnitude standard deviation|
|frequency_body_angular_velocity_magnitude_mean_frequency|Numeric|average of frequency body angular velocity magnitude mean frequency|
|frequency_body_angular_velocity_jerk_magnitude_mean|Numeric|average of frequency body angular velocity jerk magnitude mean|
|frequency_body_angular_velocity_jerk_magnitude_standard_deviation|Numeric|average of frequency body angular velocity jerk magnitude standard deviation|
|frequency_body_angular_velocity_jerk_magnitude_mean_frequency|Numeric|average of frequency body angular velocity jerk magnitude mean frequency|



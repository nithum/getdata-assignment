## Introduction

The script run_analysis.R takes the data from the Human Activity Recognition dataset, found <a href = https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip>here</a>, and creates a tidy data set that outputs the average of the mean and standard deviation readings of various measurements by subject and activity type. A description of the full set of variables considered can be found in the Code Book (Codebook.md in the repository). The steps for this script follow those outlined in the Getting and Cleaning Data course assessment page on Coursera. These are:

<ol>
<li> Merges the training and the test sets to create one data set. </li>
<li> Extracts only the measurements on the mean and standard deviation for each measurement. </li>
<li> Uses descriptive activity names to name the activities in the data set. </li>
<li> Appropriately labels the data set with descriptive variable names. </li> 
<li> From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject. </li>
</ol>
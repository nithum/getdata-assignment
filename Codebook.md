## Information on the Variables

This data is based on the UCI HAR Dataset. The original data is best explained by the description they included, which we quote for the relevant variables:

"The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

<ul>
<li> tBodyAcc-XYZ </li>
<li> tGravityAcc-XYZ </li>
<li> tBodyAccJerk-XYZ </li>
<li> tBodyGyro-XYZ </li>
<li> tBodyGyroJerk-XYZ </li>
<li> tBodyAccMag </li>
<li> tGravityAccMag </li>
<li> tBodyAccJerkMag </li>
<li> tBodyGyroMag </li>
<li> tBodyGyroJerkMag </li>
<li> fBodyAcc-XYZ </li>
<li> fBodyAccJerk-XYZ </li>
<li> fBodyGyro-XYZ </li>
<li> fBodyAccMag </li>
<li> fBodyAccJerkMag </li>
<li> fBodyGyroMag </li>
<li> fBodyGyroJerkMag </li>
</ul>

The set of variables that were estimated from these signals are: 

<ul>
<li> <b>mean()</b>: Mean value </li>
<li> <b>std()</b>: Standard deviation" </li>
</ul>

Our final dataset is obtained by taking the mean of each of these variables for each subject-activity combination.
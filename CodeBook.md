#Codebook
##Data Set Information

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.
Attribute Information

For each record in the dataset it is provided:

* Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
* Triaxial Angular velocity from the gyroscope.
* Its activity label.

#####Citation Request

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

##Variable Descriptions
Variable |	Description
---------|--------------
(Ss)ubject |	Subject ID
(Aa)ctivity |	The activity performed
TimeBodyAccelerometerMean-X | 	Mean time for acceleration of body for X direction
TimeBodyAccelerometerMean-Y |	Mean time for acceleration of body for Y direction
TimeBodyAccelerometerMean-Z |	Mean time for acceleration of body for Z direction
TimeBodyAccelerometerStd-X |	Standard deviation of time for acceleration of body for X direction
TimeBodyAccelerometerStd-Y |	Standard deviation of time for acceleration of body for Y direction
TimeBodyAccelerometerStd-Z |	Standard deviation of time for acceleration of body for Z direction
TimeGravityAccelerometerMean-X | 	Mean time of acceleration of gravity for X direction
TimeGravityAccelerometerMean-Y | 	Mean time of acceleration of gravity for Y direction
TimeGravityAccelerometerMean-Z | 	Mean time of acceleration of gravity for Z direction
TimeGravityAccelerometerStd-X | 	Standard deviation of time of acceleration of gravity for X direction
TimeGravityAccelerometerStd-Y |  	Standard deviation of time of acceleration of gravity for Y direction
TimeGravityAccelerometerStd-Z | 	Standard deviation of time of acceleration of gravity for Z direction
TimeBodyAccelerometerJerkMean-X | 	Mean time of body acceleration jerk for X direction
TimeBodyAccelerometerJerkMean-Y | 	Mean time of body acceleration jerk for Y direction
TimeBodyAccelerometerJerkMean-Z | 	Mean time of body acceleration jerk for Z direction
TimeBodyAccelerometerJerkStd-X | 	Standard deviation of time of body acceleration jerk for X direction
TimeBodyAccelerometerJerkStd-Y | 	Standard deviation of time of body acceleration jerk for Y direction
TimeBodyAccelerometerJerkStd-Z |  	Standard deviation of time of body acceleration jerk for Z direction
TimeBodyGyroscopeMean-X | 	Mean body gyroscope measurement for X direction
TimeBodyGyroscopeMean-Y |  	Mean body gyroscope measurement for Y direction
TimeBodyGyroscopeMean-Z | 	Mean body gyroscope measurement for Z direction
TimeBodyGyroscopeStd-X |  	Standard deviation of body gyroscope measurement for X direction
TimeBodyGyroscopeStd-Y |  	Standard deviation of body gyroscope measurement for Y direction
TimeBodyGyroscopeStd-Z |  	Standard deviation of body gyroscope measurement for Z direction
TimeBodyGyroscopeJerkMean-X | 	Mean jerk signal of body for X direction
TimeBodyGyroscopeJerkMean-Y | 	Mean jerk signal of body for Y direction
TimeBodyGyroscopeJerkMean-Z |  	Mean jerk signal of body for Z direction
TimeBodyGyroscopeJerkStd-X |  	Standard deviation of jerk signal of body for X direction
TimeBodyGyroscopeJerkStd-Y | Standard deviation of jerk signal of body for Y direction
TimeBodyGyroscopeJerkStd-Z |	Standard deviation of jerk signal of body for Z direction
TimeBodyAccerelometerMagnitudeMean | 	Mean magnitude of body Acc
TimeBodyAccerelometerMagnitudeStd | 	Standard deviation of magnitude of body Acc
TimeGravityAccerelometerMagnitudeMean |	Mean gravity acceleration magnitude
TimeGravityAccerelometerMagnitudeMean |	Standard deviation of gravity acceleration magnitude
TimeBodyAccerelometerJerkMagnitudeMean | 	Mean magnitude of body acceleration jerk
TimeBodyAccerelometerJerkMagnitudeStd | 	Standard deviation of magnitude of body acceleration jerk
TimeBodyGyroscopeMagnitudeMean | 	Mean magnitude of body gyroscope measurement
TimeBodyGyroscopeMagnitudeStd | 	Standard deviation of magnitude of body gyroscope measurement
TimeBodyGyroscopeJerkMagnitudeMean |	Mean magnitude of body body gyroscope jerk measurement
TimeBodyGyroscopeJerkMagnitudeStd |	Standard deviation of magnitude of body body gyroscope jerk measurement
FrequencyBodyAccelerometerMean-X | 	Mean frequency of body acceleration for X direction
FrequencyBodyAccelerometerMean-Y | 	Mean frequency of body acceleration for Y direction
FrequencyBodyAccelerometerMean-Z | 	Mean frequency of body acceleration for Z direction
FrequencyBodyAccelerometerStd-X | 	Standard deviation of frequency of body acceleration for X direction
FrequencyBodyAccelerometerStd-Y | 	Standard deviation of frequency of body acceleration for Y direction
FrequencyBodyAccelerometerStd-Z | 	Standard deviation of frequency of body acceleration for Z direction
FrequencyBodyAccelerometerJerkMean-X | 	Mean frequency of body accerlation jerk for X direction
FrequencyBodyAccelerometerJerkMean-Y | 	Mean frequency of body accerlation jerk for Y direction
FrequencyBodyAccelerometerJerkMean-Z | 	Mean frequency of body accerlation jerk for Z direction
FrequencyBodyAccelerometerJerkStd-X | 	Standard deviation frequency of body accerlation jerk for X direction
FrequencyBodyAccelerometerJerkStd-Y | 	Standard deviation frequency of body accerlation jerk for Y direction
FrequencyBodyAccelerometerJerkStd-Z | 	Standard deviation frequency of body accerlation jerk for Z direction
FrequencyBodyGyroscopeMean-X | Mean frequency of body gyroscope measurement for X direction
FrequencyBodyGyroscopeMean-Y |	Mean frequency of body gyroscope measurement for Y direction
FrequencyBodyGyroscopeMean-Z |	Mean frequency of body gyroscope measurement for Z direction
FrequencyBodyGyroscopeStd-X |	Standard deviation frequency of body gyroscope measurement for X direction
FrequencyBodyGyroscopeStd-Y | 	Standard deviation frequency of body gyroscope measurement for Y direction
FrequencyBodyGyroscopeStd-Z | 	Standard deviation frequency of body gyroscope measurement for Z direction
FrequencyBodyAccelerometerMagnitudeMean |	Mean frequency of body acceleration magnitude
FrequencyBodyAccelerometerMagnitudeStd |	Standard deviation of frequency of body acceleration magnitude
FrequencyBodyAccelerometerJerkMagnitudeMean | 	Mean frequency of body acceleration jerk magnitude
FrequencyBodyAccelerometerJerkMagnitudeStd | 	Standard deviation of frequency of body acceleration jerk magnitude
FrequencyBodyGyroscopeMagnitudeMean |	Mean frequency of magnitude of body gyroscope measurement
FrequencyBodyGyroscopeMagnitudeStd | 	Standard deviation of frequency of magnitude of body gyroscope measurement
FrequencyBodyGyroscopeJerkMagnitudeMean | 	Mean frequency of magnitude of body gyroscope jerk measurement
FrequencyBodyGyroscopeJerkMagnitudeStd |	Standard deviation frequency of magnitude of body gyroscope jerk measurement

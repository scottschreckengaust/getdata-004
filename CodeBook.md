Code Book for Getting and Cleaning Data Course Project
========================================================

## Summary Choices
 From the  data, only mean and standard deviation measurements from the raw data were summarized by averaging and agregating on subject and activity.


## Study Design
 The study was designed by:
* First getting the dataset following the publication:

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

* Then, loading each of the testing and training data
## Code book


## Variables
### Time Domain
#### Standard Gravity units (g)
 TimeDomainBodyAccelerationMeanXAxis = The mean body acceleration along the x-axis in standard gravity units.
 TimeDomainBodyAccelerationMeanYAxis = The mean body acceleration along the y-axis in standard gravity units.
 TimeDomainBodyAccelerationMeanZAxis = The mean body acceleration along the z-axis in standard gravity units.

 TimeDomainBodyAccelerationStandardDeviationXAxis = The standard deviation of the body acceleration along the x-axis in standard gravity units.
 TimeDomainBodyAccelerationStandardDeviationYAxis = The standard deviation of the body acceleration along the y-axis in standard gravity units.
 TimeDomainBodyAccelerationStandardDeviationZAxis = The standard deviation of the body acceleration along the z-axis in standard gravity units.

 TimeDomainGravityAccelerationMeanXAxis = The mean gravity acceleration along the x-axis in standard gravity units.
 TimeDomainGravityAccelerationMeanYAxis = The mean gravity acceleration along the y-axis in standard gravity units.
 TimeDomainGravityAccelerationMeanZAxis = The mean gravity acceleration along the z-axis in standard gravity units.

 TimeDomainGravityAccelerationStandardDeviationXAxis = The standard deviation of gravity along the x-axis in standard gravity units.
 TimeDomainGravityAccelerationStandardDeviationYAxis = The standard deviation of gravity along the y-axis in standard gravity units.
 TimeDomainGravityAccelerationStandardDeviationZAxis = The standard deviation of gravity along the z-axis in standard gravity units.

 TimeDomainBodyAccelerationJerkSignalMeanXAxis = The mean jerk signal acceleration along the x-axis in standard gravity units.
 TimeDomainBodyAccelerationJerkSignalMeanYAxis = The mean jerk signal acceleration along the y-axis in standard gravity units.
 TimeDomainBodyAccelerationJerkSignalMeanZAxis = The mean jerk signal acceleration along the z-axis in standard gravity units.

 TimeDomainBodyAccelerationJerkSignalStandardDeviationXAxis = The standard deviation of the jerk signal acceleration along the x-axis in standard gravity units.
 TimeDomainBodyAccelerationJerkSignalStandardDeviationYAxis = The standard deviation of the jerk signal acceleration along the y-axis in standard gravity units.
 TimeDomainBodyAccelerationJerkSignalStandardDeviationZAxis = The standard deviation of the jerk signal acceleration along the z-axis in standard gravity units.

 TimeDomainBodyGyroscopeMeanXAxis = The mean body gyroscope angular velocity along the x-axis in radians per second.
 TimeDomainBodyGyroscopeMeanYAxis = The mean body gyroscope angular velocity along the y-axis in radians per second.
 TimeDomainBodyGyroscopeMeanZAxis = The mean body gyroscope angular velocity along the z-axis in radians per second.

 TimeDomainBodyGyroscopeStandardDeviationXAxis = The standard deviation of the body gyroscope velocity along the x-axis in radians per second.
 TimeDomainBodyGyroscopeStandardDeviationYAxis = The standard deviation of the body gyroscope velocity along the y-axis in radians per second.
 TimeDomainBodyGyroscopeStandardDeviationZAxis = The standard deviation of the body gyroscope velocity along the z-axis in radians per second.

 TimeDomainBodyGyroscopeJerkSignalMeanXAxis = The mean body gyroscope velocity jerk signal along the x-axis in radians per second.
 TimeDomainBodyGyroscopeJerkSignalMeanYAxis = The mean body gyroscope velocity jerk signal along the y-axis in radians per second.
 TimeDomainBodyGyroscopeJerkSignalMeanZAxis = The mean body gyroscope velocity jerk signal along the z-axis in radians per second.

 TimeDomainBodyGyroscopeJerkSignalStandardDeviationXAxis = The standard deviation of the body gyroscope angular velocity jerk signal along the x-axis.
 TimeDomainBodyGyroscopeJerkSignalStandardDeviationYAxis = The standard deviation of the body gyroscope angular velocity jerk signal along the y-axis.
 TimeDomainBodyGyroscopeJerkSignalStandardDeviationZAxis = The standard deviation of the body gyroscope angular velocity jerk signal along the z-axis.

 TimeDomainBodyAccelerationMagnitudeMean = The mean magnitude of the body acceleration in standard gravity units.
 TimeDomainBodyAccelerationMagnitudeStandardDeviation = The standard deviation of the magnitude of body acceleration in standard gravity units.
 TimeDomainGravityAccelerationMagnitudeMean = The mean magnitude of the acceleration of gravity in standard gravity units.
 TimeDomainGravityAccelerationMagnitudeStandardDeviation = The standard deviation of the magnitude of acceleration of gravity in standard gravity units.
 TimeDomainBodyAccelerationJerkSignalMagnitudeMean = The mean magnitude of jerk signal for body acceleration in standard gravity units.
 TimeDomainBodyAccelerationJerkSignalMagnitudeStandardDeviation = The standard deviation of the jerk signal for the body acceleration in standard gravity units.
 TimeDomainBodyGyroscopeMagnitudeMean = The mean magnitude of gyroscope angular velocity in radians per second.
 TimeDomainBodyGyroscopeMagnitudeStandardDeviation = The standard deviation of the gyroscope angular velocity in radians per second.
 TimeDomainBodyGyroscopeJerkSignalMagnitudeMean = The mean magnitude of the gyroscope angular velocity jerk signal in radians per second.
 TimeDomainBodyGyroscopeJerkSignalMagnitudeStandardDeviation = The standard deviation of the gyroscope angular velocity jerk signal in radians per second.

### Fourier Transformed Values.
 FourierTransformBodyAccelerationMeanXAxis = The Fourier transform of the mean body acceleration along the x-axis in standard gravity units.
 FourierTransformBodyAccelerationMeanYAxis = The Fourier transform of the mean body acceleration along the y-axis in standard gravity units.
 FourierTransformBodyAccelerationMeanZAxis = The Fourier transform of the mean body acceleration along the z-axis in standard gravity units.

 FourierTransformBodyAccelerationStandardDeviationXAxis= The standard deviation of the Fourier transform of the body acceleration along the x-axis in standard gravity units.
 FourierTransformBodyAccelerationStandardDeviationYAxis= The standard deviation of the Fourier transform of the body acceleration along the y-axis in standard gravity units.
 FourierTransformBodyAccelerationStandardDeviationZAxis= The standard deviation of the Fourier transform of the body acceleration along the z-axis in standard gravity units.

 FourierTransformBodyAccelerationJerkSignalMeanXAxis = The mean jerk signal of the body acceleration along the x-axis in standard gavity units.
 FourierTransformBodyAccelerationJerkSignalMeanYAxis = The mean jerk signal of the body acceleration along the y-axis in standard gavity units.
 FourierTransformBodyAccelerationJerkSignalMeanZAxis = The mean jerk signal of the body acceleration along the z-axis in standard gavity units.

 FourierTransformBodyAccelerationJerkSignalStandardDeviationXAxis = The standard deviation of the jerk signal for the body acceleration along the x-axis in standard gravity units.
 FourierTransformBodyAccelerationJerkSignalStandardDeviationYAxis = The standard deviation of the jerk signal for the body acceleration along the y-axis in standard gravity units.
 FourierTransformBodyAccelerationJerkSignalStandardDeviationZAxis = The standard deviation of the jerk signal for the body acceleration along the z-axis in standard gravity units.

 FourierTransformBodyGyroscopeMeanXAxis = The mean fourier transform of the gyroscope angular velocity along the x-axis in radians per second.
 FourierTransformBodyGyroscopeMeanYAxis = The mean fourier transform of the gyroscope angular velocity along the y-axis in radians per second.
 FourierTransformBodyGyroscopeMeanZAxis = The mean fourier transform of the gyroscope angular velocity along the z-axis in radians per second.

 FourierTransformBodyGyroscopeStandardDeviationXAxis = The standard deviation for the fourier transform for the gyroscope angular velocity along the x-axis.
 FourierTransformBodyGyroscopeStandardDeviationYAxis = The standard deviation for the fourier transform for the gyroscope angular velocity along the y-axis.
 FourierTransformBodyGyroscopeStandardDeviationZAxis = The standard deviation for the fourier transform for the gyroscope angular velocity along the z-axis.

 FourierTransformBodyAccelerationMagnitudeMean = The mean magnitude for body acceleration in standard gravity units.
 FourierTransformBodyAccelerationMagnitudeStandardDeviation = The standard deviation for the body acceleration in standard gravity units.
 FourierTransformBodyBodyAccelerationJerkSignalMagnitudeMean = The mean jerk signal for the body acceleration in standard gravity units.
 FourierTransformBodyBodyAccelerationJerkSignalMagnitudeStandardDeviation = The standard deviation of the jerk signal for the body acceleration in standard gravity units.
 FourierTransformBodyBodyGyroscopeMagnitudeMean = The mean body gyroscope angular velocity in radians per second.
 FourierTransformBodyBodyGyroscopeMagnitudeStandardDeviation = The standard deviation for the gyroscope angular velocity in radians per second.
 FourierTransformBodyBodyGyroscopeJerkSignalMagnitudeMean = The mean jerk signal for the body gyroscope angular velocity in radians per second.
 FourierTransformBodyBodyGyroscopeJerkSignalMagnitudeStandardDeviation = The standard deviation of the jerk signal for the body gyroscope angular velocity in radians per second.


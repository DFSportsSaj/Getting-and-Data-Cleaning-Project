#Code Book for Course Project


##Below are the columns in the tidy data set that was submitted as a txt file for the course project! There are 68 in total.

1. **subjectID**
    * contains a numerical value ranging from 1 to 30 to identify which of the 30 particpants the data pertains too
2. **Activity**
    * contains a factor value defining which activity the data pertains to [Walking, Walking Upstairs, Walking Downstairs, Sitting, Standing, Laying]
   
   '''
   **NOTE: In order for the user to derive the meaning of each variable, I will provide some further insight into the column names**
   
   *The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.* 
   
   *Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).*
   
   *Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).*
   
   *These signals were used to estimate variables of the feature vector for each pattern:*  
   *'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.*
   
   *"_mean" and "_std" denote the mean and standard deviation respectively. The raw data contained other measures, but for the sake of this project we were asked to extract variables pertaining to mean's and standard dev's only.* 
   
   *Since we were asked to average all the columns based on subjectID and Activity, all the variables are denoted with "_avg"*
   '''
3. **tBodyAcc_mean_X_avg**
4. **tBodyAcc_mean_Y_avg**
5. **tBodyAcc_mean_Z_avg**
6. **tBodyAcc_std_X_avg**
7. **tBodyAcc_std_Y_avg**
8. **tBodyAcc_std_Z_avg**
9. **tGravityAcc_mean_X_avg**
10. **tGravityAcc_mean_Y_avg**
11. **tGravityAcc_mean_Z_avg**
12. **tGravityAcc_std_X_avg**
13. **tGravityAcc_std_Y_avg**
14. **tGravityAcc_std_Z_avg**
15. **tBodyAccJerk_mean_X_avg**
16. **tBodyAccJerk_mean_Y_avg**
17. **tBodyAccJerk_mean_Z_avg**
18. **tBodyAccJerk_std_X_avg**
19. **tBodyAccJerk_std_Y_avg**
20. **tBodyAccJerk_std_Z_avg**
21. **tBodyGyro_mean_X_avg**
22. **tBodyGyro_mean_Y_avg**
23. **tBodyGyro_mean_Z_avg**
24. **tBodyGyro_std_X_avg**
25. **tBodyGyro_std_Y_avg**
26. **tBodyGyro_std_Z_avg**
27. **tBodyGyroJerk_mean_X_avg**
28. **tBodyGyroJerk_mean_Y_avg**
29. **tBodyGyroJerk_mean_Z_avg**
30. **tBodyGyroJerk_std_X_avg**
31. **tBodyGyroJerk_std_Y_avg**
32. **tBodyGyroJerk_std_Z_avg**
33. **tBodyAccMag_mean_avg**
34. **tBodyAccMag_std_avg**
35. **tGravityAccMag_mean_avg**
36. **tGravityAccMag_std_avg**
37. **tBodyAccJerkMag_mean_avg**
38. **tBodyAccJerkMag_std_avg**
39. **tBodyGyroMag_mean_avg**
40. **tBodyGyroMag_std_avg**
41. **tBodyGyroJerkMag_mean_avg**
42. **tBodyGyroJerkMag_std_avg**
43. **fBodyAcc_mean_X_avg**
44. **fBodyAcc_mean_Y_avg**
45. **fBodyAcc_mean_Z_avg**
46. **fBodyAcc_std_X_avg**
47. **fBodyAcc_std_Y_avg**
48. **fBodyAcc_std_Z_avg**
49. **fBodyAccJerk_mean_X_avg**
50. **fBodyAccJerk_mean_Y_avg**
51. **fBodyAccJerk_mean_Z_avg**
52. **fBodyAccJerk_std_X_avg**
53. **fBodyAccJerk_std_Y_avg**
54. **fBodyAccJerk_std_Z_avg**
55. **fBodyGyro_mean_X_avg**
56. **fBodyGyro_mean_Y_avg**
57. **fBodyGyro_mean_Z_avg**
58. **fBodyGyro_std_X_avg**
59. **fBodyGyro_std_Y_avg**
60. **fBodyGyro_std_Z_avg**
61. **fBodyAccMag_mean_avg**
62. **fBodyAccMag_std_avg**
63. **fBodyBodyAccJerkMag_mean_avg**
64. **fBodyBodyAccJerkMag_std_avg**
65. **fBodyBodyGyroMag_mean_avg**
66. **fBodyBodyGyroMag_std_avg**
67. **fBodyBodyGyroJerkMag_mean_avg**
68. **fBodyBodyGyroJerkMag_std_avg**








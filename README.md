# Getting-and-Data-Cleaning-Project
##Used for Coursera Data Science Spec-Cource: Getting and Cleaning Data

###Regarding the Script submitted for the project "run_analysis.R"

The script imports data from the various text files in the "UCI HAR Dataset" folder that should be located in your working directory.

Script:
*2. Import test and train Activity ID's (numeric values) from y_test.txt and y_train.txt respectively
*3. Import test and train Subject ID's (numerica values) from subject_test.txt and subject_train.txt respectivley
*4. Combine subject and Activity ID's into one data frame
*5. Translate Activity ID's into a Activities (character variable i.e. "Walking", "Laying" etc.) for both test and train sets
*6. Import variable names from features.txt
*7.Filter out the variable names pertaining to mean's and standard deviations.
*8. Filter out unsuitable characters from variable names
*9. Create a subset of the test and train sets that only have columns with mean and standard dev values
*10. append the Subject ID and Activity to both test and train data sets
*11. Combine test and train data sets into master data set
*12. Use aggregate() to calculate column means by subject ID and Activity and store in meanData dataframe
*13. Output meanData data frame.

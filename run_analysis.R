##Note: Make sure you are in the directory where the "UCI HAR Dataset" folder is located!!

################################################################################
#Import Data
testData<-read.table("UCI HAR Dataset/test/X_test.txt")
trainData<-read.table("UCI HAR Dataset/train/X_train.txt")

#Import Activity id's
testLabel<-read.table("UCI HAR Dataset/test/y_test.txt")
trainLabel<-read.table("UCI HAR Dataset/train/y_train.txt")

#Import subject ID's
testSubject<-read.table("UCI HAR Dataset/test/subject_test.txt")
trainSubject<-read.table("UCI HAR Dataset/train/subject_train.txt")

#change names of subject data frames
colnames(testSubject)<-"subjectID"
colnames(trainSubject)<-"subjectID"

################################################################################
#create an activity translation table 

#bind test subjects to activity id's
testsubLab<-cbind(testSubject,testLabel)
trainsubLab<-cbind(trainSubject,trainLabel)

#set up loop
endtest = dim(testSubject)[1]
endtrain = dim(trainSubject)[1]

#find translations for test set
i = 1


for (i in 1:endtest){
    if (testsubLab$V1[i] == 1){
        testsubLab$Activity[i] <- "Walking"
    }else if (testsubLab$V1[i] == 2){
        testsubLab$Activity[i] <- "Walking_Upstairs"
    
    }else if (testsubLab$V1[i] == 3){
        testsubLab$Activity[i] <- "Walking_Downstairs"
    
    }else if (testsubLab$V1[i] == 4){
        testsubLab$Activity[i] <- "Sitting"
    
    }else if (testsubLab$V1[i] == 5){
        testsubLab$Activity[i] <- "standing"
    } else {
        testsubLab$Activity[i] <- "Laying"
    }
}

#find translations for train set
j = 1

for (j in 1:endtrain){
    if (trainsubLab$V1[j] == 1){
        trainsubLab$Activity[j] <- "Walking"
    }else if (trainsubLab$V1[j] == 2){
        trainsubLab$Activity[j] <- "Walking_Upstairs"
        
    }else if (trainsubLab$V1[j] == 3){
        trainsubLab$Activity[j] <- "Walking_Downstairs"
        
    }else if (trainsubLab$V1[j] == 4){
        trainsubLab$Activity[j] <- "Sitting"
        
    }else if (trainsubLab$V1[j] == 5){
        trainsubLab$Activity[j] <- "standing"
    } else {
        trainsubLab$Activity[j] <- "Laying"
    }
}

################################################################################
#Grab columns that contain means and std dev's
varNames<-read.table("UCI HAR Dataset/features.txt")

#convert from data frame to data table
varNames<-data.table(varNames)

#filter on var names with mean() and std()
cleanNames<-varNames[like(V2,"mean()")|like(V2,"std()")]

#filter out meanFreq
filter<-cleanNames[!like(V2,"meanFreq")]

#get column values to filter test and training data
k= 1
colmIndx <-dim(filter)[1]

for (k in 1:colmIndx){
    
    filter$mycol[k]<-paste("V",filter$V1[k], sep="")
}

mycol<-filter$mycol

#remove symbols so column names are valid in R
filter$validnames<-gsub("\\()", "", filter$V2)
filter$validnames<-gsub("\\()", "", filter$V2)
filter$final<-gsub("-", "_", filter$validnames)

############################################################################
#create subsets that contain only columns pertaining to means and std devs
subtest<-testData[mycol]
subtrain<-trainData[mycol]

#add column names
colnames(subtest)<-filter$final
colnames(subtrain)<-filter$final

#add the subject, and activity columns
newtestData<-cbind(testsubLab[,c(1,3)],subtest)
newtrainData<-cbind(trainsubLab[,c(1,3)],subtrain)

#combine test and training set
masterData<-rbind(newtestData,newtrainData)

testAgg<-aggregate(masterData,by=list(masterData$subjectID, masterData$Activity),FUN = mean, na.rm=TRUE)

#remove dup columns
meanData<-testAgg[,-c(3,4)]

#rename columns in meanData for Grouping in columns from aggregate()
colnames(meanData)[1]<-"subjectID"
colnames(meanData)[2]<-"Activity"

k= 3
colmIndx <-dim(filter)[1]

for (k in 3:colmIndx){
    
    colnames(meanData)[k]<-paste(colnames(meanData)[k],"avg", sep="_")
}


meanData

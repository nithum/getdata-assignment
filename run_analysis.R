#setwd('~/Documents/Coding/getdata - Assignment/')

trainX <- read.csv('./UCI HAR Dataset/train/X_train.txt', sep = '', header = FALSE)
trainY <- read.csv('./UCI HAR Dataset/train/y_train.txt', sep = '', header = FALSE)
trainSubj <- read.csv('./UCI HAR Dataset/train/subject_train.txt', sep = '', header = FALSE)
testX <- read.csv('./UCI HAR Dataset/test/X_test.txt', sep = '', header = FALSE)
testY <- read.csv('./UCI HAR Dataset/test/y_test.txt', sep = '', header = FALSE)
testSubj <- read.csv('./UCI HAR Dataset/test/subject_test.txt', sep = '', header = FALSE)
features <- read.csv('./UCI HAR Dataset/features.txt', sep = '', header = FALSE)
actLabels <- read.csv('./UCI HAR Dataset/activity_labels.txt', sep = '', header = FALSE)

colnames(testX) <- features$V2
colnames(trainX) <- features$V2
colnames(trainY) <- c('Activity')
colnames(testY) <- c('Activity')
colnames(trainSubj) <- c('Subject')
colnames(testSubj) <- c('Subject')

trainXY <- cbind(trainY,trainX)
testXY <- cbind(testY,testX)
trainData <- cbind(trainSubj,trainXY)
testData <- cbind(testSubj,testXY)

mergedData <- rbind(trainData,testData)

meanCols <- grep(".*mean[(].*", features$V2)+2
stdCols <- grep(".*std().*", features$V2)+2
goodCols <- c(1,2,meanCols, stdCols)

selectedData <- mergedData[,goodCols]
selectedData$LabelledActivity <- actLabels[selectedData$Activity,2]
output <- aggregate(selectedData[,c(-1,-2,-69)], by = list(Activities = selectedData$LabelledActivity, Subjects = selectedData$Subject), mean)
write.table(output,'output.txt',row.names = FALSE)

# Read activity labels
activity_labels<-read.table("UCI HAR Dataset/activity_labels.txt",sep="",
                            stringsAsFactors=FALSE)
# Read Variable labels
variable_labels<-read.table("UCI HAR Dataset/features.txt",sep="",
                            stringsAsFactors=FALSE)
# Read different datasets into R
X_test<-read.table("UCI HAR Dataset/test/X_test.txt",sep="")
activity_test<-read.table("UCI HAR Dataset/test/y_test.txt",sep="")
subject_test<-read.table("UCI HAR Dataset/test/subject_test.txt",sep="")
test<-cbind(subject_test,activity_test,X_test)
X_train<-read.table("UCI HAR Dataset/train/X_train.txt",sep="")
activity_train<-read.table("UCI HAR Dataset/train/y_train.txt",sep="")
subject_train<-read.table("UCI HAR Dataset/train/subject_train.txt",sep="")
train<-cbind(subject_train,activity_train,X_train)
final<-rbind(test,train)
# since we have our collective dataset we remove previous working datasets in
# order to free up memory
remove(X_test,activity_test,subject_test,test,X_train,
         activity_train,subject_train,train)
names(final)<-c("Subject","Activity",variable_labels[,2])
list_of_vars<-c(1:8,43:48,83:88,123:128,163:168,203:208,216,217,229,230,242,
                243,255,256,268:273,347:352,426:431,505,506,531,532)
tidyFinal<-final[,list_of_vars]
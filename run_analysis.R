# - Getting and Cleaning Data - Course Project - version 1a -

#Clear environment variables and memory
rm(list=ls());
gc();

# - Read data -

datadirectory <- paste( getwd() , "\\UCI HAR Dataset\\" , sep="" ) ; #Directory path to data set

#Read activity labels
activity_labels <- read.table( paste( datadirectory, "activity_labels.txt", sep="" ) ); 
names(activity_labels) <- c("ActivityCode", "ActivityLabel") ; #Rename columns

#Read feature labels
features <- read.table( paste( datadirectory, "features.txt", sep="" ) );
names(features) <- c("FeatureCode", "FeatureLabel") ; #Rename columns

# * Read Train dataset *
data <- read.table( paste( datadirectory, "train\\X_train.txt", sep="" )); #Read measurements

activities <- read.table( paste(datadirectory, "train\\y_train.txt", sep="") ); #Activity indeces
subjects <- read.table( paste(datadirectory, "train\\subject_train.txt", sep="") ); #Subject indeces

# * Read Test dataset and combine with Train dataset *
data <- rbind( data , read.table( paste( datadirectory, "test\\X_test.txt", sep="") ) ); #Read measurements

activities <- rbind( activities, read.table( paste( datadirectory, "test\\y_test.txt", sep="") ) );
subjects <- rbind( subjects, read.table( paste( datadirectory, "test\\subject_test.txt", sep="") ) );

# * Rename table and data labels *
names(activities) <- c("ActivityCode");
names(subjects) <- c("SubjectCode");
names(data) <- features$FeatureLabel ; #"Descriptive variable names" as column names for data

#Combine data with activity labels and subject
data <- cbind(data, activities, subjects);
data <- merge(data, activity_labels, by="ActivityCode"); #Include "Descriptive activity names"

#Chose columns with mean() or std() in name and also Activity and Subject labels and codes
data_colnames <- colnames(data);
chosencols <- grepl("mean()", data_colnames, fixed=TRUE) ;
chosencols <- chosencols | grepl("std()", data_colnames, fixed=TRUE) ;
chosencols <- chosencols | grepl("Activity", data_colnames, fixed=TRUE) ;
chosencols <- chosencols | grepl("Subject", data_colnames, fixed=TRUE) ;

#Select data based on chosen columns (delete useless columns)
data <- data[ , chosencols ] ;

# - Create independent dataset with average of each variable for each activity and each subject -
data_aggregated <- aggregate( 
                              data[ , !names(data) %in% c("ActivityCode","ActivityLabel","SubjectCode") ], #Get measurement columns (exclude ActivityCode, ActivityLabel and SubjectCode)
                              by=list(data$SubjectCode, data$ActivityLabel), #Lists of Subjects and Activities to group by
                              FUN=mean #Calculate average of each measurement (column)
                        );

#Write dataset into a text file
names(data_aggregated)[names(data_aggregated) == "Group.1"] <- "SubjectCode" ;
names(data_aggregated)[names(data_aggregated) == "Group.2"] <- "ActivityLabel";
write.table( data_aggregated , file="aggregated_dataset.txt", row.names=FALSE, quote=FALSE ) ;


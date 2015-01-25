# ReadMe for Coursera / Get and Clean Data / Course project

## Usage of code

1. Place "run_analysis.R" script file into your working directory of R
2. Place the data folder "UCI HAR Dataset" in the same working directory (do not place analysis script inside the dataset folder)
3. Run the analysis script in R with command: source("run_analysis.R")

## Structure of the analysis R script 

1. Clear environment variables and memory in R
2. Read data labels for activities and features from text files
3. Read train dataset, also activity and subject labels
4. Read test dataset and combine it with train dataset, also activity and subject labels
5. Rename data.table columns for dataset, also rename subject and activity vector labels
6. Combine data with activity and subject labels
7. Chose columns with "mean()" and "std()" in column names for independent dataset and remove others
8. Create independent dataset by aggregating column averages for each measurement/column by groups of Subject and Activity
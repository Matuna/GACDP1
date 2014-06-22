#Getting and Cleaning Data Project 1
======
##Project Instructions
The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.  

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

You should create one R script called run_analysis.R that does the following. 
* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement. 
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive variable names. 
* Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Good luck!
##Work Process
Compressed file is downloaded and files are extracted to a working directory(WD)
The structure should be a single subdirectory within the WD called UCI HAR Dataset, this is the default name contained
in the original compressed file.
Execute run_analysis.r contained in the WD.
##Procedure Breakdown
The UCI HAR Dataset directory contains two subdirectories: test and train which each contain datasets of gyroscope and accelerometer information gathered from volunteers using a Samsung Galaxy SII (Readme file contains more detailed information on the datasets).
This projects main goal is to merge the train and test datatasets, extract mean and std deviation measurements and present them in a tidy data set with descriptive variable names and activity names.
In order to accomplish this the following procedure is followed:
* Load datasets into R
* Merge subject and activity datasets with measurement data sets for both test and train cases
* Merge Test and train cases
* Assign names to variables

Variable information set in code Book

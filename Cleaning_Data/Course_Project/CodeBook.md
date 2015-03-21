#Description

*Data downloaded for this assignment was merged using the 'rbind()' function.
*Columns with mean and stanard deviation measures are extracted from the 
complete dataset. Columns are then renamed using the 'features.txt' file.
*Next, activity names and IDs were taken from the 'activity_labels.txt'
file and inserted into the dataset.
*Them column names were corrected.
*Finally, a new dataset was produced containing the average for each subject
and activity.

#Variables

*'y_train', 'x_train', 'y_test', x_test', 'subject_test', 'subject_train' contains
the original data that was downloaded.
*'ydata, 'xdata', and 'subjectdata' were merged using the datasets mentioned above. 
These three sets are the merged into 'completedata' which contains all values.
*'features' contains the names for the 'xdata' dataset.  Similarly, the 'activities'
variable contains the names for activities.
*Finally, 'dataaverages.txt' contains the averages of all relevant columns (i.e.
having a mean or standard deviation measure).
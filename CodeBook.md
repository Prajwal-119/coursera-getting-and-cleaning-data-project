# Code Book

This code book describes the variables, the data, and the transformations performed to clean up the data.

### The Data Source
The data represents measurements collected from the accelerometers of Samsung Galaxy S smartphones worn by 30 subjects performing six activities.

### Variables
* **subject**: The ID of the volunteer (1 to 30).
* **activity**: The type of activity performed (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING).
* **Measurements**: 79 specific sensor variables representing the mean and standard deviation of various body movements (e.g., TimeBodyAccelerometerMean, FrequencyBodyGyroscopeSTD).

### Transformations
1. Combined `X_train.txt` and `X_test.txt` into one table.
2. Filtered columns to keep only those containing "mean" or "std".
3. Replaced activity IDs (1-6) with their character names from `activity_labels.txt`.
4. Cleaned variable names (removed special characters and expanded abbreviations like 'Acc' to 'Accelerometer').
5. Calculated the mean of each variable grouped by subject and activity.

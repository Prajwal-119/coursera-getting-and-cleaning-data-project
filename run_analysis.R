# STEP 1: Load the labels
features <- read.table("features.txt", col.names = c("n","functions"))
activities <- read.table("activity_labels.txt", col.names = c("code", "activity"))

# STEP 2: Load the TEST pieces
subject_test <- read.table("test/subject_test.txt", col.names = "subject")
x_test <- read.table("test/X_test.txt", col.names = features$functions)
y_test <- read.table("test/y_test.txt", col.names = "code")

# STEP 3: Load the TRAIN pieces
subject_train <- read.table("train/subject_train.txt", col.names = "subject")
x_train <- read.table("train/X_train.txt", col.names = features$functions)
y_train <- read.table("train/y_train.txt", col.names = "code")

# STEP 4: Stack them together
X_all <- rbind(x_train, x_test)
Y_all <- rbind(y_train, y_test)
Sub_all <- rbind(subject_train, subject_test)
Merged_Data <- cbind(Sub_all, Y_all, X_all)

# STEP 5: Extract Mean and STD (Simpler way)
columns_to_keep <- grep("mean|std", features$functions, ignore.case=TRUE)
TidyData <- Merged_Data[, c(1, 2, columns_to_keep + 2)]

# STEP 6: Use word names for activities
TidyData$code <- activities[TidyData$code, 2]
colnames(TidyData)[2] <- "activity"

# STEP 7: Create the Final Table (The simplified version)
Final_Neat_Table <- aggregate(. ~subject + activity, TidyData, mean)

# STEP 8: Save the file
write.table(Final_Neat_Table, "FinalData.txt", row.name=FALSE)

print("Check your folder now - FinalData.txt should be there!")

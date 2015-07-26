setwd("~/Documents/Coursera/Getting_cleaning_data/UCI HAR Dataset/test")
data_test <- read.table('X_test.txt')
setwd("~/Documents/Coursera/Getting_cleaning_data/UCI HAR Dataset/train")
data_train <- read.table('X_train.txt')
data_all <- rbind(data_test, data_train)
#step 4 done here
setwd("~/Documents/Coursera/Getting_cleaning_data/UCI HAR Dataset")
features <- read.table('features.txt')
colnames(data_all) <- features[,2]
data_rel <- data_all[,c(1:6,41:46,81:86,121:126,161:166,201,202,214,215,227,228,240,241,253,254,266:271,345:350,424:429,503,504,516,517,529,530,542,543)]
#step 5
data_means <- sapply(data_rel, mean)
write.table(data_means,'data_final.txt' ,row.name=FALSE)


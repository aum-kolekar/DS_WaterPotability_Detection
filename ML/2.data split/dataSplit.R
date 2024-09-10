library(caret)

data = read.csv('normalized.csv')

set.seed(123)

trainIndex <- createDataPartition(data$Potability, p = 0.9, list = FALSE)

train_data = data[trainIndex, ]
test_data  = data[-trainIndex, ]


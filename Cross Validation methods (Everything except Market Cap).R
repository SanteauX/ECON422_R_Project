#Cross Validations

#Libraries
library(tidyverse)
library(caret)

#Data
data <- Monero #(insert coin here/Also Change the variable name in the original file beforehand)

#Data inspection
sample_n(data, 3)


#Training & Testing data
set.seed(123)
training.samples <- data$VolumeTraded %>%
  createDataPartition(p = 0.8, list = FALSE)
train.data <- data[training.samples,]
test.data <- data[-training.samples,]

#Building the model
model1 <- lm(VolumeTraded ~., data = train.data)
#Summarize the results
print(model1)


#Making predictions and computing R2, RMSE & MAE
predictions <- model1 %>% predict(test.data)
data.frame(R2 = R2(predictions, test.data$VolumeTraded),
           RMSE = RMSE(predictions, test.data$VolumeTraded),
           MAE = MAE(predictions, test.data$VolumeTraded))

RMSE(predictions, test.data$VolumeTraded)/mean(test.data$VolumeTraded)


#LOOCV

# Define training control
train.control <- trainControl(method = "LOOCV")
# Train the model
model2 <- train(VolumeTraded ~., data = data, method = "lm",
               trControl = train.control, na.action = na.pass)
# Summarize the results
print(model2)



#K-Fold CV

# Define training control
set.seed(123) 
train.control <- trainControl(method = "cv", number = 10)
# Train the model
model3 <- train(VolumeTraded ~., data = data, method = "lm",
               trControl = train.control, na.action = na.pass)
# Summarize the results
print(model3)


#Repeated K-Fold CV

# Define training control
set.seed(123)
train.control <- trainControl(method = "repeatedcv", 
                              number = 10, repeats = 3)
# Train the model
model4 <- train(VolumeTraded ~., data = data, method = "lm",
               trControl = train.control, na.action = na.pass)
# Summarize the results
print(model4)

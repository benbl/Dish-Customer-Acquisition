#load data
library(readxl)
DISH_data_Spring_2017 <- read_excel("C:/Users/Benjamin/Downloads/DISH data Spring 2017.xlsx", 
                                      +     skip = 2)
#clean data
View(DISH_data_Spring_2017)
data <- DISH_data_Spring_2017
data <- data[,2:4]
data <- data[1:84,]

plot(data$`#`,data$`Customers Acquired`)






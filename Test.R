#load data
library(readxl)
DISH_data_Spring_2017 <- read_excel("C:/Users/Benjamin/Downloads/DISH data Spring 2017.xlsx", 
                                      +     skip = 2)
#clean data
View(DISH_data_Spring_2017)
rawdata <- DISH_data_Spring_2017
data <- rawdata[1:84,2:4]


plot(data$`#`,data$`Customers Acquired`, type = "l", lwd = 2, col = "blue", xlab = "Time", ylab = "Customers Acquired")

#convert Year/Quarter to time data with looping
library(zoo)

test <- c("1996Q1", "1998Q3")
test <- as.Date(as.yearqtr(test, format = "%YQ%q"))


sapply(data$`Year / Quarter`, as.Date(data$`Year / Quarter`, format = "%YQ%q"))
time <- data$`Year / Quarter`

class(time)






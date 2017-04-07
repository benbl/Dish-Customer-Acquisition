#load data
library(readxl)
DISH_data_Spring_2017 <- read_excel("C:/Users/Benjamin/Downloads/DISH data Spring 2017.xlsx", 
                                      +     skip = 2)
#clean data
View(DISH_data_Spring_2017)
rawdata <- DISH_data_Spring_2017
data <- rawdata[1:84,2:4]

#convert Year/Quarter to time data with looping
library(zoo)

#test <- c("1996Q1", "1998Q3")
#test <- as.Date(as.yearqtr(test, format = "%YQ%q"))
cbind(data, timedata)

#timedata <- as.Date(as.yearqtr(data$`Year / Quarter`, format = "%YQ%q"))
#data 
plot(data$timedata, data$`Customers Acquired`, type = "l", lwd = 2, col = "blue", xlab = "Time", ylab = "Customers Acquired")
View(prophetdata)

library(prophet)
#clean data further for prophet function
prophetdata <- data[,3:4]
colnames(prophetdata) <- c("y", "ds")

#using prophet
m <- prophet(prophetdata)
future <- make_future_dataframe(m, period = 5, freq = 'quarter', include_history = TRUE)
forecast <- prophet:::predict.prophet(m, future)

plot(m, forecast)
prophet_plot_components(m, forecast)

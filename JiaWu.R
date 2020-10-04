library(readxl)
library(ggplot2)
library(dplyr)


data <- read_excel("adfc-03.xlsx", sheet="Data")
View(adfc_03)

date <- adfc_03$Date
sales <- adfc_03$Sales

summary(adfc_03)
str(adfc_03)

p <- ggplot(data, aes(x=date, y=sales)) +
  geom_line() + 
  xlab("")
p

mod1 <- lm(sales ~ date)

predict(mod1)

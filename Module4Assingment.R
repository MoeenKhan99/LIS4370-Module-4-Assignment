#Box plot and Histogram
#Creating the variables
Freq <- c(0.6, 0.3, 0.4, 0.4, 0.2, 0.6, 0.3, 0.4, 0.9, 0.2)
BP <- c(103, 87, 32, 42, 59, 109, 78, 205, 135, 176)
First <- c(1, 1, 1, 1, 0, 0, 0, 0, NA, 1)
Second <- c(0, 0, 1, 1, 0, 0, 1, 1, 1, 1)
FinalDecision <- c(0, 1, 0, 1, 0, 1, 0, 1, 1, 1) 

#create a data frame
hospital_data <- data.frame(Freq, BP, First, Second, FinalDecision)

#creating a boxplot for BP and Freq side by side
boxplot(hospital_data$BP, hospital_data$Freq,
        names = c("Blood Pressure", "Frequency"),
        main = "Side-by-side Boxplot of Blood Pressure and Frequency",
        ylab = "Values")

###Creating the histograms###

# Histogram for Blood Pressure
hist(hospital_data$BP,
     main = "Histogram of Blood Pressure",
     xlab = "Blood Pressure",
     col = "lightblue",
     border = "black")

# Histogram for Frequency
hist(hospital_data$Freq,
     main = "Histogram of Frequency",
     xlab = "Frequency",
     col = "lightgreen",
     border = "black")




#Midterm 
library(ggplot2)

setwd(dir = "/Users/Matthew/Documents/School/Mathmatical_Foundations_of_Statistical_Software/Group_Project_Midterm/")

d = read.csv(file = "adult.csv")
colnames(d) = c("Age","Workclass","Fnlwgt","Education","Education-num","Marital-status",
                "Occupation", "Relationship", "Race", "Sex", "Capital-Gain",
                "Capital-Loss", "Hours-Per-Week","Native-Country")


#Male and Females How much do they earn. Use Permutation as well as a P value of the mean for the 
#Test
#Difference between Races to see how much they earn.

qplot(x = d$Fnlwgt,data = d) + stat_bin(bins = 300)

ggplot(data = d,aes(x = Fnlwgt)) +
  geom_histogram(bins = 100) +
  geom_vline(xintercept = mean(d$Fnlwgt), color = "red") +
  geom_vline(xintercept = median(d$Fnlwgt), color = "blue") +
  labs(title = "This is the Test Title" , x = "Fnlwgt ($)") +
  theme(plot.title = element_text(size = 20))

ggplot(data = d, aes(x = Sex, y = Fnlwgt)) + 
  geom_boxplot()
  


#Midterm Project Workspace

library(ggplot2)
setwd(dir = "/Users/mattszucs/Documents/Math156_Midterm_Project/")

#######################
# This is some preliminary information about what this dataset has and what we can 
# Do with it
######################

# Catagorical Variables

# d$State.gov 
# [1]  Self-emp-not-inc  Private           State-gov         Federal-gov       Local-gov         ?               
# [7]  Self-emp-inc      Without-pay       Never-worked   
# 
# 
# d$Bachelors
# [1]  Bachelors     HS-grad       11th          Masters       9th           Some-college  Assoc-acdm    Assoc-voc   
# [9]  7th-8th       Doctorate     Prof-school   5th-6th       10th          1st-4th       Preschool     12th   
# 
# 
# d$Never.married
# [1]  Married-civ-spouse     Divorced               Married-spouse-absent  Never-married          Separated            
# [6]  Married-AF-spouse      Widowed    
# 
# unique(d$Adm.clerical)
# [1]  Exec-managerial    Handlers-cleaners  Prof-specialty     Other-service      Adm-clerical       Sales            
# [7]  Craft-repair       Transport-moving   Farming-fishing    Machine-op-inspct  Tech-support       ?                
# [13]  Protective-serv    Armed-Forces       Priv-house-serv  

# > unique(d$White)
# [1]  White               Black               Asian-Pac-Islander  Amer-Indian-Eskimo  Other 


# > unique(d$United.States)
# [1]  United-States               Cuba                        Jamaica                     India                     
# [5]  ?                           Mexico                      South                       Puerto-Rico               
# [9]  Honduras                    England                     Canada                      Germany                   
# [13]  Iran                        Philippines                 Italy                       Poland                    
# [17]  Columbia                    Cambodia                    Thailand                    Ecuador                   
# [21]  Laos                        Taiwan                      Haiti                       Portugal                  
# [25]  Dominican-Republic          El-Salvador                 France                      Guatemala                 
# [29]  China                       Japan                       Yugoslavia                  Peru                      
# [33]  Outlying-US(Guam-USVI-etc)  Scotland                    Trinadad&Tobago             Greece                    
# [37]  Nicaragua                   Vietnam                     Hong                        Ireland                   
# [41]  Hungary                     Holand-Netherlands      
# 



###########################
#This is setting up the dataframes 
#
#############################

setwd(dir = "/Users/mattszucs/Documents/Math156_Midterm_Project/")

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
  


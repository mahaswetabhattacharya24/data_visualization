# Load the required libraries
library(ggplot2)
library(readr)

#Path to csv data
data_path <- "C:/Users/mbhatt17/OneDrive - Johns Hopkins/Desktop/Posters/Trainee Research Day - 2023/"
print(data_path)
data_file <- "99.8MeV_validation_table_water.csv"
print(data_file)
data <- paste(data_path, data_file,sep = "")
print(data)
dose_profile_data <- read.csv(data, sep = ",")
colnames(dose_profile_data) <- c('Depth', 'TPS_IDD', 'Python_IDD','TPS_Sigma', 
                                 'Python_Sigma' )

#Plot
ggplot(data = dose_profile_data) +
  geom_line(aes(x = Depth, y = TPS_IDD, color = 'blue'), linewidth = 2) +
  geom_line(aes(x = Depth, y = Python_IDD, color = 'red'), linetype = 'dashed',linewidth = 2) +
  scale_color_discrete(name="", labels=c('TPS', 'Python Dose Engine')) +
  ylab('Integrated depth dose profile')+
  ggtitle("99.8 MeV")


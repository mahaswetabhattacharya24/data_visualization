# Load the required libraries
library(ggplot2)
library(readr)

#Path to csv data
data_path <- "C:/Users/mbhatt17/OneDrive - Johns Hopkins/Desktop/Posters/Trainee Research Day - 2023/"
print(data_path)

## 99.8 MeV
data_file <- "99.8MeV_validation_table_water.csv"
print(data_file)
data <- paste(data_path, data_file,sep = "")
print(data)
dose_profile_data <- read.csv(data, sep = ",")
colnames(dose_profile_data) <- c('Depth', 'TPS_IDD', 'Python_IDD','TPS_Sigma', 
                                 'Python_Sigma' )

#Plot
ggplot(data = dose_profile_data) +
  geom_line(aes(x = Depth, y = TPS_IDD, color = "TPS"), linewidth = 3) +
  geom_line(aes(x = Depth, y = Python_IDD, color = "Python Dose Engine"), linetype = "dashed",linewidth = 3) +
  scale_color_manual(name="", values=c("TPS"="#0000ff", "Python Dose Engine"="#ff3300")) +
  ylab("Integrated depth dose profile")+
  ggtitle("99.8 MeV")+
  theme(plot.title = element_text(hjust = 0.5, size = 24, face = "bold"), 
        axis.title.x = element_text(size = 18, face = "bold"), 
        axis.title.y = element_text(size = 18, face = "bold"),
        axis.text.x = element_text(size = 14, face = "bold"), 
        axis.text.y = element_text(size = 14, face = "bold"),
        legend.text = element_text(size = 14))
ggsave("99.8MeV_water.tiff", dpi=300)


## 130.2 MeV
data_file <- "130.2MeV_validation_table_water.csv"
print(data_file)
data <- paste(data_path, data_file,sep = "")
print(data)
dose_profile_data <- read.csv(data, sep = ",")
colnames(dose_profile_data) <- c('Depth', 'TPS_IDD', 'Python_IDD','TPS_Sigma', 
                                 'Python_Sigma' )

#Plot
ggplot(data = dose_profile_data) +
  geom_line(aes(x = Depth, y = TPS_IDD, color = "TPS"), linewidth = 3) +
  geom_line(aes(x = Depth, y = Python_IDD, color = "Python Dose Engine"), linetype = "dashed",linewidth = 3) +
  scale_color_manual(name="", values=c("TPS"="#0000ff", "Python Dose Engine"="#ff3300")) +
  ylab("Integrated depth dose profile")+
  ggtitle("130.2 MeV")+
  theme(plot.title = element_text(hjust = 0.5, size = 24, face = "bold"), 
        axis.title.x = element_text(size = 18, face = "bold"), 
        axis.title.y = element_text(size = 18, face = "bold"),
        axis.text.x = element_text(size = 14, face = "bold"), 
        axis.text.y = element_text(size = 14, face = "bold"))
ggsave("130.2MeV_water.tiff", dpi=300)


## 228.7 MeV
data_file <- "228.7MeV_validation_table_water.csv"
print(data_file)
data <- paste(data_path, data_file,sep = "")
print(data)
dose_profile_data <- read.csv(data, sep = ",")
colnames(dose_profile_data) <- c('Depth', 'TPS_IDD', 'Python_IDD','TPS_Sigma', 
                                 'Python_Sigma' )

#Plot
ggplot(data = dose_profile_data) +
  geom_line(aes(x = Depth, y = TPS_IDD, color = "TPS"), linewidth = 3) +
  geom_line(aes(x = Depth, y = Python_IDD, color = "Python Dose Engine"), linetype = "dashed",linewidth = 3) +
  scale_color_manual(name="", values=c("TPS"="#0000ff", "Python Dose Engine"="#ff3300")) +
  ylab("Integrated depth dose profile")+
  ggtitle("228.7 MeV")+
  theme(plot.title = element_text(hjust = 0.5, size = 24, face = "bold"), 
        axis.title.x = element_text(size = 18, face = "bold"), 
        axis.title.y = element_text(size = 18, face = "bold"),
        axis.text.x = element_text(size = 14, face = "bold"), 
        axis.text.y = element_text(size = 14, face = "bold"))
ggsave("228.7MeV_water.tiff", dpi=300)



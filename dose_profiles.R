# Load the required libraries
library(ggplot2)
library(readr)
library(cowplot)

#Path to csv data
data_path <- "C:/Users/mbhatt17/OneDrive - Johns Hopkins/Desktop/Posters/Trainee Research Day - 2023/"
print(data_path)


#Plot theme definition
plot_theme <- theme(plot.title = element_text(hjust = 0.5, size = 16, face = "bold"), 
      axis.title.x = element_text(size = 12, face = "bold"), 
      axis.title.y = element_text(size = 12, face = "bold"),
      axis.text.x = element_text(size = 12, face = "bold"), 
      axis.text.y = element_text(size = 12, face = "bold"),
      legend.text = element_text(size = 18),
      legend.position = "none")

### Water phantom datasets ---------

## 99.8 MeV -----------
data_file <- "99.8MeV_validation_table_water.csv"
print(data_file)
data <- paste(data_path, data_file,sep = "")
print(data)
dose_profile_data <- read.csv(data, sep = ",")
colnames(dose_profile_data) <- c('Depth', 'TPS_IDD', 'Python_IDD','TPS_Sigma', 
                                 'Python_Sigma' )

#Plot
plot_9980_w <- ggplot(data = dose_profile_data) +
  geom_line(aes(x = Depth, y = TPS_IDD, color = "TPS"), linewidth = 2) +
  geom_line(aes(x = Depth, y = Python_IDD, color = "Python Dose Engine"), linetype = "dashed",linewidth = 2) +
  scale_color_manual(name="", values=c("TPS"="#0000ff", "Python Dose Engine"="#ff3300")) +
  ylab("Integrated depth dose profile")+
  ggtitle("99.8 MeV") + plot_theme
  
#ggsave("99.8MeV_water.tiff", dpi=300)





## 130.2 MeV ----------
data_file <- "130.2MeV_validation_table_water.csv"
print(data_file)
data <- paste(data_path, data_file,sep = "")
print(data)
dose_profile_data <- read.csv(data, sep = ",")
colnames(dose_profile_data) <- c('Depth', 'TPS_IDD', 'Python_IDD','TPS_Sigma', 
                                 'Python_Sigma' )

#Plot
plot_1302_w <- ggplot(data = dose_profile_data) +
  geom_line(aes(x = Depth, y = TPS_IDD, color = "TPS"), linewidth = 2) +
  geom_line(aes(x = Depth, y = Python_IDD, color = "Python Dose Engine"), linetype = "dashed",linewidth = 2) +
  scale_color_manual(name="", values=c("TPS"="#0000ff", "Python Dose Engine"="#ff3300")) +
  ylab("Integrated depth dose profile")+
  ggtitle("130.2 MeV") + plot_theme
  
#ggsave("130.2MeV_water.tiff", dpi=300)


## 228.7 MeV ------------
data_file <- "228.7MeV_validation_table_water.csv"
print(data_file)
data <- paste(data_path, data_file,sep = "")
print(data)
dose_profile_data <- read.csv(data, sep = ",")
colnames(dose_profile_data) <- c('Depth', 'TPS_IDD', 'Python_IDD','TPS_Sigma', 
                                 'Python_Sigma' )

#Plot
plot_2287_w <- ggplot(data = dose_profile_data) +
  geom_line(aes(x = Depth, y = TPS_IDD, color = "TPS"), linewidth = 2) +
  geom_line(aes(x = Depth, y = Python_IDD, color = "Python Dose Engine"), linetype = "dashed",linewidth = 2) +
  scale_color_manual(name="", values=c("TPS"="#0000ff", "Python Dose Engine"="#ff3300")) +
  ylab("Integrated depth dose profile")+
  ggtitle("228.7 MeV") + plot_theme
#ggsave("228.7MeV_water.tiff", dpi=300)






## Bone phantom datasets ----------

## 99.8 MeV ---------
data_file <- "99.8MeV_validation_table_bone.csv"
print(data_file)
data <- paste(data_path, data_file,sep = "")
print(data)
dose_profile_data <- read.csv(data, sep = ",")
colnames(dose_profile_data) <- c('Depth', 'TPS_IDD', 'Python_IDD','TPS_Sigma', 
                                 'Python_Sigma' )

#Plot
plot_9980_b <- ggplot(data = dose_profile_data) +
  geom_line(aes(x = Depth, y = TPS_IDD, color = "TPS"), linewidth = 2) +
  geom_line(aes(x = Depth, y = Python_IDD, color = "Python Dose Engine"), linetype = "dashed",linewidth = 2) +
  scale_color_manual(name="", values=c("TPS"="#0000ff", "Python Dose Engine"="#ff3300")) +
  ylab("Integrated depth dose profile")+
  ggtitle("99.8 MeV") + plot_theme
#ggsave("99.8MeV_bone.tiff", dpi=300)



## 130.2 MeV ---------
data_file <- "130.2MeV_validation_table_bone.csv"
print(data_file)
data <- paste(data_path, data_file,sep = "")
print(data)
dose_profile_data <- read.csv(data, sep = ",")
colnames(dose_profile_data) <- c('Depth', 'TPS_IDD', 'Python_IDD','TPS_Sigma', 
                                 'Python_Sigma' )

#Plot
plot_1302_b <- ggplot(data = dose_profile_data) +
  geom_line(aes(x = Depth, y = TPS_IDD, color = "TPS"), linewidth = 2) +
  geom_line(aes(x = Depth, y = Python_IDD, color = "Python Dose Engine"), linetype = "dashed",linewidth = 2) +
  scale_color_manual(name="", values=c("TPS"="#0000ff", "Python Dose Engine"="#ff3300")) +
  ylab("Integrated depth dose profile")+
  ggtitle("130.2 MeV") + plot_theme
#ggsave("130.2MeV_bone.tiff", dpi=300)




## 228.7 MeV --------
data_file <- "228.7MeV_validation_table_bone.csv"
print(data_file)
data <- paste(data_path, data_file,sep = "")
print(data)
dose_profile_data <- read.csv(data, sep = ",")
colnames(dose_profile_data) <- c('Depth', 'TPS_IDD', 'Python_IDD','TPS_Sigma', 
                                 'Python_Sigma' )

#Plot
plot_2287_b <- ggplot(data = dose_profile_data) +
  geom_line(aes(x = Depth, y = TPS_IDD, color = "TPS"), linewidth = 2) +
  geom_line(aes(x = Depth, y = Python_IDD, color = "Python Dose Engine"), linetype = "dashed",linewidth = 2) +
  scale_color_manual(name="", values=c("TPS"="#0000ff", "Python Dose Engine"="#ff3300")) +
  ylab("Integrated depth dose profile")+
  ggtitle("228.7 MeV") + plot_theme
#ggsave("228.7MeV_bone.tiff", dpi=300)


legend <- get_legend(plot_9980_w)

# Create supertitles
supertitle_water <- ggdraw() + draw_label("Water Phantom", fontface = 'bold', size = 14)
supertitle_bone <- ggdraw() + draw_label("Bone Phantom", fontface = 'bold', size = 14)

water_row <- plot_grid(plot_9980_w, plot_1302_w, plot_2287_w, ncol=3)
water_row <- plot_grid(supertitle_water, water_row, ncol=1, rel_heights = c(0.1, 1))

bone_row <- plot_grid(plot_9980_b, plot_1302_b, plot_2287_b, ncol=3)
bone_row <- plot_grid(supertitle_bone, bone_row, ncol=1, rel_heights = c(0.1, 1))

# # Combine the six plots in a 2x3 grid
plot_grid(water_row, bone_row, ncol=1, rel_heights = c(0.05, 0.05, 1))
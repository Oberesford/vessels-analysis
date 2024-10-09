# Task 1 . 

#Reading the data into R. 

# Removing the unwanted collumn

df <- subset(ves, select = -Licence.Category)
data <- unique(df)

write.csv(data, "cleaned_vessels.csv")


# We now import "cleaned_vessels.csv" using the inbuilt importing functions in R 


#Some general infomation about cleaned_vessels.csv 

num_col <- ncol(cleaned_vessels) # There are 17 collumns 
num_col

num_row <- nrow(cleaned_vessels) # 1125 is the max number of rowws in the data set
num_row

longest_length <- max(cleaned_vessels$Overall.length) 
longest_length


min_length <- min(cleaned_vessels$Overall.length) 
min_length

#Calculating the number of removed rows as duplicates ( NEED TO FINSIH THIS )

num_rows_original <- nrow(vessels)
num_rows_original # 1224 ( Have to re import the orignal data back into r)

#Most common vessel name = KINGFISHER
vessel_freq <-table(cleaned_vessels$Vessel.name)
mode_vessel<-names(vessel_freq)[which.max(vessel_freq)]
mode_vessel
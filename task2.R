unique_vessels<- unique(vessels) # Removing the duplicates 


#Make sure to use the capitalised name for the port name, 
# also make sure to use the correct variable name of Home.port

Ardglass<- subset(cleaned_vessels,Home.port== "ARDGLASS")
Ardglass


Newlyn <- subset(cleaned_vessels,Home.port =="NEWLYN")
Newlyn

# How many vessels have Ardglass as their home port = 18

num_rows_arglass <- nrow(Ardglass)
num_rows_arglass

# Newlyn = 52 

num_rows_newlyn <- nrow(Newlyn)
num_rows_newlyn


#Now comparing the subsets with the rest of the data. 
# We are using overall lenght and engine power. 

# making a box plot for Ardglass and Newlyn for the lengths

boxplot(cleaned_vessels$Overall.length, Ardglass$Overall.length, Newlyn$Overall.length, names=c("All data", "Ardglass","Newlyn"), ylim=c(0,60), main="Length comparison", ylab="Overall length")

# engine power 
# Removed the extreme values as they where causing the boxplots not to be vissible 
boxplot(cleaned_vessels$Engine.power, Ardglass$Engine.power, Newlyn$Engine.power, names=c("All data", "Ardglass","Newlyn"), ylim=c(0,1500), main="Engine power comparison", ylab="Engine Power")
mean(Ardglass$Engine.power)
mean(Newlyn$Engine.power)
mean(cleaned_vessels$Engine.power)






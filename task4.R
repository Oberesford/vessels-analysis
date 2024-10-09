# Using a weltch T test at the 5% level on bot
#Computing the test statistic by hand 
# lets define our variables first 

Ard_mean <- mean(Ardglass$Overall.length)
Ard_mean
New_mean <- mean(Newlyn$Overall.length)
New_mean
Ard_var <- var(Ardglass$Overall.length)
Ard_var
New_var <- var(Newlyn$Overall.length)
New_var


result <- (Ard_mean - New_mean) / ((Ard_var)/18 + (New_var)/52)^0.5
result # = -1.713179


#Computing the test statistic using R 
result <- t.test(Ardglass$Overall.length, Newlyn$Overall.length, var.equal = FALSE)
result # = Has a t value of -1.71312
p_value<- result$p.value
p_value


# We see a p value of 0.0912844 so there is insiginficant evidence at the 5% level to reject the null hypthesis 


# NOW FOR ENGINE POWER 



Ard_mean <- mean(Ardglass$Engine.power)
New_mean <- mean(Newlyn$Engine.power)
Ard_var <- var(Ardglass$Engine.power)
New_var <- var(Newlyn$Engine.power)


result <- (Ard_mean - New_mean) / ((Ard_var)/18 + (New_var)/52)^0.5
result # = -2.76319


#Computing the test statistic using R 
result <- t.test(Ardglass$Engine.power, Newlyn$Engine.power, var.equal = FALSE)
result # = Has a t value of -2.7632
p_value<- result$p.value
p_value

# There is a p value of 0.007438 hence there is sufficient evidence at the 5% level to reject the null hyptothesi and insdead accept the alternative hypothesis



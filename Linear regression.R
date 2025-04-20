x <- c(151, 174, 138, 186, 128, 136, 179, 163, 152, 131) #height
y <- c(63, 81, 56, 91, 47, 57, 76, 72, 62, 48) #weight

#apply the lm() funtion
relation <- lm(y~x)

print(relation)

print(summary(relation))

#the predictor vector
x <- c(151, 174, 138, 186, 128, 136, 179, 163, 152, 131)
#response vector
y <- c(63, 81, 56, 91, 47, 57, 76, 72, 62, 48)

#apply the lm() funtion
relation <- lm(y~x)

# find weight of person with height 170
a <- data.frame(x = 170)
result <- predict(relation,a)
print(result)

#give the chart file 
png(file = "linearregression.png")

#plot the chart 
plot(y,x,col = "blue",main = 
       "height & weight Regression",
     abline(lm(x~y)),cex = 1.3,pch = 16,
     xlab = "weight in kg",ylab = "height in cm")


#save the file 
dev.off()

w <- c(63, 81, 56, 91, 47, 57, 76, 72, 62, 48) #weight
h <- c(151, 174, 138, 186, 128, 136, 179, 163, 152, 131) #height

#apply the lm() funtion
relation <- lm(h~w)

print(relation)

a <- data.frame(w = 70)
result <- predict(relation,a)
print(result)

#give the chart file 
png(file = "linearregressionofmy.png")

#plot the chart 
plot(h,w,col = "blue",main = 
       "height & weight Regression",
     abline(lm(w~h)),cex = 1.3,pch = 16,
     xlab = "weight in kg",ylab = "height in cm")

getwd()

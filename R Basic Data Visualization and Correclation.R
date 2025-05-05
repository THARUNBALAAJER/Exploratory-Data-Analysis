#Libraries
library(DAAG)
library(MASS)
library(dplyr)
library(ggplot2)
library(corrplot)
library(psych)

#Data set
data(USArrests)
#View
View(USArrests)

#Data Dictionary 
USAM<-USArrests$Murder
names(USAM)<-c("Alabama", "Alaska", "Arizona", "Arkansas", "California", "Colorado", "Connecticut", "Delaware", "Florida", "Georgia", "Hawaii", "Idaho", "Illinois", "Indiana", "Iowa", "Kansas", "Kentucky", "Louisiana", "Maine","Maryland", "Massachusetts", "Michigan", "Minnesota", "Mississippi", "Missouri", "Montana", "Nebraska", "Nevada", "New Hampshire", "New Jersey", "New Mexico", "New York", "North Carolina", "North Dakota", "Ohio", "Oklahoma", "Oregon", "Pennsylvania", "Rhode Island", "South Carolina", "South Dakota", "Tennessee", "Texas", "Utah", "Vermont", "Virginia", "Washington", "West Virginia", "Wisconsin", "Wyoming")
USAM
USAM["Alabama"]
USAA<-USArrests$Assault
USAR<-USArrests$Rape
USAU<-USArrests$UrbanPop
names(USAA)<-c("Alabama", "Alaska", "Arizona", "Arkansas", "California", "Colorado", "Connecticut", "Delaware", "Florida", "Georgia", "Hawaii", "Idaho", "Illinois", "Indiana", "Iowa", "Kansas", "Kentucky", "Louisiana", "Maine","Maryland", "Massachusetts", "Michigan", "Minnesota", "Mississippi", "Missouri", "Montana", "Nebraska", "Nevada", "New Hampshire", "New Jersey", "New Mexico", "New York", "North Carolina", "North Dakota", "Ohio", "Oklahoma", "Oregon", "Pennsylvania", "Rhode Island", "South Carolina", "South Dakota", "Tennessee", "Texas", "Utah", "Vermont", "Virginia", "Washington", "West Virginia", "Wisconsin", "Wyoming")
names(USAR)<-c("Alabama", "Alaska", "Arizona", "Arkansas", "California", "Colorado", "Connecticut", "Delaware", "Florida", "Georgia", "Hawaii", "Idaho", "Illinois", "Indiana", "Iowa", "Kansas", "Kentucky", "Louisiana", "Maine","Maryland", "Massachusetts", "Michigan", "Minnesota", "Mississippi", "Missouri", "Montana", "Nebraska", "Nevada", "New Hampshire", "New Jersey", "New Mexico", "New York", "North Carolina", "North Dakota", "Ohio", "Oklahoma", "Oregon", "Pennsylvania", "Rhode Island", "South Carolina", "South Dakota", "Tennessee", "Texas", "Utah", "Vermont", "Virginia", "Washington", "West Virginia", "Wisconsin", "Wyoming")
names(USAU)<-c("Alabama", "Alaska", "Arizona", "Arkansas", "California", "Colorado", "Connecticut", "Delaware", "Florida", "Georgia", "Hawaii", "Idaho", "Illinois", "Indiana", "Iowa", "Kansas", "Kentucky", "Louisiana", "Maine","Maryland", "Massachusetts", "Michigan", "Minnesota", "Mississippi", "Missouri", "Montana", "Nebraska", "Nevada", "New Hampshire", "New Jersey", "New Mexico", "New York", "North Carolina", "North Dakota", "Ohio", "Oklahoma", "Oregon", "Pennsylvania", "Rhode Island", "South Carolina", "South Dakota", "Tennessee", "Texas", "Utah", "Vermont", "Virginia", "Washington", "West Virginia", "Wisconsin", "Wyoming")
USAA
USAR
USAU

#select () using%>%
USArrests %>% select(2:3, 1:3)

#Filter
USArrests %>% filter(USAA=='Washington')

#Summaries 
USArrests %>% filter(USAA =='Alaska') %>%
  summarise(Avg = mean(USAA))

#Creating a report
str(USArrests)
describe(USArrests)
summary(USArrests)

#Finding the maximum indexed values
USAM[which.max(USAM)]
USAA[which.max(USAA)]
USAU[which.max(USAU)]
USAR[which.max(USAR)]

#Finding Correlation Values
cor.test(USAM,USAA)
cor.test(USAM,USAR)
cor.test(USAM,USAU)
cor.test(USAA,USAR)
cor.test(USAA,USAU)
cor.test(USAR,USAU)


#Visualisation
plot(USAM)
plot(USAA)
plot(USAU)
plot(USAR)

tab1<-table(USAM)
tab1
pie(tab1,main="Distribution of US States' Crime Rate:Murder")
tab2<-table(USAA)
tab2
pie(tab2,main="Distribution of US States' Crime Rate:Assault")
tab3<-table(USAR)
tab3
pie(tab3,main="Distribution of US States' Crime Rate:Rape")
tab4<-table(USAU)
tab4
pie(tab4,main="Distribution of US States' Urban Population")

hist(USAM,col='blue',main="Histogram of US States' Crime Rates:Murder",sub=paste("Mean Value=",mean(USAM)))
hist(USAA,col='green',main="Histogram of US States' Crime Rates:Assault",sub=paste("Mean Value=",mean(USAA)))
hist(USAU,col='red',main="Histogram of US States' Urban Population",sub=paste("Mean Value=",mean(USAU)))
hist(USAR,col='blue',main="Histogram of US States' Crime Rates:Rape",sub=paste("Mean Value=",mean(USAR)))



##Arun_Test 

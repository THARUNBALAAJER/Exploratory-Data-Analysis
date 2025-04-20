data()

data(Titanic)


titanic_df <- as.data.frame(Titanic)
View(titanic_df)

summary(Titanic)

head(Titanic)
str(Titanic)
tail(Titanic)

table(titanic_df$Survived)   

passenger_count <- sum(titanic_df$Freq[titanic_df$Class != "Crew"])
print(passenger_count)

child_count <- sum(titanic_df$Freq[titanic_df$Age == "Child"])
print(child_count)

boy_child_count <- sum(titanic_df$Freq[titanic_df$Age == "Child" & titanic_df$Sex == "Male"])
print(boy_child_count)

Girl_child_count <- sum(titanic_df$Freq[titanic_df$Age == "Child" & titanic_df$Sex == "Female"])
print(Girl_child_count)

Male_Survived_Count <- sum(titanic_df$Freq[titanic_df$Survived == "Yes" & titanic_df$Sex == "Male"])
print(Male_Survived_Count)

Female_Survived_Count <- sum(titanic_df$Freq[titanic_df$Survived == "Yes" & titanic_df$Sex == "Female"])
print(Female_Survived_Count)



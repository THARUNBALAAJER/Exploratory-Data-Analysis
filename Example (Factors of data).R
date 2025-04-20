#Meaning of Chi-Square test

#chi square test 
library(tidyverse)
library(forcats)
View(gss_cat)

my_data <- gss_cat %>%
  select(marital) %>%
  filter(marital %in% c("Married", "Never married", "Divorced")) %>%
  mutate(marital = fct_drop(marital))

my_table <- table(my_data)
View(my_table)

chisq.test(my_table)

my_data %>%
  table() %>%
  chisq.test()

#graphics
my_data %>%
  ggplot(aes(marital)) + geom_bar()

#This is for race data 

unique(gss_cat$race)

my_data1 <- gss_cat %>%
  select(race) %>%
  filter(race %in% c("White", "Black", "Others")) %>%
  mutate(race = fct_drop(race))

my_table1 <- table(my_data1)
View(my_table1)

chisq.test(my_table1)

my_data1 %>%
  table() %>%
  chisq.test()

my_data1 %>%
  ggplot(aes(race)) + geom_bar()

#this is for data of relig

unique(gss_cat$relig)

my_data2 <- gss_cat %>%
  select(relig) %>%
  filter(relig %in% c("Protectant", "Orthodox-christian", "None", "Christian", "Jewish", "Catholic", "Other", "Inter-nondenominational", "Hinduisum", "Native american", "No anser", "Buddhism", "Moslem/islam", "Other eastern", "Don't know")) %>%
  mutate(relig = fct_drop(relig))

my_table2 <- table(my_data2)
View(my_table2)

chisq.test(my_table2)

my_data2 %>%
  ggplot(aes(relig)) + geom_bar()

#this is for Income  data

unique(gss_cat$rincome)

my_data3 <- gss_cat %>%
  select(rincome) %>%
  filter(rincome %in% c("$8000 to 9999", "Not applicable", "$20000 - 24999", "$25000 or more", "$7000 to 7999", "$10000 - 14999", "Refused", "$15000 - 19999", "$3000 to 3999", "$5000 to 5999", "Don't know", "$1000 to 2999", "Lt $1000", "No answer", "$6000 to 6999", "$4000 to 4999")) %>%
  mutate(rincome = fct_drop(rincome))

my_table3 <- table(my_data3)
View(my_table3)

chisq.test(my_table3)

my_data3 %>%
  ggplot(aes(rincome)) + geom_bar()

#This is for partyid

unique(gss_cat$partyid)

my_data4 <- gss_cat %>%
  select(partyid) %>%
  filter(partyid %in% c("Ind,near rep", "Not str republican Independent", "Not str democrat", "Strong democrat", "Ind,near dem", "Strong republican  Other party", "No answer", "Don't know")) %>%
  mutate(partyid = fct_drop(partyid))

my_table4 <- table(my_data4)
View(my_table4)

chisq.test(my_table4)

my_data4 %>%
  ggplot(aes(partyid)) + geom_bar()

#this is for denom

unique(gss_cat$denom)

my_data5 <- gss_cat %>%
  select(denom) %>%
  filter(denom %in% c("Southern baptist", "Baptist-dk which", "No denomination", "Not applicable", "Lutheran-mo synod", "Other", "United methodist", "Episcopal ", "Other lutheran", "Afr meth ep zion", "Am bapt ch in usa", "Other methodist", "Presbyterian c in us", "Methodist-dk which", "Nat bapt conv usa", "Am lutheran", "Nat bapt conv of am", "Am baptist asso", "Evangelical luth", "Afr meth episcopal", "Lutheran-dk which", "Luth ch in america", "Presbyterian, merged", "No answer", "Wi evan luth synod", "Other baptists", "Other presbyterian", "United pres ch in us", "Presbyterian-dk wh", "Don't know")) %>%
  mutate(denom = fct_drop(denom))

my_table5 <- table(my_data5)
View(my_table5)

chisq.test(my_table5)

my_data5 %>%
  ggplot(aes(denom)) + geom_bar()

#this is data of tvhours

unique(gss_cat$tvhours)

my_data6 <- gss_cat %>%
  select(tvhours) %>%
  filter(tvhours %in% c("12", "NA", "2", "4", "1", "3", "0", "7", "5", "8", "10", "6", "15", "11", "24", "20", "13", "14", "21", "9", "16", "22", "18", "17", "23")) %>%
  mutate(tvhours = factor(tvhours),
         tvhours = fct_drop(tvhours))

my_table6 <- table(my_data6)
View(my_table6)

chisq.test(my_table6)


           
#Anova in msleepdataset 
library(tidyverse)
view(msleep)

#filtering the data as subset in vore to omnivore
omni_data <- subset(msleep, vore == "omni")

sum_sleep <- sum(omni_data$sleep_total, na.rm = TRUE)
view(sum_sleep)

unique(msleep$vore)

#boxplot in anova 
ggplot(
  data = msleep,
  mapping = aes(x= vore, y= sleep_rem)
)+
  geom_boxplot()

#histogram in anova
ggplot(
  data = msleep,
  mapping = aes(x = sleep_rem)
) +
  geom_histogram() +
  facet_wrap(~ vore, ncol = 1)





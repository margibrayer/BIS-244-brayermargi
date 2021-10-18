install.packages('dplyr')
install.packages('data.table')
library(dplyr)

df<-fread('us-states.csv')
df<-mutate(df,incr_cases=c(NA,diff(df$cases)))
df<-mutate(df,incr_deaths=c(NA,diff(df$deaths)))

sd(df$incr_cases, na.rm = TRUE)

*.csv

if (!require("here")) install.packages("here")
library("here")
library("tidyverse")
votes <- read_csv(here("Data","PRESIDENT_precinct_general.zip"))
View(votes)
library(ggplot2)

n_votes<-length(votes$office)
states<-distinct(votes,state,.keep_all = TRUE)
states<-subset(states,select=state)
states$Biden<-0
states$Trump<-0
n_states<-length(state$state)
COUNTER<-0 

states<-data.frame(state.name)
states$Biden<-1
states$Trump<-1
view(states)

for (i in i:n) {
  for (j in 1:n_states) {
    if (votes$state[i]==states$state[j]) {
      if (votes$candidate[i]=="JOSEPH R BIDEN") {
    states$Biden[j]<-states$Biden[j] + votes$votes[i]
      }
      if (votes$candidate[i]=="DONALD TRUMP") {
      states$Trump[j]<-states$Trump[j]+votes$votes[i]
      }
      j<-n_states
    }
    
  }
  if(round(i/n_votes*100, digits=0)>COUNTER) {
    COUNTER <- round(i/n_votes*100, digits = 0)
    cat(COUNTER, "pct complete\n")}
}

p<-ggplot(data=states, 
          mapping = aes(x=Biden, 
                        y = Trump))

p+geom_point()
p+geom_text(mapping = aes(label=state))
labs(x="Biden Votes", y="Trump Votes",
     title = "2020 Presidential Election",
     subtitle = "Assignment 3")

*.csv 



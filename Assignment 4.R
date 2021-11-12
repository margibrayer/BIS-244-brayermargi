library(ggrepel)
library(scales)
library(tidyverse)
HitFilm<-read_csv("BIS-244-BrayerMargi/Top_10000_Popular_Movies.csv")
str(HitFilm)
HitFilm$year<-format(as.Date(HitFilm$release_date), format = "%Y")
HitFilm<- HitFilm[which(HitFilm$year>="2020"&
                          HitFilm$year<="2021"),]
p <- ggplot(data = HitFilm, 
            mapping = aes(x=release_data, y=popularity))
p + geom_point()
P + geom_point()+ 
  geom_text_repel(data = subset(HitFilm, popularity > 500, 
                                max.overlaps = Inf), 
                  mapping = aes(label = original_title)) + 
  labs(x = "Date",
       y = "Score for Hit", 
       title = "Top 10,000 Best Hit Films") + 
  scale_y_continuous(labels = scientific)
*.csv

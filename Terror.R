
df <-read.csv("globalT.csv")



bb <- df %>% group_by(country_txt) %>% count() 

Top5 <- head(bb[order(bb$n, decreasing = TRUE),])
countries <- Top5$country_txt
incidents <- Top5$n

perf <-ggplot(data=Top5, aes(x=fct_inorder(countries), y=incidents))+
  geom_bar(stat="identity",fill="red")+labs(title = "Top 5 Countries With Most Terrorism Incidents(1970-Present)",x="Country",y="Number of Incidents")+
  theme(plot.title = element_text(hjust = 0.5))
perf

  
  
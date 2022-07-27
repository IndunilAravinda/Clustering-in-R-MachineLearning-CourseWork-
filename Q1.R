#Pre-Processing

#load the tidyverse
library(tidyverse)

#load the dataset
onlineSell <- read_csv("Live.csv")

#view the summary
summary(onlineSell)

#dropping empty columns
onlineSell %>%
  select(-c(Column1,Column2,Column3,Column4))
  

summary(onlineSell)  

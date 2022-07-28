#Pre-Processing

#load the tidyverse
library(tidyverse)

#load the dataset
onlineSell <- read_csv("Live.csv")

#dropping empty columns
onlineSell <- onlineSell %>%
  select(-c(Column1,Column2,Column3,Column4))

#Converting categorical values into integers
onlineSell <- onlineSell %>%
  mutate(status_type=unclass(as.factor(onlineSell$status_type)))

#checck the unique instance for status_id
unique(onlineSell$status_id)
summary(unique(onlineSell$status_id))

#view the summary
view(onlineSell)
summary(onlineSell)  


library(tidyverse)
setwd("~/Documents/GitHub/bit-tech-lab")# to remind you where the data is saved, and to tell R where to look for the file

library(lubridate)
install.packages("lubridate")

install.packages("tidyverse")

df1 <- read_csv("Crop_example1.csv") # df1 is now a tibble



df1 #print tibble

#create df2

df2 <- df1 %>% 
  gather("date", "value",c(-Crop,-Type))

df2 # creating columns that are now variables

# chr means character files
# int means number file if you expect a file to be int but shows as chr then there is an unexpected
# special character or letter in your data

View(df2)

# %>% the same as saying "and then"

df3 <-  df2 %>% 
  separate(date, c("Month", "Year")) %>% # c Means multiple things are happening
  mutate(Year2=paste("20", Year, sep="-")) %>% # Mutate, creates new variable
  mutate(Day=1) %>%
  mutate(date=paste (Year, Month, Day, sep="-")) %>% 
  select(-Month, -Year, -Day, -Year2) %>% 
  mutate(date= ymd(date))

View(df3)

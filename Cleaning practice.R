install.packages("tidyverse")
install.packages("lubridate")
library("tidyverse")
library("lubridate")

df1 <- read_csv("worldclean.csv")


ggplot(data = df1) +
  geom_line(mapping = aes(x = TIME, y=Value, colour =), stat="identity")+
  facet_wrap(~LOCATION)

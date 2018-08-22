install.packages("tidyverse")

library(tidyverse)

diamonds2 <- diamonds %>% 
  filter(color == "G" & depth > 60) %>% 
  group_by(clarity) %>% 
  arrange(clarity) %>% 
  mutate(av_carat = mean(carat))

ggplot(diamonds2, aes(carat, price)) +
<<<<<<< HEAD
  geom_point(aes(colour=cut, size=table, alpha=1/10)) 
=======
  geom_point(aes(colour=cut, size=table, alpha=1/10))
>>>>>>> 8b0723c147a9480c8c41ccbbbc5f682e031d3548

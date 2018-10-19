.libPaths("D:/Intro to R/RLibrary")
.libPaths()
library(tidyverse)
source("R/themes.R")

fish <- read_csv("https://raw.githubusercontent.com/aludwig04/gittutorial/master/data/Gaeta_etal_CLC_data.csv")

fish %>% 
  mutate(length_cat = case_when(length >= 300 ~ "big",
                                length < 300 ~ "small")) -> fish
head(fish)

# Challenge
# histogram of scale length
# fill by length_cat
# facet wrap ~ length_cat w/chosen theme
# upload to github and share with chizinski

ggplot() +
  geom_histogram(data = fish, aes(x = scalelength, fill = length_cat)) +
  labs(title = "Fish Histogram") +
  facet_wrap(~ length_cat, nrow = 1) +
  theme_presentation() -> FishHistogram

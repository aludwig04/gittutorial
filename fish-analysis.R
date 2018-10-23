.libPaths("D:/Intro to R/RLibrary")
.libPaths()
library(tidyverse)
source("R/themes.R")

fish <- read_csv("data/Gaeta_etal_CLC_data.csv")

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


## Chris's modifications

ggplot() +
  geom_histogram(data = fish, aes(x = scalelength, fill = length_cat), colour = "black", bins = 25) +
  facet_wrap(~length_cat) +
  coord_cartesian(ylim = c(0,500), xlim = c(0, 12), expand = FALSE) +
  theme_classic() +
  theme(legend.position = "none",
        panel.spacing = unit(2, "lines"))

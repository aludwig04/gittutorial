.libPaths("D:/Intro to R/RLibrary")
.libPaths()
library(tidyverse)
source("R/themes.R")

fish <- read_csv("https://raw.githubusercontent.com/aludwig04/gittutorial/master/data/Gaeta_etal_CLC_data.csv")

fish %>% 
  mutate(length_cat = case_when(length >= 300 ~ "big",
                                length < 300 ~ "small")) -> fish
head(fish)


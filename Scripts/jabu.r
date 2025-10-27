# source("Scripts/data prep.R")
library(tidyverse)
library(readxl)


data1 <- read_xlsx("Data/COHORT 2 waterpoint with coordinates.xlsx")

view(data1)
str(data1)
colnames(data1)

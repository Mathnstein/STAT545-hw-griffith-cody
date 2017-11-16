# This file will control the pipeline

## one script to rule them all

## clean out any previous work
outputs <- c("gapminder.tsv",                     # 00_downloader.R
             "gap_clean.tsv",                   # 01_exploratory.R
             list.files(pattern = "*.png$"))
file.remove(outputs)

## run my scripts
source("00_downloader.R")
source("01_exploratory.R")
source("02_statistical.R")
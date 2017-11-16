# This file will control the pipeline

## one script to rule them all

## clean out any previous work
outputs <- c("gapminder.tsv",                     # 00_downloader.R
             "gap_clean.tsv",                   # 01_exploratory.R
             list.files(pattern = "*.png$"))
file.remove(outputs)

## run my scripts
source("C:/Users/AsusW10/Documents/STAT545/STAT545-hw-wynes-chris/hw07/mydata/01_download_nba.R")
source("C:/Users/AsusW10/Documents/STAT545/STAT545-hw-wynes-chris/hw07/mydata/02_organize_nba.R")
source("C:/Users/AsusW10/Documents/STAT545/STAT545-hw-wynes-chris/hw07/mydata/03_plots_nba.R")

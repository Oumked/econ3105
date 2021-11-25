getwd()

# SET YOUR WORKING DIRECTORY
setwd("/Users/elmeriniemi/Desktop/Programming/ECON_group")
# SET YOUR WORKING DIRECTORY

#check that the filename is correct
uspoll_fp <- "pollution_us_2000_2016.csv"

df_uspoll <- read.csv(uspoll_fp, sep = ",", header = 1)

# Col information
str(df_uspoll)
head(df_uspoll)

#test
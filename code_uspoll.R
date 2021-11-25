getwd()

# SET YOUR WORKING DIRECTORY
setwd("/Users/elmeriniemi/Desktop/Programming/ECON_group")
# SET YOUR WORKING DIRECTORY
library(dplyr)
library(ggplot2)
#check that the filename is correct
uspoll_fp <- "pollution_us_2000_2016.csv"

df_uspoll <- read.csv(uspoll_fp, sep = ",", header = 1)

# Col information
str(df_uspoll)
head(df_uspoll)


# Creating a subset for dataframe with only necessary columns

subset_uspoll <- df_uspoll[c("State.Code", "County.Code", "Site.Num", "Address",
                            "State", "County", "City", "Date.Local",
                            "NO2.Mean", "O3.Mean", "SO2.Mean", "CO.Mean")
                          ]
head(subset_uspoll)

# Uncomment to create local csv
#write.csv(subset_uspoll, "uspoll_onlymeans00-16.csv")ß
arizona <- filter(subset_uspoll, subset_uspoll$Site.Num == 3002)
dim(arizona)

plot1 <-  ggplot(arizona, aes(x=Date.Local, y=NO2.Mean)) + geom_point()
plot1

#dstsdtvat77dybsay78

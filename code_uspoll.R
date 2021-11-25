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


# Creating a subset for dataframe with only necessary columns

subset_uspoll <- df_uspoll[c("State.Code", "County.Code", "Site.Num", "Address",
                            "State", "County", "City", "Date.Local",
                            "NO2.Mean", "O3.Mean", "SO2.Mean", "CO.Mean")
                          ]
head(subset_uspoll)

# Uncomment to create local csv
#write.csv(subset_uspoll, "uspoll_onlymeans00-16.csv")

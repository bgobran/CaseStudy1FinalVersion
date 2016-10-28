#######################################################################################
#
#  This file is tidyGDP.R
#      The purpose is to clean up the GDP data frame, given what we can tell
#
#######################################################################################


#######################################################################################
#  Observations from the file
#
#   GDP File
#       Column 1 (X) appears to be country short name
#       Column 2 (Gross...) appears to be the Ranking (but is a factor, not a number)
#       Column 3 (X.1) appears to be mostly NA
#       Column 4 (X.2) appears to be the country long name
#       Column 5 (X.3) appears to be the GDP in millions of dollars (but is a factor, not a number)
#       Column 6 (X.4) a, b, c, 1,1,1, no idea what these are
#       Columns 7-10 (X.5 - X.8) all appear to be NA
#       The data we want in this file appears to start on row 5
#
########################################################################################


#######################################################################################
#  OK, let's go back and re-read the GDP data starting in row 5
#  Let's change the heading for the second column to just GDPRanking and
#  the heading for the fifth column to GDPDollar
#  Let's try to make the other headings more "Tidy"
#
#
#  Then let's make the GDPRanking and GDPDollar numeric and, optionally, check
#######################################################################################

GDP <- read.csv(URLGDP, header=TRUE,skip=4)

names(GDP)[1]  <- "CountryCode"
names(GDP)[2]  <- "GDPRanking"
names(GDP)[3]  <- "NA1"
names(GDP)[4]  <- "CountryName"
names(GDP)[5]  <- "GDPDollar"
names(GDP)[6]  <- "SomeCode"
names(GDP)[7]  <- "NA2"
names(GDP)[8]  <- "NA3"
names(GDP)[9]  <- "NA4"
names(GDP)[10] <- "NA5"

GDP$CountryCode <- as.character(GDP$CountryCode)
GDP$GDPRanking  <- as.numeric(as.character(GDP$GDPRanking))
GDP$CountryName <- as.character(GDP$CountryName)
GDP$GDPDollar   <- as.numeric(gsub(",", "", as.character(GDP$GDPDollar)))

if (debug == 1) {
    str(GDP)
}


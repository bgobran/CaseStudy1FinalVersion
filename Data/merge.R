#######################################################################################
#
#  This file is merge.R
#      The purpose is to check the number of rows we should expect after the merge
#         and to perform the merge and a little cleanup afterwards
#
#######################################################################################


#######################################################################################
#  Before we merge GDP and EDU files on the column CountryCode
#  Let's see if we can identify any countries that are not in both files
#######################################################################################


check <- character(190)

for (i in 1:190) {
    if (GDP[i,1] %in% EDU[1:nrow(EDU),1] ) {
        check[i] = "Match"
    } else {
        check[i] = "No Match"
    }
}
check
message ("Of the 190 countries in the GDP file, ", GDP$CountryCode[131], ", or ", GDP[131,4], ", is not in the Education file.")

#######################################################################################
#  Now let's merge GDP and EDU on the CountryCode
#  We'll call the merged file "merged" (pretty creative, huh?)
#######################################################################################

merged <- merge(GDP, EDU, by="CountryCode", all=FALSE)

#######################################################################################
#  Optionally, count the number of rows
#  Remove all rows with nulls as the ranking (column GDPRanking)
#  Optionally, count the rows that are left
#  One GDP country (SSD) did not have an EDU entry as shown previously
#  so we are down to 189 as it should be
#######################################################################################

if (debug == 1) {
    nrow(merged)
    head(merged)
    tail(merged)
}

bad <- is.na(merged$GDPRanking)
merged <- merged[!bad,]

if (debug == 1) {
    nrow(merged)
    head(merged)
    tail(merged)
}

#######################################################################################
#  merged is the complete combination (merging) of the two files
#  BUT, we are only going to be working with a very small subset (column-wise) of merged
#  So, now, while keeping merged unchanged, we will remove the "extra" columns and
#  create the mergedReduced data frame
#  The keep vector will contain the columns from merged to keep
#  Then, optionally, we will print the column names of mergedReduced
#######################################################################################

keep <- c(1,2,4,5,12)
mergedReduced <- merged[ , keep]
names(mergedReduced)[3]  <- "CountryName"

if (debug == 1) {
    names(mergedReduced)
}



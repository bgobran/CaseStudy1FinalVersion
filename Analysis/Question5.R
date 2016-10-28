#######################################################################################
#
#  This file is Question5.R
#      The purpose is to address the fifth question on the merged data.
#         "Cut the GDP rankings into 5 separate quantile groups."
#         "Make a table versus Income Group."
#         "How many countries are Lower middle income but among the 38 nations with
#             highest GDP?"
#
#######################################################################################


#######################################################################################
#  Create a new variable for the GDP Group making sure it is the right data type
#  Stick it on the end of the mergedReducedSorted data frame, optionally, check
#  Populate it appropriately
#######################################################################################


GDPGroup <- numeric(nrow(mergedReducedSorted))
mergedReducedSorted <- cbind(mergedReducedSorted,GDPGroup)

if (debug == 1) {
    str(mergedReducedSorted)
}


for (i in 1:nrow(mergedReducedSorted)) {
    if (mergedReducedSorted$GDPRanking[i] <= nrow(mergedReducedSorted)/5) {
        mergedReducedSorted$GDPGroup[i] = 1
    } else if ( (mergedReducedSorted$GDPRanking[i] > nrow(mergedReducedSorted)/5)   && (mergedReducedSorted$GDPRanking[i] <= 2*nrow(mergedReducedSorted)/5) ) {
        mergedReducedSorted$GDPGroup[i] = 2
    } else if ( (mergedReducedSorted$GDPRanking[i] > 2*nrow(mergedReducedSorted)/5) && (mergedReducedSorted$GDPRanking[i] <= 3*nrow(mergedReducedSorted)/5) ) {
        mergedReducedSorted$GDPGroup[i] = 3
    } else if ( (mergedReducedSorted$GDPRanking[i] > 3*nrow(mergedReducedSorted)/5) && (mergedReducedSorted$GDPRanking[i] <= 4*nrow(mergedReducedSorted)/5) ) {
        mergedReducedSorted$GDPGroup[i] = 4
    } else if (mergedReducedSorted$GDPRanking[i] > 4*nrow(mergedReducedSorted)/5)  {
        mergedReducedSorted$GDPGroup[i] = 5
    }
}

#######################################################################################
#  Make the requested table
#  Create a vector of the Lower middle income GDP rankings
#  Determine (programatically) how many Lower middle income are in the top 38
#######################################################################################


message ("In the table below, the GDP quantiles are rows indicated by the numbers 1 through 5 on the left.  The Income Groups are listed across the top.  The elements of the table indicate number of countries corresponding to the GDP quantile and Income Group." )

table(mergedReducedSorted$GDPGroup, mergedReducedSorted$IncomeGroup)

TopLMI <- mergedReducedSorted[2][mergedReducedSorted[5]== "Lower middle income"]
message ("The number of Lower middle income countries in the top 38 GDP are ", sum(TopLMI < 39) )


#######################################################################################
#  The requested table shows 4 but I reported 5
#  The reason is the cutoff.  There were 189 countries (not 190), 189/5 = 37.8
#  So, my highest group had only 37 countries.  The 38th was a Lower middle income
#  The table went through 37 while the question asked through 38
#######################################################################################







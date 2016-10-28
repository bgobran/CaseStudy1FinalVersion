#######################################################################################
#
#  This file is Question2.R
#      The purpose is to answer the second question on the mergedReduced data after sorting.
#         "What is the 13th country in the resulting data frame?"
#
#######################################################################################


#######################################################################################
#  Sort the mergedReduced data frame by GDP ascending (equivalently, GDP ranking descending)
#  We'll call it mergedReducedSorted
#  Verify USA is last
#  What country is #13 ?
#######################################################################################

mergedReducedSorted <- arrange(mergedReduced, desc(GDPRanking) )
head(mergedReducedSorted)
tail(mergedReducedSorted)

message ("The 13th country in the list is ", mergedReducedSorted[13,3])







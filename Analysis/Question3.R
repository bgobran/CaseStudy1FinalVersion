#######################################################################################
#
#  This file is Question3.R
#      The purpose is to answer the third question on the merged data.
#         "What are the average GDP rankings for 'High income: OECD' and
#              'High income:nonOECD' groups?"
#
#######################################################################################


#######################################################################################
#  First I create vectors of the rankings for the two income groups
#  Then I report the means
#######################################################################################

OECDGDP <- mergedReducedSorted[2][mergedReducedSorted[5] == "High income: OECD"]
NONOECDGDP <- mergedReducedSorted[2][mergedReducedSorted[5] == "High income: nonOECD"]
message ("The mean GDP ranking of the High Income: OECD countries is     ", round(mean(OECDGDP), 3))
message ("The mean GDP ranking of the High Income: non OECD countries is ", round(mean(NONOECDGDP), 3))


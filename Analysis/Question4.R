#######################################################################################
#
#  This file is Question4.R
#      The purpose is to answer the fourth item on the merged data.
#         "Plot the GDP for all countries. Use gglot2 to color the plot by Income Group."
#
#######################################################################################

ggplot(mergedReducedSorted, aes(x=GDPRanking,y=GDPDollar))  + scale_y_continuous(trans=log10_trans(), breaks = trans_breaks("log10", function(x) 10^x),
labels = trans_format("log10", math_format(10^.x))) + xlim(0,200) +
geom_point(aes(colour=IncomeGroup),size=3) + annotation_logticks(sides="l",scaled=FALSE) +
theme(panel.grid.minor.y = element_blank())






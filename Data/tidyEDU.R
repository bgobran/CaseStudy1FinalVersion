#######################################################################################
#
#  This file is tidyEDU.R
#      The purpose is to clean up the Education data frame, given what we can tell
#
#######################################################################################


#######################################################################################
#  Observations from the file
#
#   EDU File
#        [1] "CountryCode"                                       "Long.Name"
#        [3] "Income.Group"                                      "Region"
#        [5] "Lending.category"                                  "Other.groups"
#        [7] "Currency.Unit"                                     "Latest.population.census"
#        [9] "Latest.household.survey"                           "Special.Notes"
#        [11] "National.accounts.base.year"                      "National.accounts.reference.year"
#        [13] "System.of.National.Accounts"                      "SNA.price.valuation"
#        [15] "Alternative.conversion.factor"                    "PPP.survey.year"
#        [17] "Balance.of.Payments.Manual.in.use"                "External.debt.Reporting.status"
#        [19] "System.of.trade"                                  "Government.Accounting.concept"
#        [21] "IMF.data.dissemination.standard"                  "Source.of.most.recent.Income.and.expenditure.data"
#        [23] "Vital.registration.complete"                      "Latest.agricultural.census"
#        [25] "Latest.industrial.data"                           "Latest.trade.data"
#        [27] "Latest.water.withdrawal.data"                     "X2.alpha.code"
#        [29] "WB.2.code"                                        "Table.Name"
#        [31] "Short.Name"
#
########################################################################################


#######################################################################################
#  Tidy the EDU data (column names and types) and, optionally, check
#######################################################################################


names(EDU)[1]  <- "CountryCode"
names(EDU)[2]  <- "CountryName"
names(EDU)[3]  <- "IncomeGroup"
names(EDU)[4]  <- "Region"
names(EDU)[5]  <- "LendingCategory"
names(EDU)[6]  <- "OtherGroups"
names(EDU)[7]  <- "CurrencyUnit"
names(EDU)[8]  <- "LatestPopulationCensus"
names(EDU)[9]  <- "LatestHouseholdSurvey"
names(EDU)[10] <- "SpecialNotes"
names(EDU)[11] <- "NationalAccountsBaseYear"
names(EDU)[12] <- "NationalAccountsReferenceYear"
names(EDU)[13] <- "SystemofNationalAccounts"
names(EDU)[14] <- "SNAPriceValuation"
names(EDU)[15] <- "AlternativeConversionFactor"
names(EDU)[16] <- "PPPSurveyYear"
names(EDU)[17] <- "BalanceOfPaymentsManualInUse"
names(EDU)[18] <- "ExternalDebtReportingStatus"
names(EDU)[19] <- "SystemOfTrade"
names(EDU)[20] <- "GovernmentAccountingConcept"
names(EDU)[21] <- "IMFDataDisseminationStandard"
names(EDU)[22] <- "SourceOfMostRecentIncomeAndExpenditureData"
names(EDU)[23] <- "VitalRegistrationComplete"
names(EDU)[24] <- "LatestAgriculturalCensus"
names(EDU)[25] <- "LatestIndustrialData"
names(EDU)[26] <- "LatestTradeData"
names(EDU)[27] <- "LatestWaterWithdrawalData"
names(EDU)[28] <- "X2AlphaCode"
names(EDU)[29] <- "WB2Code"
names(EDU)[30] <- "TableName"
names(EDU)[31] <- "ShortName"

EDU$CountryCode <- as.character(EDU$CountryCode)
EDU$CountryName <- as.character(EDU$CountryName)
EDU$IncomeGroup <- as.character(EDU$IncomeGroup)
EDU$Region <- as.character(EDU$Region)
EDU$LendingCategory <- as.character(EDU$LendingCategory)
EDU$OtherGroups <- as.character(EDU$OtherGroups)
EDU$CurrencyUnit <- as.character(EDU$CurrencyUnit)
EDU$LatestPopulationCensus <- as.numeric(EDU$LatestPopulationCensus)
EDU$LatestHouseholdSurvey <- as.character(EDU$LatestHouseholdSurvey)
EDU$SpecialNotes <- as.character(EDU$SpecialNotes)
EDU$NationalAccountsBaseYear <- as.numeric(EDU$NationalAccountsBaseYear)
#   EDU$NationalAccountsReferenceYear <- as.numeric(EDU$NationalAccountsReferenceYear)
#   EDU$SystemOfNationalAccounts <- as.numeric(EDU$SystemOfNationalAccounts)
EDU$SNAPriceValuation <- as.character(EDU$SNAPriceValuation)
EDU$AlternativeConversionFactor <- as.character(EDU$AlternativeConversionFactor)
#   EDU$PPPSurveyYear <- as.character(EDU$PPPSurveyYear)
EDU$BalanceOfPaymentsManualInUse <- as.character(EDU$BalanceOfPaymentsManualInUse)
EDU$ExternalDebtReportingStatus <- as.character(EDU$ExternalDebtReportingStatus)
EDU$SystemOfTrade <- as.character(EDU$SystemOfTrade)
EDU$GovernmentAccountingConcept <- as.character(EDU$GovernmentAccountingConcept)
EDU$IMFDataDisseminationStandard <- as.character(EDU$IMFDataDisseminationStandard)
EDU$SourceOfMostRecentIncomeAndExpenditureData <- as.character(EDU$SourceOfMostRecentIncomeAndExpenditureData)
#   EDU$VitalRegistrationComplete <- as.character(EDU$VitalRegistrationComplete)
EDU$LatestAgriculturalCensus <- as.character(EDU$LatestAgriculturalCensus)
#   EDU$LatestIndustrialData <- as.character(EDU$LatestIndustrialData)
#   EDU$LatestTradeData <- as.character(EDU$LatestTradeData)
#   EDU$LatestWaterWithdrawalData <- as.character(EDU$LatestWaterWithdrawalData)
EDU$X2AlphaCode <- as.character(EDU$X2AlphaCode)
EDU$WB2Code <- as.character(EDU$WB2Code)
EDU$TableName <- as.character(EDU$TableName)
EDU$ShortName <- as.character(EDU$ShortName)


if (debug == 1) {
    str(EDU)
}


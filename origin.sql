SELECT        FilteredOpportunity.name AS [Opportunity Name], FilteredOpportunity.currentsituation AS [Current Situation], FilteredOpportunity.createdbyname, FilteredOpportunity.createdon, 
                         FilteredOpportunity.parentaccountidname AS Account, FilteredOpportunity.parentcontactidname AS Contact, FilteredOpportunity.new_oppid AS OppID, FilteredContact.suffix, FilteredAccount.accountnumber, 
                         FilteredOpportunity.modifiedbyname, FilteredOpportunity.modifiedon, FilteredOpportunity.purchaseprocessname, FilteredOpportunity.new_originname, FilteredOpportunity.actualvalue, 
                         CAST(FilteredOpportunity.actualclosedate AS date) AS actualclosedate, YEAR(FilteredOpportunity.actualclosedate) AS Year, DATENAME(mm, FilteredOpportunity.actualclosedate) AS MonthName, 
                         MONTH(FilteredOpportunity.actualclosedate) AS Month, N'الإجمالي' AS Total, FilteredStringMap.Value, FilteredStringMap.AttributeName
FROM            FilteredOpportunity LEFT OUTER JOIN
                         FilteredContact ON FilteredOpportunity.parentcontactid = FilteredContact.contactid LEFT OUTER JOIN
                         FilteredAccount ON FilteredOpportunity.parentaccountid = FilteredAccount.accountid FULL OUTER JOIN
                         FilteredStringMap ON FilteredOpportunity.new_origin = FilteredStringMap.AttributeValue
WHERE        (FilteredOpportunity.statecodename = N'WON') AND (MONTH(FilteredOpportunity.actualclosedate) IN (1, 2, 3)) AND (FilteredStringMap.AttributeName = N'new_origin')
ORDER BY FilteredOpportunity.modifiedon
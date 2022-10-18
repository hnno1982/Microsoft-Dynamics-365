SELECT        FilteredOpportunity.new_oppid, FilteredOpportunity.opportunityid, FilteredOpportunity.new_presentproposaldate, FilteredOpportunity.estimatedvalue, DATEPART(week, 
                         FilteredOpportunity.new_presentproposaldate) - DATEPART(week, DATEADD(day, 1, EOMONTH(FilteredOpportunity.new_presentproposaldate, - 1))) + 1 AS week, FilteredOpportunity.opportunityratingcode, 
                         FilteredAccount.new_enaccountname, FilteredPriceLevel.description, FilteredProduct.new_enname, FilteredOpportunity.new_currentsituationmodifybyname, FilteredOpportunity.new_currentsituationmodifyon, 
                         FilteredOpportunity.salesstagecodename, FilteredOpportunity.salesstagecode, Filterednew_economicsector.new_economicsectornameen, Filterednew_economicsector.new_economicsectorid, 
                         Filterednew_economicsector.new_sortingnumber
FROM            Filterednew_economicsector INNER JOIN
                         FilteredAccount ON Filterednew_economicsector.new_economicsectorid = FilteredAccount.new_economicsector RIGHT OUTER JOIN
                         FilteredOpportunity LEFT OUTER JOIN
                         FilteredProduct ON FilteredOpportunity.new_targetservice = FilteredProduct.productid LEFT OUTER JOIN
                         FilteredPriceLevel ON FilteredOpportunity.pricelevelid = FilteredPriceLevel.pricelevelid ON FilteredAccount.accountid = FilteredOpportunity.accountid
WHERE        (FilteredOpportunity.presentproposal = '1') AND (FilteredOpportunity.new_opportunitystages = '100000001') AND (CAST(FilteredOpportunity.new_presentproposaldate AS date) <= '2021-06-16') AND 
                         (FilteredOpportunity.statecode IN (0))
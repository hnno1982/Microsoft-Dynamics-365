SELECT        Filterednew_economicsector.new_economicsectornameen As "Economic Sector name", count (Filterednew_economicsector.new_economicsectorid) as No, sum (FilteredOpportunity.estimatedvalue) As Amount
,Filterednew_economicsector.new_sortingnumber as Sorting
FROM            Filterednew_economicsector INNER JOIN
                         FilteredAccount ON Filterednew_economicsector.new_economicsectorid = FilteredAccount.new_economicsector RIGHT OUTER JOIN
                         FilteredOpportunity LEFT OUTER JOIN
                         FilteredProduct ON FilteredOpportunity.new_targetservice = FilteredProduct.productid LEFT OUTER JOIN
                         FilteredPriceLevel ON FilteredOpportunity.pricelevelid = FilteredPriceLevel.pricelevelid ON FilteredAccount.accountid = FilteredOpportunity.accountid
WHERE        (FilteredOpportunity.presentproposal = '1') AND (FilteredOpportunity.new_opportunitystages = '100000001') AND (CAST(FilteredOpportunity.new_presentproposaldate AS date) <= '2021-06-16') AND 
                         (FilteredOpportunity.statecode IN (0))

						 group by Filterednew_economicsector.new_economicsectorid, Filterednew_economicsector.new_economicsectornameen, Filterednew_economicsector.new_sortingnumber

						 order by Filterednew_economicsector.new_sortingnumber
-- «·ﬁÿ«⁄«  «·—∆Ì”Ì…

SELECT         new_economicsectorid,new_economicsectorname,

-- Open Propose FLW
(SELECT        ISNULL(sum (opp.estimatedvalue), 0 )


--, ISNULL(count (opp.opportunityid), 0 )



FROM           FilteredOpportunity opp LEFT OUTER JOIN
                         FilteredAccount ON opp.accountid = FilteredAccount.accountid
						 where FilteredAccount.new_economicsector = ECO.new_economicsectorid AND



  (opp.presentproposal = '1') AND (opp.new_opportunitystages = '100000001') AND (CAST(opp.new_presentproposaldate AS date) <= '2021-06-16') AND 
                         (opp.statecode IN (0))),



-- Open Propose FLW
(SELECT        ISNULL(count (opp.opportunityid), 0 )


--, ISNULL(count (opp.opportunityid), 0 )



FROM           FilteredOpportunity opp LEFT OUTER JOIN
                         FilteredAccount ON opp.accountid = FilteredAccount.accountid
						 where FilteredAccount.new_economicsector = ECO.new_economicsectorid AND



  (opp.presentproposal = '1') AND (opp.new_opportunitystages = '100000001') AND (CAST(opp.new_presentproposaldate AS date) <= '2021-06-16') AND 
                         (opp.statecode IN (0)))





FROM            Filterednew_economicsector ECO
WHERE        (new_industry = '2c19e125-9b61-e911-b809-0050568dce2a')
ORDER BY new_sortingnumber







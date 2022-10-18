--«·ﬁÿ«⁄«  «·›—⁄Ì… 1 ··ﬁÿ«⁄ «·√Â·Ì
SELECT         new_economicsectorid,new_economicsectorname,

-- WON
(SELECT        ISNULL(sum (opp.actualvalue), 0 )
FROM           FilteredOpportunity opp LEFT OUTER JOIN
                         FilteredAccount ON opp.accountid = FilteredAccount.accountid
						 where FilteredAccount.new_industry = ECO.new_economicsectorid AND
						 opp.statecode = 1 AND opp.new_origin <> 1 AND  DATEPART(year,opp.actualclosedate) = '2019' and  DATENAME(month, opp.actualclosedate) IN ('August')) TotalWON, 

(SELECT        ISNULL(count (opp.statecode), 0 )
FROM           FilteredOpportunity opp LEFT OUTER JOIN
                         FilteredAccount ON opp.accountid = FilteredAccount.accountid
						 where FilteredAccount.new_industry = ECO.new_economicsectorid AND
						 opp.statecode = 1 AND opp.new_origin <> 1 AND  DATEPART(year,opp.actualclosedate) = '2019' and  DATENAME(month, opp.actualclosedate) IN ('August')) CountOppWON,

-- LOSE
(SELECT        ISNULL(sum (opp.actualvalue), 0 )
FROM           FilteredOpportunity opp LEFT OUTER JOIN
                         FilteredAccount ON opp.accountid = FilteredAccount.accountid
						 where FilteredAccount.new_industry = ECO.new_economicsectorid AND
						 opp.statecode = 2 AND opp.new_origin <> 1 AND  DATEPART(year,opp.actualclosedate) = '2019' and  DATENAME(month, opp.actualclosedate) IN ('August')) TotalLOSE, 

(SELECT        ISNULL(count (opp.statecode), 0 )
FROM           FilteredOpportunity opp LEFT OUTER JOIN
                         FilteredAccount ON opp.accountid = FilteredAccount.accountid
						 where FilteredAccount.new_industry = ECO.new_economicsectorid AND
						 opp.statecode = 2 AND opp.new_origin <> 1 AND  DATEPART(year,opp.actualclosedate) = '2019' and  DATENAME(month, opp.actualclosedate) IN ('August')) CountOppLOSE,

-- Open Q&P
(SELECT        ISNULL(sum (opp.estimatedvalue), 0 )
FROM           FilteredOpportunity opp LEFT OUTER JOIN
                         FilteredAccount ON opp.accountid = FilteredAccount.accountid
						 where FilteredAccount.new_industry = ECO.new_economicsectorid AND
						 opp.statecode = 0 AND opp.new_origin <> 1 AND  DATEPART(year,opp.createdon) = '2019' and  DATENAME(month, opp.createdon) IN ('August')) TotalOpnall, 

(SELECT        ISNULL(count (opp.statecode), 0 )
FROM           FilteredOpportunity opp LEFT OUTER JOIN
                         FilteredAccount ON opp.accountid = FilteredAccount.accountid
						 where FilteredAccount.new_industry = ECO.new_economicsectorid AND
						 opp.statecode = 0 AND opp.new_origin <> 1 AND  DATEPART(year,opp.createdon) = '2019' and  DATENAME(month, opp.createdon) IN ('August')) CountOppOpnall,

-- Open Propose REQ
(SELECT        ISNULL(sum (opp.estimatedvalue), 0 )
FROM           FilteredOpportunity opp LEFT OUTER JOIN
                         FilteredAccount ON opp.accountid = FilteredAccount.accountid
						 where FilteredAccount.new_industry = ECO.new_economicsectorid AND
						 opp.statecode = 0 AND opp.new_origin <> 1 AND  DATEPART(year,opp.createdon) = '2019' and  DATENAME(month, opp.createdon) IN ('August') AND opp.new_opportunitystages = 100000000) TotalOpnQP, 

(SELECT        ISNULL(count (opp.statecode), 0 )
FROM           FilteredOpportunity opp LEFT OUTER JOIN
                         FilteredAccount ON opp.accountid = FilteredAccount.accountid
						 where FilteredAccount.new_industry = ECO.new_economicsectorid AND
						 opp.statecode = 0 AND opp.new_origin <> 1 AND  DATEPART(year,opp.createdon) = '2019' and  DATENAME(month, opp.createdon) IN ('August') AND opp.new_opportunitystages = 100000000) CountOppOpnQP,
-- Open Propose FLW
(SELECT        ISNULL(sum (opp.estimatedvalue), 0 )
FROM           FilteredOpportunity opp LEFT OUTER JOIN
                         FilteredAccount ON opp.accountid = FilteredAccount.accountid
						 where FilteredAccount.new_industry = ECO.new_economicsectorid AND
						 opp.statecode = 0 AND opp.new_origin <> 1 AND  DATEPART(year,opp.new_proposerequesteddate) = '2019' and  DATENAME(month, opp.new_proposerequesteddate) IN ('August') AND opp.new_opportunitystages = 100000001 AND opp.presentproposal = 0) TotalOpnProposeREQ, 

(SELECT        ISNULL(count (opp.statecode), 0 )
FROM           FilteredOpportunity opp LEFT OUTER JOIN
                         FilteredAccount ON opp.accountid = FilteredAccount.accountid
						 where FilteredAccount.new_industry = ECO.new_economicsectorid AND
						 opp.statecode = 0 AND opp.new_origin <> 1 AND  DATEPART(year,opp.new_proposerequesteddate) = '2019' and  DATENAME(month, opp.new_proposerequesteddate) IN ('August') AND opp.new_opportunitystages = 100000001 AND opp.presentproposal = 0) CountOppOpnProposeREQ,
-- Open Contract REQ
(SELECT        ISNULL(sum (opp.estimatedvalue), 0 )
FROM           FilteredOpportunity opp LEFT OUTER JOIN
                         FilteredAccount ON opp.accountid = FilteredAccount.accountid
						 where FilteredAccount.new_industry = ECO.new_economicsectorid AND
						 opp.statecode = 0 AND opp.new_origin <> 1 AND  DATEPART(year,opp.new_presentproposaldate) = '2019' and  DATENAME(month, opp.new_presentproposaldate) IN ('August') AND opp.new_opportunitystages = 100000001 AND opp.presentproposal = 1) TotalOpnProposeFLW, 

(SELECT        ISNULL(count (opp.statecode), 0 )
FROM           FilteredOpportunity opp LEFT OUTER JOIN
                         FilteredAccount ON opp.accountid = FilteredAccount.accountid
						 where FilteredAccount.new_industry = ECO.new_economicsectorid AND
						 opp.statecode = 0 AND opp.new_origin <> 1 AND  DATEPART(year,opp.new_presentproposaldate) = '2019' and  DATENAME(month, opp.new_presentproposaldate) IN ('August') AND opp.new_opportunitystages = 100000001 AND opp.presentproposal = 1) CountOppOpnProposeFLW,
-- Open Contract FLW
(SELECT        ISNULL(sum (opp.estimatedvalue), 0 )
FROM           FilteredOpportunity opp LEFT OUTER JOIN
                         FilteredAccount ON opp.accountid = FilteredAccount.accountid
						 where FilteredAccount.new_industry = ECO.new_economicsectorid AND
						 opp.statecode = 0 AND opp.new_origin <> 1 AND  DATEPART(year,opp.new_contractrequesteddate) = '2019' and  DATENAME(month, opp.new_contractrequesteddate) IN ('August') AND opp.new_opportunitystages = 100000002 AND opp.presentfinalproposal = 0) TotalOpnConREQ, 

(SELECT        ISNULL(count (opp.statecode), 0 )
FROM           FilteredOpportunity opp LEFT OUTER JOIN
                         FilteredAccount ON opp.accountid = FilteredAccount.accountid
						 where FilteredAccount.new_industry = ECO.new_economicsectorid AND
						 opp.statecode = 0 AND opp.new_origin <> 1 AND  DATEPART(year,opp.new_contractrequesteddate) = '2019' and  DATENAME(month, opp.new_contractrequesteddate) IN ('August') AND opp.new_opportunitystages = 100000002 AND opp.presentfinalproposal = 0) CountOppOpnCOnREQ,
-- Open Contract REQ
(SELECT        ISNULL(sum (opp.estimatedvalue), 0 )
FROM           FilteredOpportunity opp LEFT OUTER JOIN
                         FilteredAccount ON opp.accountid = FilteredAccount.accountid
						 where FilteredAccount.new_industry = ECO.new_economicsectorid AND
						 opp.statecode = 0 AND opp.new_origin <> 1 AND  DATEPART(year,opp.new_presentcontractdate) = '2019' and  DATENAME(month, opp.new_presentcontractdate) IN ('August') AND opp.new_opportunitystages = 100000002 AND opp.presentfinalproposal = 1) TotalOpnConFLW, 

(SELECT        ISNULL(count (opp.statecode), 0 )
FROM           FilteredOpportunity opp LEFT OUTER JOIN
                         FilteredAccount ON opp.accountid = FilteredAccount.accountid
						 where FilteredAccount.new_industry = ECO.new_economicsectorid AND
						 opp.statecode = 0 AND opp.new_origin <> 1 AND  DATEPART(year,opp.new_presentcontractdate) = '2019' and  DATENAME(month, opp.new_presentcontractdate) IN ('August') AND opp.new_opportunitystages = 100000002 AND opp.presentfinalproposal = 1) CountOppOpnCOnFLW

FROM            Filterednew_economicsector ECO
--«·ﬁÿ«⁄ «·√Â·Ì
WHERE        (new_industry = '467DD160-D560-E911-B809-0050568DCE2A')
ORDER BY new_sortingnumber







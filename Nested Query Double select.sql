SELECT AttributeValue, Value,

-- WOn Opportunities this year
(SELECT ISNULL(sum (actualvalue), 0 )
FROM            FilteredOpportunity opp
where statecode = 1 AND new_origin <> 1 AND opp.new_origin = orgn.AttributeValue and DATEPART(year,actualclosedate) = '2019' and  DATENAME(month, actualclosedate) IN ('August')) TotalWON,

(SELECT ISNULL(count (statecode), 0 )
FROM            FilteredOpportunity opp
where statecode = 1 AND new_origin <> 1 AND opp.new_origin = orgn.AttributeValue and DATEPART(year,actualclosedate) = '2019' and  DATENAME(month, actualclosedate) IN ('August')) CountOppWON,














-- Lose Opportunities this year
(SELECT ISNULL(sum (actualvalue), 0 )
FROM            FilteredOpportunity opp
where statecode = 2 AND new_origin <> 1 AND opp.new_origin = orgn.AttributeValue and DATEPART(year,actualclosedate) = '2019' and  DATENAME(month, actualclosedate) IN ('August')) TotalLOSE,

(SELECT ISNULL(count (statecode), 0 )
FROM            FilteredOpportunity opp
where statecode = 2 AND new_origin <> 1 AND opp.new_origin = orgn.AttributeValue and DATEPART(year,actualclosedate) = '2019' and  DATENAME(month, actualclosedate) IN ('August')) CountOppLOSE, 











-- Open Opportunities all this year
(SELECT ISNULL(sum (estimatedvalue), 0 )
FROM            FilteredOpportunity opp
where statecode = 0 AND new_origin <> 1 AND opp.new_origin = orgn.AttributeValue and DATEPART(year,createdon) = '2019' and  DATENAME(month, createdon) IN ('August')) TotalOpnall,

(SELECT ISNULL(count (statecode), 0 )
FROM            FilteredOpportunity opp
where statecode = 0 AND new_origin <> 1 AND opp.new_origin = orgn.AttributeValue and DATEPART(year,createdon) = '2019' and  DATENAME(month, createdon) IN ('August')) CountOppOpnall,











-- Open Opportunities Qualify and Preparing this year
(SELECT ISNULL(sum (estimatedvalue), 0 )
FROM            FilteredOpportunity opp
where statecode = 0 AND new_origin <> 1 AND opp.new_origin = orgn.AttributeValue and DATEPART(year,createdon) = '2019' and  DATENAME(month, createdon) IN ('August') AND new_opportunitystages = 100000000) TotalOpnQP,

(SELECT ISNULL(count (statecode), 0 )
FROM            FilteredOpportunity opp
where statecode = 0 AND new_origin <> 1 AND opp.new_origin = orgn.AttributeValue and DATEPART(year,createdon) = '2019' and  DATENAME(month, createdon) IN ('August') AND new_opportunitystages = 100000000) CountOppOpnQP,










-- Open Opportunities Propose request this year
(SELECT ISNULL(sum (estimatedvalue), 0 )
FROM            FilteredOpportunity opp
where statecode = 0 AND new_origin <> 1 AND opp.new_origin = orgn.AttributeValue and DATEPART(year,new_proposerequesteddate) = '2019' and  DATENAME(month, new_proposerequesteddate) IN ('August') AND new_opportunitystages = 100000001 AND presentproposal = 0) TotalOpnProposeREQ,

(SELECT ISNULL(count (statecode), 0 )
FROM            FilteredOpportunity opp
where statecode = 0 AND new_origin <> 1 AND opp.new_origin = orgn.AttributeValue and DATEPART(year,new_proposerequesteddate) = '2019' and  DATENAME(month, new_proposerequesteddate) IN ('August') AND new_opportunitystages = 100000001 AND presentproposal = 0) CountOppOpnProposeREQ,











-- Open Opportunities Propose follwoup this year
(SELECT ISNULL(sum (estimatedvalue), 0 )
FROM            FilteredOpportunity opp
where statecode = 0 AND new_origin <> 1 AND opp.new_origin = orgn.AttributeValue and DATEPART(year,new_presentproposaldate) = '2019' and  DATENAME(month, new_presentproposaldate) IN ('August') AND new_opportunitystages = 100000001 AND presentproposal = 1) TotalOpnProposeFLW,

(SELECT ISNULL(count (statecode), 0 )
FROM            FilteredOpportunity opp
where statecode = 0 AND new_origin <> 1 AND opp.new_origin = orgn.AttributeValue and DATEPART(year,new_presentproposaldate) = '2019' and  DATENAME(month, new_presentproposaldate) IN ('August') AND new_opportunitystages = 100000001 AND presentproposal = 1) CountOppOpnProposeFLW,











-- Open Opportunities Contract request this year
(SELECT ISNULL(sum (estimatedvalue), 0 )
FROM            FilteredOpportunity opp
where statecode = 0 AND new_origin <> 1 AND opp.new_origin = orgn.AttributeValue and DATEPART(year,new_contractrequesteddate) = '2019' and  DATENAME(month, new_contractrequesteddate) IN ('August') AND new_opportunitystages = 100000002 AND presentfinalproposal = 0) TotalOpnConREQ,

(SELECT ISNULL(count (statecode), 0 )
FROM            FilteredOpportunity opp
where statecode = 0 AND new_origin <> 1 AND opp.new_origin = orgn.AttributeValue and DATEPART(year,new_contractrequesteddate) = '2019' and  DATENAME(month, new_contractrequesteddate) IN ('August') AND new_opportunitystages = 100000002 AND presentfinalproposal = 0) CountOppOpnCOnREQ,












-- Open Opportunities Contract follwoup this year
(SELECT ISNULL(sum (estimatedvalue), 0 )
FROM            FilteredOpportunity opp
where statecode = 0 AND new_origin <> 1 AND opp.new_origin = orgn.AttributeValue and DATEPART(year,new_presentcontractdate) = '2019' and  DATENAME(month, new_presentcontractdate) IN ('August') AND new_opportunitystages = 100000002 AND presentfinalproposal = 1) TotalOpnConFLW,

(SELECT ISNULL(count (statecode), 0 )
FROM            FilteredOpportunity opp
where statecode = 0 AND new_origin <> 1 AND opp.new_origin = orgn.AttributeValue and DATEPART(year,new_presentcontractdate) = '2019' and  DATENAME(month, new_presentcontractdate) IN ('August') AND new_opportunitystages = 100000002 AND presentfinalproposal = 1) CountOppOpnCOnFLW


















FROM            FilteredStringMap orgn
WHERE        (AttributeName = N'new_origin') AND (Value <> N'Phone')
ORDER BY DisplayOrder







-- --God Father
--SELECT O.OfficeID
--  , (
--    SELECT COUNT(*)
--    FROM AGENT A
--    WHERE A.OfficeID = O.OfficeID
--)
--FROM OFFICE O
--ORDER BY O.OfficeID


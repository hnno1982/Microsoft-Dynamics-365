SELECT        PROD.productnumber ,PROD.productid, PROD.name, PROD.pricelevelid, PROD.pricelevelidname, PROD.statuscode, PROD.statuscodename, PROD.new_sortingnumber, 
PRIC.new_businessline, PRIC.new_businesslinename, PRIC.statuscode, PRIC.statuscodename,

-- open proposal flw credit

( SELECT        ISNULL(sum (opp.estimatedvalue), 0 )
FROM            FilteredOpportunity opp
WHERE        opp.new_targetservice = PROD.productid and (presentproposal = '1') AND (new_opportunitystages = '100000001') AND (CAST(new_presentproposaldate AS date) < @d1) AND (statecode IN (0))) proposal_credit_count,

( SELECT        ISNULL(sum (opp.statecode), 0 )
FROM            FilteredOpportunity opp
WHERE        opp.new_targetservice = PROD.productid and (presentproposal = '1') AND (new_opportunitystages = '100000001') AND (CAST(new_presentproposaldate AS date) < @d1) AND (statecode IN (0))) proposal_credit_mony,


-- open engagment  flw credit

( SELECT        ISNULL(sum (opp.estimatedvalue), 0 )
FROM            FilteredOpportunity opp
WHERE        opp.new_targetservice = PROD.productid and (presentfinalproposal  = '1') AND (new_opportunitystages = '100000002') AND (CAST(new_presentcontractdate AS date) < @d1) AND (statecode IN (0))) engag_credit_count,

( SELECT        ISNULL(sum (opp.statecode), 0 )
FROM            FilteredOpportunity opp
WHERE        opp.new_targetservice = PROD.productid and (presentfinalproposal  = '1') AND (new_opportunitystages = '100000002') AND (CAST(new_presentcontractdate AS date) < @d1) AND (statecode IN (0))) engag_credit_mony,


-- now proposal flw 

( SELECT        ISNULL(sum (opp.estimatedvalue), 0 )
FROM            FilteredOpportunity opp
WHERE        opp.new_targetservice = PROD.productid and (presentfinalproposal  = '1') AND (new_opportunitystages = '100000002')  AND (CAST(new_presentproposaldate AS date) BETWEEN @d1 AND @d2) AND (statecode IN (0))) proposal_now_count,

( SELECT        ISNULL(sum (opp.statecode), 0 )
FROM            FilteredOpportunity opp
WHERE        opp.new_targetservice = PROD.productid and (presentfinalproposal  = '1') AND (new_opportunitystages = '100000002')  AND (CAST(new_presentproposaldate AS date) BETWEEN @d1 AND @d2) AND (statecode IN (0))) proposal_now_mony,


-- now engagment  flw 

( SELECT        ISNULL(sum (opp.estimatedvalue), 0 )
FROM            FilteredOpportunity opp
WHERE        opp.new_targetservice = PROD.productid and (presentfinalproposal  = '1') AND (new_opportunitystages = '100000002')  AND (CAST(new_presentcontractdate AS date) BETWEEN @d1 AND @d2) AND (statecode IN (0))) engag_now_count,

( SELECT        ISNULL(sum (opp.statecode), 0 )
FROM            FilteredOpportunity opp
WHERE        opp.new_targetservice = PROD.productid and (presentfinalproposal  = '1') AND (new_opportunitystages = '100000002')  AND (CAST(new_presentcontractdate AS date) BETWEEN @d1 AND @d2) AND (statecode IN (0))) engag_now_mony,


-- WON
( SELECT        ISNULL(sum (opp.actualvalue), 0 )
FROM           FilteredOpportunity opp
						 where opp.new_targetservice = PROD.productid and
						 opp.statecode = 1  AND (CAST(opp.actualclosedate AS date) BETWEEN @d1 AND @d2)) TotalWON,


(SELECT        ISNULL(count (opp.statecode), 0 )
FROM          FilteredOpportunity opp
						 where opp.new_targetservice = PROD.productid and
						 opp.statecode = 1 AND (CAST(opp.actualclosedate AS date) BETWEEN @d1 AND @d2)) CountOppWON,



-- LOSE
(SELECT        ISNULL(sum (opp.actualvalue), 0 )
FROM           FilteredOpportunity opp
						 where opp.new_targetservice = PROD.productid and
						 opp.statecode = 2  AND (CAST(opp.actualclosedate AS date) BETWEEN @d1 AND @d2)) TotalLOSE, 

(SELECT        ISNULL(count (opp.statecode), 0 )
FROM           FilteredOpportunity opp
						 where opp.new_targetservice = PROD.productid and
						 opp.statecode = 2 AND (CAST(opp.actualclosedate AS date) BETWEEN @d1 AND @d2)) CountOppLOSE




FROM            FilteredProduct PROD LEFT OUTER JOIN
                         FilteredPriceLevel PRIC ON PROD.pricelevelid = PRIC.pricelevelid 
WHERE        (PROD.pricelevelid IS NOT NULL) AND (PROD.statuscode NOT IN (2, 3)) and PROD.productstructure = 1
ORDER BY PROD.new_sortingnumber
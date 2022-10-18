-- «·≈œ«—«  «·—∆Ì”Ì…
SELECT * FROM
(
SELECT      pricelevelid,  name, new_sortnumber,

-- Open Propose FLW
(SELECT        ISNULL(sum (opp.estimatedvalue), 0 )
FROM           FilteredOpportunity opp LEFT OUTER JOIN
                         FilteredAccount ON opp.accountid = FilteredAccount.accountid
						 where FilteredAccount.new_economicsector = '01A19054-D560-E911-B809-0050568DCE2A' AND
						 opp.statecode = 0  AND opp.presentproposal = 1 and  opp.presentfinalproposal <> 1
AND opp.ownerid = 'AD270885-E837-E811-80F8-0050568D7281'
and opp.pricelevelid =PLI.pricelevelid) as TotalOpnProposeFLW,

(SELECT        ISNULL(count (opp.statecode), 0 )
FROM           FilteredOpportunity opp LEFT OUTER JOIN
                         FilteredAccount ON opp.accountid = FilteredAccount.accountid
						 where FilteredAccount.new_economicsector = '01A19054-D560-E911-B809-0050568DCE2A' AND
						  opp.statecode = 0   AND   opp.presentproposal = 1 and  opp.presentfinalproposal <> 1
AND opp.ownerid = 'AD270885-E837-E811-80F8-0050568D7281'
and opp.pricelevelid =PLI.pricelevelid) as CountOppOpnProposeFLW,

-- Open Contract FLW
(SELECT        ISNULL(sum (opp.estimatedvalue), 0 )
FROM           FilteredOpportunity opp LEFT OUTER JOIN
                         FilteredAccount ON opp.accountid = FilteredAccount.accountid
						 where FilteredAccount.new_economicsector = '01A19054-D560-E911-B809-0050568DCE2A' AND
						  opp.statecode = 0   AND   opp.presentproposal = 1 and  opp.presentfinalproposal = 1
AND opp.ownerid = 'AD270885-E837-E811-80F8-0050568D7281'
and opp.pricelevelid =PLI.pricelevelid) as TotalOpnConFLW,

(SELECT        ISNULL(count (opp.statecode), 0 )
FROM           FilteredOpportunity opp LEFT OUTER JOIN
                         FilteredAccount ON opp.accountid = FilteredAccount.accountid
						 where FilteredAccount.new_economicsector = '01A19054-D560-E911-B809-0050568DCE2A' AND
 opp.statecode = 0   AND   opp.presentproposal = 1 and  opp.presentfinalproposal = 1
AND opp.ownerid = 'AD270885-E837-E811-80F8-0050568D7281'
and opp.pricelevelid =PLI.pricelevelid) as CountOppOpnCOnFLW

FROM            FilteredPriceLevel PLI
where statecode = 0 

) mytable
where (TotalOpnProposeFLW > 0 or TotalOpnConFLW > 0)
order by new_sortnumber






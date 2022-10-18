-- «·ﬁÿ«⁄«  «·—∆Ì”Ì…
SELECT * FROM
(
SELECT   new_economicsectorid,new_economicsectorname,new_sortingnumber,

-- Open Propose FLW
(SELECT        ISNULL(sum (opp.estimatedvalue), 0 )
FROM           FilteredOpportunity opp LEFT OUTER JOIN
                         FilteredAccount ON opp.accountid = FilteredAccount.accountid
						 where FilteredAccount.new_economicsector = ECO.new_economicsectorid AND
						 opp.statecode = 0  AND   opp.presentproposal = 1 and  opp.presentfinalproposal <> 1
AND opp.ownerid = 'AD270885-E837-E811-80F8-0050568D7281') TotalOpnProposeFLW,

(SELECT        ISNULL(count (opp.statecode), 0 )
FROM           FilteredOpportunity opp LEFT OUTER JOIN
                         FilteredAccount ON opp.accountid = FilteredAccount.accountid
						 where FilteredAccount.new_economicsector = ECO.new_economicsectorid AND
						  opp.statecode = 0   AND   opp.presentproposal = 1 and  opp.presentfinalproposal <> 1
AND opp.ownerid = 'AD270885-E837-E811-80F8-0050568D7281') CountOppOpnProposeFLW,

-- Open Contract FLW
(SELECT        ISNULL(sum (opp.estimatedvalue), 0 )
FROM           FilteredOpportunity opp LEFT OUTER JOIN
                         FilteredAccount ON opp.accountid = FilteredAccount.accountid
						 where FilteredAccount.new_economicsector = ECO.new_economicsectorid AND
						  opp.statecode = 0   AND   opp.presentproposal = 1 and  opp.presentfinalproposal = 1
AND opp.ownerid = 'AD270885-E837-E811-80F8-0050568D7281') TotalOpnConFLW,

(SELECT        ISNULL(count (opp.statecode), 0 )
FROM           FilteredOpportunity opp LEFT OUTER JOIN
                         FilteredAccount ON opp.accountid = FilteredAccount.accountid
						 where FilteredAccount.new_economicsector = ECO.new_economicsectorid AND
 opp.statecode = 0   AND   opp.presentproposal = 1 and  opp.presentfinalproposal = 1
AND opp.ownerid = 'AD270885-E837-E811-80F8-0050568D7281') CountOppOpnCOnFLW

FROM            Filterednew_economicsector ECO
WHERE        (new_industry = '2c19e125-9b61-e911-b809-0050568dce2a')
) mytable
where (TotalOpnProposeFLW > 0 or TotalOpnConFLW > 0)
order by new_sortingnumber








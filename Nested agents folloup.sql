SELECT systemuserid, 
CASE
    WHEN fullname = N'Dina Taira' THEN N'√/ œÌ‰« ÿÌ—…'
    WHEN fullname = N'Reem Habib' THEN N'√/ —Ì„ Õ»Ì»'
	WHEN fullname = N'Yara Mansour' THEN N'√/ Ì«—« „‰’Ê—'
	    ELSE fullname

END AS fullname,

-- Open Opportunities Propose follwoup this year
(SELECT ISNULL(sum (estimatedvalue), 0 )
FROM            FilteredOpportunity AUD2 
where statecode = 0  AND  presentproposal = 1 and presentfinalproposal <> 1
AND AUD2.ownerid = AUD1.systemuserid) TotalOpnProposeFLW,

(SELECT ISNULL(count (statecode), 0 )
FROM            FilteredOpportunity AUD2 
where statecode = 0   AND  presentproposal = 1 and presentfinalproposal <> 1
AND AUD2.ownerid = AUD1.systemuserid) CountOppOpnProposeFLW,

-- Open Opportunities Contract follwoup this year
(SELECT ISNULL(sum (estimatedvalue), 0 )
FROM            FilteredOpportunity AUD2 
where statecode = 0   AND  presentproposal = 1 and presentfinalproposal = 1
AND AUD2.ownerid = AUD1.systemuserid) TotalOpnConFLW,

(SELECT ISNULL(count (statecode), 0 )
FROM            FilteredOpportunity AUD2 
where statecode = 0   AND  presentproposal = 1 and presentfinalproposal = 1
AND AUD2.ownerid = AUD1.systemuserid) CountOppOpnCOnFLW

FROM            FilteredSystemUser AUD1
where isdisabled IN (0, 1) AND fullname IN (N'Dina Taira', N'Reem Habib', N'Yara Mansour')






-- ≈Ã„«·Ì «·‘—ﬂ«  «· Ì ·„ ‰ﬁœ„ ·Â« ⁄—Ê÷ „‰ ﬁ»·
SELECT  new_economicsectorid,new_economicsectorname,
(SELECT ISNULL(count (ACC.accountid), 0)
FROM FilteredAccount ACC 
WHERE ACC.new_economicsector = ECO.new_economicsectorid  AND ACC.accountid not in
						(SELECT FilteredOpportunity.accountid FROM FilteredAccount inner JOIN
						FilteredOpportunity ON FilteredAccount.accountid = FilteredOpportunity.accountid)

and (ACC.new_competitor IN (0) or ACC.new_competitor  is null) AND (ACC.new_vendor IN (0) or ACC.new_vendor is null)
and ACC.statecode=0) CountAccount	

---------
,(SELECT ISNULL(count (ACC.new_industry), 0)
FROM FilteredAccount ACC 
WHERE ACC.new_economicsector = ECO.new_economicsectorid  AND ACC.accountid not in
						(SELECT FilteredOpportunity.accountid FROM FilteredAccount inner JOIN
						FilteredOpportunity ON FilteredAccount.accountid = FilteredOpportunity.accountid)

and (ACC.new_competitor IN (0) or ACC.new_competitor  is null) AND (ACC.new_vendor IN (0) or ACC.new_vendor is null)
and ACC.statecode=0) indu1	
-------
			
FROM            Filterednew_economicsector ECO
WHERE        (new_industry = '2c19e125-9b61-e911-b809-0050568dce2a') -- Public sector
ORDER BY new_sortingnumber







-- delete test indus 1
-- ≈Ã„«·Ì «·‘—ﬂ«  «· Ì ·„ ‰ﬁœ„ ·Â« ⁄—Ê÷ „‰ ﬁ»·
SELECT  new_economicsectorid,new_economicsectorname,
(SELECT ISNULL(count (ACC.accountid), 0)
FROM FilteredAccount ACC 
WHERE ACC.new_industry = ECO.new_economicsectorid  AND ACC.accountid not in
						(SELECT FilteredOpportunity.accountid FROM FilteredAccount inner JOIN
						FilteredOpportunity ON FilteredAccount.accountid = FilteredOpportunity.accountid)

and (ACC.new_competitor IN (0) or ACC.new_competitor  is null) AND (ACC.new_vendor IN (0) or ACC.new_vendor is null)
and ACC.statecode=0) CountAccount

---------
,(SELECT ISNULL(count (ACC.new_industrytype), 0)
FROM FilteredAccount ACC 
WHERE ACC.new_industry = ECO.new_economicsectorid  AND ACC.accountid not in
						(SELECT FilteredOpportunity.accountid FROM FilteredAccount inner JOIN
						FilteredOpportunity ON FilteredAccount.accountid = FilteredOpportunity.accountid)

and (ACC.new_competitor IN (0) or ACC.new_competitor  is null) AND (ACC.new_vendor IN (0) or ACC.new_vendor is null)
and ACC.statecode=0) indu2	
-------
			
FROM            Filterednew_economicsector ECO
WHERE        (new_industry = '467DD160-D560-E911-B809-0050568DCE2A') --industrial 1
ORDER BY new_sortingnumber
-- delete test













-- delete test indus 2
-- ≈Ã„«·Ì «·‘—ﬂ«  «· Ì ·„ ‰ﬁœ„ ·Â« ⁄—Ê÷ „‰ ﬁ»·
SELECT  new_economicsectorid,new_economicsectorname,
(SELECT ISNULL(count (ACC.accountid), 0)
FROM FilteredAccount ACC 
WHERE ACC.new_industrytype = ECO.new_economicsectorid  AND ACC.accountid not in
						(SELECT FilteredOpportunity.accountid FROM FilteredAccount inner JOIN
						FilteredOpportunity ON FilteredAccount.accountid = FilteredOpportunity.accountid)

and (ACC.new_competitor IN (0) or ACC.new_competitor  is null) AND (ACC.new_vendor IN (0) or ACC.new_vendor is null)
and ACC.statecode=0) CountAccount

-----------
--,(SELECT ISNULL(count (ACC.new_industrytype), 0)
--FROM FilteredAccount ACC 
--WHERE ACC.new_industrytype = ECO.new_economicsectorid  AND ACC.accountid not in
--						(SELECT FilteredOpportunity.accountid FROM FilteredAccount inner JOIN
--						FilteredOpportunity ON FilteredAccount.accountid = FilteredOpportunity.accountid)

--and (ACC.new_competitor IN (0) or ACC.new_competitor  is null) AND (ACC.new_vendor IN (0) or ACC.new_vendor is null)
--and ACC.statecode=0) indu2	
---------
			
FROM            Filterednew_economicsector ECO
WHERE        (new_industry = '7534A6E5-D560-E911-B809-0050568DCE2A') --industrial 1
ORDER BY new_sortingnumber
-- delete test
























-- ≈Ã„«·Ì «·‘—ﬂ«  «· Ì ·„ ‰ﬁœ„ ·Â« ⁄—Ê÷ „‰ ﬁ»·
SELECT  new_economicsectorid,new_economicsectorname,
(SELECT ISNULL(count (ACC.accountid), 0)
FROM FilteredAccount ACC 
WHERE ACC.new_industrytype = ECO.new_economicsectorid  AND ACC.accountid not in
						(SELECT FilteredOpportunity.accountid FROM FilteredAccount inner JOIN
						FilteredOpportunity ON FilteredAccount.accountid = FilteredOpportunity.accountid)

and (ACC.new_competitor IN (0) or ACC.new_competitor  is null) AND (ACC.new_vendor IN (0) or ACC.new_vendor is null)
and ACC.statecode=0) CountAccount	
			
FROM            Filterednew_economicsector ECO
WHERE        (new_industry = '7534A6E5-D560-E911-B809-0050568DCE2A') --industrial 2
ORDER BY new_sortingnumber








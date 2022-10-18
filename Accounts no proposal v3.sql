-- ≈Ã„«·Ì «·‘—ﬂ«  «· Ì ·„ ‰ﬁœ„ ·Â« ⁄—Ê÷ „‰ ﬁ»·
SELECT 
(SELECT ISNULL(count (ACC.accountid), 0)
FROM FilteredAccount ACC 
WHERE  ACC.accountid not in
						(SELECT FilteredOpportunity.accountid FROM FilteredAccount inner JOIN
						FilteredOpportunity ON FilteredAccount.accountid = FilteredOpportunity.accountid)

and (ACC.new_competitor IN (0) or ACC.new_competitor  is null) AND (ACC.new_vendor IN (0) or ACC.new_vendor is null)
and ACC.statecode=0			
and ACC.new_economicsector = '01A19054-D560-E911-B809-0050568DCE2A' -- Oil sector
) [Oil sector],

(SELECT ISNULL(count (ACC.accountid), 0)
FROM FilteredAccount ACC 
WHERE  ACC.accountid not in
						(SELECT FilteredOpportunity.accountid FROM FilteredAccount inner JOIN
						FilteredOpportunity ON FilteredAccount.accountid = FilteredOpportunity.accountid)

and (ACC.new_competitor IN (0) or ACC.new_competitor  is null) AND (ACC.new_vendor IN (0) or ACC.new_vendor is null)
and ACC.statecode=0			
and ACC.new_economicsector = 'FFA09054-D560-E911-B809-0050568DCE2A' -- Gov sector
) [Gov sector],

(SELECT ISNULL(count (ACC.accountid), 0)
FROM FilteredAccount ACC 
WHERE  ACC.accountid not in
						(SELECT FilteredOpportunity.accountid FROM FilteredAccount inner JOIN
						FilteredOpportunity ON FilteredAccount.accountid = FilteredOpportunity.accountid)

and (ACC.new_competitor IN (0) or ACC.new_competitor  is null) AND (ACC.new_vendor IN (0) or ACC.new_vendor is null)
and ACC.statecode=0			
and ACC.new_economicsector = '467DD160-D560-E911-B809-0050568DCE2A' -- Public sector
) [Public sector],

(SELECT ISNULL(count (ACC.accountid), 0)
FROM FilteredAccount ACC 
WHERE  ACC.accountid not in
						(SELECT FilteredOpportunity.accountid FROM FilteredAccount inner JOIN
						FilteredOpportunity ON FilteredAccount.accountid = FilteredOpportunity.accountid)

and (ACC.new_competitor IN (0) or ACC.new_competitor  is null) AND (ACC.new_vendor IN (0) or ACC.new_vendor is null)
and ACC.statecode=0			
and ACC.new_economicsector = 'D69250DF-E66B-E911-B809-0050568DCE2A' -- Socity sector
) [Socity sector],

(SELECT ISNULL(count (ACC.accountid), 0)
FROM FilteredAccount ACC 
WHERE  ACC.accountid not in
						(SELECT FilteredOpportunity.accountid FROM FilteredAccount inner JOIN
						FilteredOpportunity ON FilteredAccount.accountid = FilteredOpportunity.accountid)

and (ACC.new_competitor IN (0) or ACC.new_competitor  is null) AND (ACC.new_vendor IN (0) or ACC.new_vendor is null)
and ACC.statecode=0			
and ACC.new_economicsector = 'B9039C4F-AD82-E911-B80A-0050568DCE2A' -- Tax sector
) [Tax sector]


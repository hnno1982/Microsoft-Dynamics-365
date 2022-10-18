-- ⁄œœ «· ÕœÌÀ«  «· Ì  „  ⁄·Ï «·‘—ﬂ«  Ê«·«›—«œ ·ﬂ· „ÊŸ›
SELECT        systemuserid, fullname,
-- Count Create Account 
(SELECT ISNULL(count (AUD2.Action), 0)
FROM            Audit AUD2 LEFT OUTER JOIN
                StringMap ON AUD2.Action = StringMap.AttributeValue LEFT OUTER JOIN
                MetadataSchema.Entity ON AUD2.ObjectTypeCode = MetadataSchema.Entity.ObjectTypeCode
WHERE           (StringMap.AttributeName = N'operation') AND (MetadataSchema.Entity.Name <> N'Goal') AND (MetadataSchema.Entity.Name <> N'List') AND (MetadataSchema.Entity.Name <> N'Competitor') AND 
                (MetadataSchema.Entity.Name = N'Account') AND (NOT (AUD2.UserIdName IN (N'XCRM ADMIN', N'SYSTEM', N'Hani Adel'))) AND (AUD2.ChangeData IS NOT NULL) AND (AUD2.Action = 1)
				AND AUD2.UserId = AUD1.systemuserid AND  DATEPART(year,AUD2.CreatedOn) = '2019' and  DATENAME(month, AUD2.CreatedOn) IN ('September')) CountCreatAccount,

-- Count update for Account 
(SELECT ISNULL(count (AUD2.Action), 0)
FROM            Audit AUD2 LEFT OUTER JOIN
                StringMap ON AUD2.Action = StringMap.AttributeValue LEFT OUTER JOIN
                MetadataSchema.Entity ON AUD2.ObjectTypeCode = MetadataSchema.Entity.ObjectTypeCode
WHERE           (StringMap.AttributeName = N'operation') AND (MetadataSchema.Entity.Name <> N'Goal') AND (MetadataSchema.Entity.Name <> N'List') AND (MetadataSchema.Entity.Name <> N'Competitor') AND 
                (MetadataSchema.Entity.Name = N'Account') AND (NOT (AUD2.UserIdName IN (N'XCRM ADMIN', N'SYSTEM', N'Hani Adel'))) AND (AUD2.ChangeData IS NOT NULL) AND (AUD2.Action = 2)
				AND AUD2.UserId = AUD1.systemuserid AND  DATEPART(year,AUD2.CreatedOn) = '2019' and  DATENAME(month, AUD2.CreatedOn) IN ('September')) CountUpdateAccount,

		
-- Count create for contact 
(SELECT ISNULL(count (AUD2.Action), 0)
FROM            Audit AUD2 LEFT OUTER JOIN
                StringMap ON AUD2.Action = StringMap.AttributeValue LEFT OUTER JOIN
                MetadataSchema.Entity ON AUD2.ObjectTypeCode = MetadataSchema.Entity.ObjectTypeCode
WHERE           (StringMap.AttributeName = N'operation') AND (MetadataSchema.Entity.Name <> N'Goal') AND (MetadataSchema.Entity.Name <> N'List') AND (MetadataSchema.Entity.Name <> N'Competitor') AND 
                (MetadataSchema.Entity.Name = N'Contact') AND (NOT (AUD2.UserIdName IN (N'XCRM ADMIN', N'SYSTEM', N'Hani Adel'))) AND (AUD2.ChangeData IS NOT NULL) AND (AUD2.Action = 1)
				AND AUD2.UserId = AUD1.systemuserid AND  DATEPART(year,AUD2.CreatedOn) = '2019' and  DATENAME(month, AUD2.CreatedOn) IN ('September')) CountCreateContact,

-- Count update for contact 
(SELECT ISNULL(count (AUD2.Action), 0)
FROM            Audit AUD2 LEFT OUTER JOIN
                StringMap ON AUD2.Action = StringMap.AttributeValue LEFT OUTER JOIN
                MetadataSchema.Entity ON AUD2.ObjectTypeCode = MetadataSchema.Entity.ObjectTypeCode
WHERE           (StringMap.AttributeName = N'operation') AND (MetadataSchema.Entity.Name <> N'Goal') AND (MetadataSchema.Entity.Name <> N'List') AND (MetadataSchema.Entity.Name <> N'Competitor') AND 
                (MetadataSchema.Entity.Name = N'Contact') AND (NOT (AUD2.UserIdName IN (N'XCRM ADMIN', N'SYSTEM', N'Hani Adel'))) AND (AUD2.ChangeData IS NOT NULL) AND (AUD2.Action = 2)
				AND AUD2.UserId = AUD1.systemuserid AND  DATEPART(year,AUD2.CreatedOn) = '2019' and  DATENAME(month, AUD2.CreatedOn) IN ('September')) CountUpdateContact

FROM            FilteredSystemUser AUD1
where isdisabled IN (0, 1) AND fullname IN (N'Ektemal Horani', N'Nada Al-Attar', N'Sozan Ishak', N'Areej Gad')











		
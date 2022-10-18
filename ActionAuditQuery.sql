










SELECT DISTINCT Audit.UserIdName, Audit.UserId, Audit.Action, StringMap.Value, Audit.ChangeData, Audit.CreatedOn, MetadataSchema.Entity.OriginalLocalizedName, MetadataSchema.Entity.Name, Audit.ObjectTypeCode
FROM            Audit LEFT OUTER JOIN
                         StringMap ON Audit.Action = StringMap.AttributeValue LEFT OUTER JOIN
                         MetadataSchema.Entity ON Audit.ObjectTypeCode = MetadataSchema.Entity.ObjectTypeCode
WHERE        (StringMap.AttributeName = N'operation') AND (MetadataSchema.Entity.Name <> N'Goal') AND (MetadataSchema.Entity.Name <> N'List') AND (MetadataSchema.Entity.Name <> N'Competitor') AND 
                         (MetadataSchema.Entity.Name IN (N'Account', N'Contact')) AND (NOT (Audit.UserIdName IN (N'XCRM ADMIN', N'SYSTEM', N'Hani Adel'))) AND (Audit.ChangeData IS NOT NULL) AND (Audit.Action IN (1, 2))



















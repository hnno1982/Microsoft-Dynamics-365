 
SELECT [AttributeValue]
      ,[Value]
      ,[DisplayOrder]
FROM [btkcrm365_MSCRM].[dbo].[StringMap]
where [AttributeName] = 'new_origin' and value <> 'phone'
order by [DisplayOrder]
	

	
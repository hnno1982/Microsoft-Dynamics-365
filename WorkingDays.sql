/****** Script for SelectTopNRows command from SSMS  ******/
SELECT
       [FollowUpDate]
      ,[Created On],

		  CASE WHEN DATENAME(WEEKDAY,[Created On]) = 'Friday'
          THEN DATEADD(dd,5,[Created On])

          WHEN DATENAME(WEEKDAY,[Created On]) = 'Saturday'
          THEN DATEADD(dd,6,[Created On])

ELSE DATEADD(dd,7,[Created On])

END AS Add_5_Business_Days

  FROM [btkcrm365_MSCRM].[dbo].[ALLFOLWUPOPP]
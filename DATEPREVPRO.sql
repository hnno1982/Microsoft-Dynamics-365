create procedure ALLSERPREVPRO
(

@DATE_ date


)

As
Begin 

SELECT COUNT(opportunityid) AS NUMBER, SUM(estimatedvalue) AS AMOUNT, new_targetservice, purchaseprocessname, DATENAME(MONTH, DATEADD(M, MONTH(createdon), - 1)) AS Month,
  YEAR(createdon) AS Year, CAST(createdon AS date) as CreatedOn
FROM FilteredOpportunity
GROUP BY MONTH(createdon), new_targetservice, statecodename, YEAR(createdon), purchaseprocessname, CAST(createdon AS date)
HAVING (DATEPART(m, createdon) < DATEPART(m, DATEADD(m, 0, GETDATE()))) AND (DATEPART(yyyy, createdon) = DATEPART(yyyy, DATEADD(m, 0, GETDATE()))) AND
  (purchaseprocessname <> N'Government' OR
  purchaseprocessname IS NULL) OR
  (DATEPART(yyyy, createdon) < DATEPART(yyyy, DATEADD(m, 0, GETDATE()))) AND (statecodename = 'Open')



END
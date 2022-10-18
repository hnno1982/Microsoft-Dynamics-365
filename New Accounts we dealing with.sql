-- New Accounts we dealing with 
select

(SELECT 
--FilteredAccount.accountnumber
ISNULL(COUNT(FilteredAccount.accountid), 0) 
FROM FilteredAccount INNER JOIN
FilteredOpportunity ON FilteredAccount.accountid = FilteredOpportunity.accountid INNER JOIN
Filterednew_budgetplanner ON FilteredOpportunity.pricelevelid = Filterednew_budgetplanner.new_unit 
WHERE   FilteredOpportunity.accountid IN
	(
	(SELECT        FilteredOpportunity.accountid
	FROM            FilteredAccount INNER JOIN
							 FilteredOpportunity ON FilteredAccount.accountid = FilteredOpportunity.accountid INNER JOIN
							 Filterednew_budgetplanner ON FilteredOpportunity.pricelevelid = Filterednew_budgetplanner.new_unit
	WHERE        (FilteredOpportunity.statecode = 1) 
	AND (Filterednew_budgetplanner.new_service = 100000000)
	group by     FilteredOpportunity.accountid
	HAVING       (COUNT(FilteredOpportunity.statecode) = 1))
	)

	AND (DATEPART(year, FilteredOpportunity.actualclosedate) = 2019) AND (DATEPART(m, FilteredOpportunity.actualclosedate) IN (10))
	AND (FilteredOpportunity.statecode = 1) 
	AND (Filterednew_budgetplanner.new_service = 100000000)
	--group by FilteredAccount.accountnumber
	--HAVING (COUNT(FilteredOpportunity.statecode) = 1)
	) AS Assurance,



(SELECT 
--FilteredAccount.accountnumber
ISNULL(COUNT(FilteredAccount.accountid), 0) 
FROM FilteredAccount INNER JOIN
FilteredOpportunity ON FilteredAccount.accountid = FilteredOpportunity.accountid INNER JOIN
Filterednew_budgetplanner ON FilteredOpportunity.pricelevelid = Filterednew_budgetplanner.new_unit 
WHERE   FilteredOpportunity.accountid IN
	(
	(SELECT        FilteredOpportunity.accountid
	FROM            FilteredAccount INNER JOIN
							 FilteredOpportunity ON FilteredAccount.accountid = FilteredOpportunity.accountid INNER JOIN
							 Filterednew_budgetplanner ON FilteredOpportunity.pricelevelid = Filterednew_budgetplanner.new_unit
	WHERE        (FilteredOpportunity.statecode = 1) 
	AND (Filterednew_budgetplanner.new_service = 100000001)
	group by     FilteredOpportunity.accountid
	HAVING       (COUNT(FilteredOpportunity.statecode) = 1))
	)

	AND (DATEPART(year, FilteredOpportunity.actualclosedate) = 2019) AND (DATEPART(m, FilteredOpportunity.actualclosedate) IN (10))
	AND (FilteredOpportunity.statecode = 1) 
	AND (Filterednew_budgetplanner.new_service = 100000001)
	--group by FilteredAccount.accountnumber
	--HAVING (COUNT(FilteredOpportunity.statecode) = 1)
	) AS Tax, 



	 
(SELECT 
--FilteredAccount.accountnumber
--CASE WHEN ISNULL(COUNT(FilteredAccount.accountid), 0)  IS NULL THEN 0 ELSE ISNULL(COUNT(FilteredAccount.accountid), 0) END
ISNULL(COUNT(FilteredAccount.accountid), 0) 
FROM FilteredAccount INNER JOIN
FilteredOpportunity ON FilteredAccount.accountid = FilteredOpportunity.accountid INNER JOIN
Filterednew_budgetplanner ON FilteredOpportunity.pricelevelid = Filterednew_budgetplanner.new_unit 
WHERE   FilteredOpportunity.accountid IN
	(
	(SELECT        FilteredOpportunity.accountid
	FROM            FilteredAccount INNER JOIN
							 FilteredOpportunity ON FilteredAccount.accountid = FilteredOpportunity.accountid INNER JOIN
							 Filterednew_budgetplanner ON FilteredOpportunity.pricelevelid = Filterednew_budgetplanner.new_unit
	WHERE        (FilteredOpportunity.statecode = 1) 
	AND (Filterednew_budgetplanner.new_service = 100000002)
	group by     FilteredOpportunity.accountid
	HAVING       (COUNT(FilteredOpportunity.statecode) = 1))
	)

	AND (DATEPART(year, FilteredOpportunity.actualclosedate) = 2019) AND (DATEPART(m, FilteredOpportunity.actualclosedate) IN (10))
	AND (FilteredOpportunity.statecode = 1) 
	AND (Filterednew_budgetplanner.new_service = 100000002)
	--group by FilteredAccount.accountnumber
	--HAVING (COUNT(FilteredOpportunity.statecode) = 1)
	) AS Consultant, 


	(SELECT 
--FilteredAccount.accountnumber
ISNULL(COUNT(FilteredAccount.accountid), 0) 
FROM FilteredAccount INNER JOIN
FilteredOpportunity ON FilteredAccount.accountid = FilteredOpportunity.accountid INNER JOIN
Filterednew_budgetplanner ON FilteredOpportunity.pricelevelid = Filterednew_budgetplanner.new_unit 
WHERE   FilteredOpportunity.accountid IN
	(
	(SELECT        FilteredOpportunity.accountid
	FROM            FilteredAccount INNER JOIN
							 FilteredOpportunity ON FilteredAccount.accountid = FilteredOpportunity.accountid INNER JOIN
							 Filterednew_budgetplanner ON FilteredOpportunity.pricelevelid = Filterednew_budgetplanner.new_unit
	WHERE        (FilteredOpportunity.statecode = 1) 
	AND (Filterednew_budgetplanner.new_service = 100000003)
	group by     FilteredOpportunity.accountid
	HAVING       (COUNT(FilteredOpportunity.statecode) = 1))
	)

	AND (DATEPART(year, FilteredOpportunity.actualclosedate) = 2019) AND (DATEPART(m, FilteredOpportunity.actualclosedate) IN (10))
	AND (FilteredOpportunity.statecode = 1) 
	AND (Filterednew_budgetplanner.new_service = 100000003)
	--group by FilteredAccount.accountnumber
	--HAVING (COUNT(FilteredOpportunity.statecode) = 1)
	) AS Traning 















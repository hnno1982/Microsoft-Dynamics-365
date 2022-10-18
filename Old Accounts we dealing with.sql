-- Old Accounts we dealing with 
select 
(SELECT 
--FilteredAccount.accountnumber
ISNULL(COUNT(DISTINCT FilteredAccount.accountid), 0) AS CountAccount
FROM FilteredAccount INNER JOIN
FilteredOpportunity ON FilteredAccount.accountid = FilteredOpportunity.accountid INNER JOIN
Filterednew_budgetplanner ON FilteredOpportunity.pricelevelid = Filterednew_budgetplanner.new_unit 
WHERE (DATEPART(year, FilteredOpportunity.actualclosedate) = @FY) AND (DATENAME(month,  FilteredOpportunity.actualclosedate) IN (@FM))
	AND (FilteredOpportunity.statecode = 1) 
	AND (Filterednew_budgetplanner.new_service = 100000000)

--except 
and FilteredAccount.accountid not in (

SELECT 
FilteredAccount.accountid
--ISNULL(COUNT(FilteredAccount.accountid), 0) AS CountAccount
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

	AND (DATEPART(year, FilteredOpportunity.actualclosedate) = @FY) AND (DATENAME(month,  FilteredOpportunity.actualclosedate) IN (@FM))
	AND (FilteredOpportunity.statecode = 1) 
	AND (Filterednew_budgetplanner.new_service = 100000000)
	--group by FilteredAccount.accountnumber
	--HAVING (COUNT(FilteredOpportunity.statecode) = 1)
	)) as Assurance,


	(SELECT 
--FilteredAccount.accountnumber
ISNULL(COUNT(DISTINCT FilteredAccount.accountid), 0) AS CountAccount
FROM FilteredAccount INNER JOIN
FilteredOpportunity ON FilteredAccount.accountid = FilteredOpportunity.accountid INNER JOIN
Filterednew_budgetplanner ON FilteredOpportunity.pricelevelid = Filterednew_budgetplanner.new_unit 
WHERE (DATEPART(year, FilteredOpportunity.actualclosedate) = @FY) AND (DATENAME(month,  FilteredOpportunity.actualclosedate) IN (@FM))
	AND (FilteredOpportunity.statecode = 1) 
	AND (Filterednew_budgetplanner.new_service = 100000001)

--except 
and FilteredAccount.accountid not in (

SELECT 
FilteredAccount.accountid
--ISNULL(COUNT(FilteredAccount.accountid), 0) AS CountAccount
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

	AND (DATEPART(year, FilteredOpportunity.actualclosedate) = @FY) AND (DATENAME(month,  FilteredOpportunity.actualclosedate) IN (@FM))
	AND (FilteredOpportunity.statecode = 1) 
	AND (Filterednew_budgetplanner.new_service = 100000001)
	--group by FilteredAccount.accountnumber
	--HAVING (COUNT(FilteredOpportunity.statecode) = 1)
	)) as Tax,


	(SELECT 
--FilteredAccount.accountnumber
ISNULL(COUNT(DISTINCT FilteredAccount.accountid), 0) AS CountAccount
FROM FilteredAccount INNER JOIN
FilteredOpportunity ON FilteredAccount.accountid = FilteredOpportunity.accountid INNER JOIN
Filterednew_budgetplanner ON FilteredOpportunity.pricelevelid = Filterednew_budgetplanner.new_unit 
WHERE (DATEPART(year, FilteredOpportunity.actualclosedate) = @FY) AND (DATENAME(month,  FilteredOpportunity.actualclosedate) IN (@FM))
	AND (FilteredOpportunity.statecode = 1) 
	AND (Filterednew_budgetplanner.new_service = 100000002)

--except 
and FilteredAccount.accountid not in (

SELECT 
FilteredAccount.accountid
--ISNULL(COUNT(FilteredAccount.accountid), 0) AS CountAccount
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

	AND (DATEPART(year, FilteredOpportunity.actualclosedate) = @FY) AND (DATENAME(month,  FilteredOpportunity.actualclosedate) IN (@FM))
	AND (FilteredOpportunity.statecode = 1) 
	AND (Filterednew_budgetplanner.new_service = 100000002)
	--group by FilteredAccount.accountnumber
	--HAVING (COUNT(FilteredOpportunity.statecode) = 1)
	)) as Consultant,



	(SELECT 
--FilteredAccount.accountnumber
ISNULL(COUNT(DISTINCT  FilteredAccount.accountid), 0) AS CountAccount
FROM FilteredAccount INNER JOIN
FilteredOpportunity ON FilteredAccount.accountid = FilteredOpportunity.accountid INNER JOIN
Filterednew_budgetplanner ON FilteredOpportunity.pricelevelid = Filterednew_budgetplanner.new_unit 
WHERE (DATEPART(year, FilteredOpportunity.actualclosedate) = @FY) AND (DATENAME(month,  FilteredOpportunity.actualclosedate) IN (@FM))
	AND (FilteredOpportunity.statecode = 1) 
	AND (Filterednew_budgetplanner.new_service = 100000003)

--except 
and FilteredAccount.accountid not in (

SELECT 
FilteredAccount.accountid
--ISNULL(COUNT(FilteredAccount.accountid), 0) AS CountAccount
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

	AND (DATEPART(year, FilteredOpportunity.actualclosedate) = @FY) AND (DATENAME(month,  FilteredOpportunity.actualclosedate) IN (@FM))
	AND (FilteredOpportunity.statecode = 1) 
	AND (Filterednew_budgetplanner.new_service = 100000003)
	--group by FilteredAccount.accountnumber
	--HAVING (COUNT(FilteredOpportunity.statecode) = 1)

	)

	) as Traning
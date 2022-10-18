--DROP TABLE IF EXISTS tempdb..#data11
--create table #data11 (begindate datetime, enddate datetime, activityid UNIQUEIDENTIFIER );
--insert #data11 
--			SELECT       scheduledstart, scheduledend, activityid
--			FROM            FilteredTask
--			WHERE        (createdbyname = N'Hani Adel') 

--select dateadd(d,v.number,d.begindate) adate, activityid
--  from #data11 d
--  join master..spt_values v on v.type='P'
--       and v.number between 0 and datediff(d, begindate, enddate)

--	   WHERE DATEPART(dw, dateadd(d,v.number,d.begindate)) NOT IN (6,7)

--order by adate;


DROP TABLE IF EXISTS tempdb..#data11
SELECT activityid, activitytypecode, activitytypecodename, createdby, createdbyname, description, new_requester, new_requestername, percentcomplete, scheduledstart, scheduledend, statecode, statecodename, 
statuscode, statuscodename, new_myaction, new_businessdays
INTO #data11 --- temporary table
FROM FilteredTask

select  dateadd(d,v.number,d.scheduledstart) adate, CAST(dateadd(d,v.number,d.scheduledstart) AS date) datenotim ,DATEPART ( year , dateadd(d,v.number,d.scheduledstart) )  Yer, DATENAME(mm,dateadd(d,v.number,d.scheduledstart)) MonthNam, 
DATEPART ( month , dateadd(d,v.number,d.scheduledstart) )  MonthNum,(datepart(week, dateadd(d,v.number,d.scheduledstart)) - datepart(week, dateadd(month, datediff(month, 0, dateadd(d,v.number,d.scheduledstart)), 0)) + 1) WeekNum, 
DATEPART(WEEKDAY,  dateadd(d,v.number,d.scheduledstart)) WekNum, DATENAME(WEEKDAY,  dateadd(d,v.number,d.scheduledstart)) WekNam, new_businessdays, activityid, activitytypecode, 
activitytypecodename, createdby, createdbyname, description, new_requester, new_requestername, percentcomplete, scheduledstart, scheduledend, statecode, statecodename, 
statuscode, statuscodename, new_myaction

from #data11 d
  join master..spt_values v on v.type='P'
       and v.number between 0 and datediff(d, scheduledstart, scheduledend) 
	   WHERE DATEPART(dw, dateadd(d,v.number,d.scheduledstart)) NOT IN (6,7) 
	   and (createdbyname = N'Hani Adel') 
order by adate;





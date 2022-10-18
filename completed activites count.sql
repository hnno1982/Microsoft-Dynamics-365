


select  ModifiedByName As 'Agent name', 
COUNT( CASE WHEN Timesheet = '8:00am-9:00am' THEN Timesheet ELSE NULL END ) AS '8:00am-9:00am',
COUNT( CASE WHEN Timesheet = '9:00am-10:00am' THEN Timesheet ELSE NULL END ) AS '9:00am-10:00am',
COUNT( CASE WHEN Timesheet = '10:00am-11:00am' THEN Timesheet ELSE NULL END ) AS '10:00am-11:00am',
COUNT( CASE WHEN Timesheet = '11:00am-12:00pm' THEN Timesheet ELSE NULL END ) AS '11:00am-12:00pm',
COUNT( CASE WHEN Timesheet = '12:00pm-1:00pm' THEN Timesheet ELSE NULL END ) AS '12:00pm-1:00pm',
COUNT( CASE WHEN Timesheet = '1:00pm-2:00pm' THEN Timesheet ELSE NULL END ) AS '1:00pm-2:00pm',
COUNT( CASE WHEN Timesheet = '2:00pm-3:00pm' THEN Timesheet ELSE NULL END ) AS '2:00pm-3:00pm',
COUNT( CASE WHEN Timesheet = '3:00pm-4:00pm' THEN Timesheet ELSE NULL END ) AS '3:00pm-4:00pm',
COUNT( CASE WHEN Timesheet = '4:00pm-5:00pm' THEN Timesheet ELSE NULL END ) AS '4:00pm-5:00pm'

from Timesheet
where ModifiedOn = cast (GETDATE() as date) and newstatecode  = 'Completed'
group by ModifiedByName











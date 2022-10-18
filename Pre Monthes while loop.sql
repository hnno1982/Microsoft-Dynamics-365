

--Orignal
--DECLARE @counter INT = MONTH(DATEADD(mm, - 1, GETDATE())); 
--IF OBJECT_ID('tempdb..#Premonthes') IS NOT NULL 
--TRUNCATE TABLE #Premonthes 
--ELSE 
--CREATE TABLE #Premonthes(name VARCHAR(10), MonNum INT) 
--WHILE @counter <= 12 BEGIN INSERT INTO #Premonthes
--SELECT DATENAME(mm, DATEADD(mm, @counter, - 1)), @counter
--SET @counter = @counter - 1; IF @counter = 0 BREAK; END
--SELECT *
--FROM #Premonthes
--order by MonNum



--New One
DECLARE @counter INT = MONTH(DATEADD(mm, - 1, GETDATE())); 
DROP TABLE IF EXISTS tempdb..#Premonthes
CREATE TABLE #Premonthes(MonNam VARCHAR(10), MonNum INT) 
WHILE @counter <= 12 
BEGIN 
INSERT INTO #Premonthes
SELECT DATENAME(mm, DATEADD(mm, @counter, - 1)), @counter
SET @counter = @counter - 1; 
IF @counter = 0 
BREAK; 
END
SELECT *
FROM #Premonthes
order by MonNum
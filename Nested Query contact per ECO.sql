-- «·ﬁÿ«⁄«  «·—∆Ì”Ì… contacts

SELECT         new_economicsectorid,new_economicsectorname,

(SELECT        ISNULL(count (condindus.statecode), 0)
FROM          FilteredContact condindus LEFT OUTER JOIN
              FilteredAccount ON condindus.accountid = FilteredAccount.accountid
			  where FilteredAccount.new_economicsector = ECO.new_economicsectorid and condindus.statecode = 0)  CountCont

FROM            Filterednew_economicsector ECO
WHERE        (new_industry = '2c19e125-9b61-e911-b809-0050568dce2a')
ORDER BY new_sortingnumber







-- «·ﬁÿ«⁄«  «·—∆Ì”Ì…Accounts
SELECT         new_economicsectorid,new_economicsectorname,

(SELECT        ISNULL(count (accdindus.accountid), 0)
FROM            FilteredAccount accdindus
where accdindus.new_economicsector = ECO.new_economicsectorid and accdindus.statecode = 0) CountAcount

FROM            Filterednew_economicsector ECO
WHERE        (new_industry = '2c19e125-9b61-e911-b809-0050568dce2a')
ORDER BY new_sortingnumber



















----«·ﬁÿ«⁄«  «·›—⁄Ì… 1 ··ﬁÿ«⁄ «·√Â·Ì
--SELECT         new_economicsectorid,new_economicsectorname,

--(SELECT        ISNULL(count (condindus.statecode), 0)
--FROM          FilteredContact condindus LEFT OUTER JOIN
--              FilteredAccount ON condindus.accountid = FilteredAccount.accountid
--			  where FilteredAccount.new_industry = ECO.new_economicsectorid)  CountCont

--FROM            Filterednew_economicsector ECO
----«·ﬁÿ«⁄ «·√Â·Ì
--WHERE        (new_industry = '467DD160-D560-E911-B809-0050568DCE2A')
--ORDER BY new_sortingnumber








-- ≈Ã„«·Ì «·‘—ﬂ«  «· Ì ·„ ‰ﬁœ„ ·Â« ⁄—Ê÷ „‰ ﬁ»·
SELECT  new_economicsectorid,new_economicsectorname,
(SELECT ISNULL(count (ACC.accountid), 0)
FROM    FilteredAccount ACC
WHERE  (ACC.opendeals = 0) AND (ACC.new_closeddeals = 0) AND (ACC.new_economicsector = ECO.new_economicsectorid) AND (Acc.statecode=0) AND 
(Acc.new_competitor IN (0) or Acc.new_competitor  is null) AND (Acc.new_vendor IN (0) or Acc.new_vendor is null) ) CountAccount

FROM            Filterednew_economicsector ECO
WHERE        (new_industry = '2c19e125-9b61-e911-b809-0050568dce2a')
ORDER BY new_sortingnumber


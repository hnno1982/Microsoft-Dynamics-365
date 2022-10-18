
--NewClinet

SELECT        new_wallet.new_walletId, new_wallet.new_walletserial, new_wallet.new_originalopportunityName, new_wallet.new_originalopportunity, new_wallet.new_unitName, new_wallet.new_unit, 
                         new_wallet.new_targetserviceName, new_wallet.new_targetservice, new_wallet.new_renewedopportunityName, new_wallet.new_renewedopportunity, new_wallet.new_partnertosignName, 
                         new_wallet.new_partnertosign, new_wallet.CreatedOn, YEAR(new_wallet.CreatedOn) AS CreatedOn_Year, MONTH(new_wallet.CreatedOn) AS CreatedOn_MonthNumber, DATENAME(mm, new_wallet.CreatedOn) 
                         AS CreatedOn_MonthName, new_wallet.CreatedByName, new_wallet.CreatedBy, new_wallet.ModifiedOn, YEAR(new_wallet.ModifiedOn) AS ModifiedOn_Year, MONTH(new_wallet.ModifiedOn) 
                         AS ModifiedOn_MonthNumber, DATENAME(mm, new_wallet.ModifiedOn) AS ModifiedOn_MonthName, new_wallet.ModifiedByName, new_wallet.ModifiedBy, new_wallet.statecode, StringMap.Value AS [A-INA], 
                         new_wallet.statuscode, StringMap_1.Value AS [Case], new_wallet.new_name, new_wallet.new_contractstartdate, YEAR(new_wallet.new_contractstartdate) AS Contractstartdate_Year, 
                         MONTH(new_wallet.new_contractstartdate) AS Contractstartdate_MonthNumber, DATENAME(mm, new_wallet.new_contractstartdate) AS Contractstartdate_MonthName, new_wallet.new_contractenddate, 
                         YEAR(new_wallet.new_contractenddate) AS Contractenddate_Year, MONTH(new_wallet.new_contractenddate) AS Contractenddate_MonthNumber, DATENAME(mm, new_wallet.new_contractenddate) 
                         AS Contractenddate_MonthName, new_wallet.new_contractyears, new_wallet.new_accountName, new_wallet.new_account, new_wallet.new_reviewwithName, new_wallet.new_reviewwith, 
                         new_wallet.new_remainingdays, new_wallet.new_amount, new_wallet.new_scopeofworks, new_wallet.new_description, new_wallet.new_accountphone, new_wallet.new_contactphone, 
                         new_wallet.new_descriptioncreatedbyName, new_wallet.new_descriptioncreatedby, new_wallet.new_descriptioncreatedon, YEAR(new_wallet.new_descriptioncreatedon) AS Descriptioncreatedon_Year, 
                         MONTH(new_wallet.new_descriptioncreatedon) AS Descriptioncreatedon_MonthNumber, DATENAME(mm, new_wallet.new_descriptioncreatedon) AS Descriptioncreatedon_MonthName, 
                         new_wallet.new_descriptionmodifiedbyName, new_wallet.new_descriptionmodifiedby, new_wallet.new_descriptionmodifiedon, YEAR(new_wallet.new_descriptionmodifiedon) AS Descriptionmodifiedon_Year, 
                         MONTH(new_wallet.new_descriptionmodifiedon) AS Descriptionmodifiedon_MonthNumber, DATENAME(mm, new_wallet.new_descriptionmodifiedon) AS Descriptionmodifiedon_MonthName, 


						 new_wallet.new_contractenddate as conDATE, 
						 YEAR(new_wallet.new_contractenddate) AS conDATE_Year, MONTH(new_wallet.new_contractenddate) AS conDATE_MonthNumber, DATENAME(mm, new_wallet.new_contractenddate) AS conDATE_MonthName 



FROM            new_wallet LEFT OUTER JOIN
                         FilteredOpportunity ON new_wallet.new_renewedopportunity = FilteredOpportunity.opportunityid LEFT OUTER JOIN
                         StringMap AS StringMap_1 ON new_wallet.statuscode = StringMap_1.AttributeValue LEFT OUTER JOIN
                         StringMap ON new_wallet.statecode = StringMap.AttributeValue
WHERE        (StringMap.ObjectTypeCode = 10036) AND (StringMap.AttributeName = N'statecode') AND (StringMap_1.AttributeName = N'statuscode') AND (StringMap_1.ObjectTypeCode = 10036) AND 
                         (new_wallet.statuscode = '100000007')


						 union all


--inprogress

SELECT        new_wallet.new_walletId, new_wallet.new_walletserial, new_wallet.new_originalopportunityName, new_wallet.new_originalopportunity, new_wallet.new_unitName, new_wallet.new_unit, 
                         new_wallet.new_targetserviceName, new_wallet.new_targetservice, new_wallet.new_renewedopportunityName, new_wallet.new_renewedopportunity, new_wallet.new_partnertosignName, 
                         new_wallet.new_partnertosign, new_wallet.CreatedOn, YEAR(new_wallet.CreatedOn) AS CreatedOn_Year, MONTH(new_wallet.CreatedOn) AS CreatedOn_MonthNumber, DATENAME(mm, new_wallet.CreatedOn) 
                         AS CreatedOn_MonthName, new_wallet.CreatedByName, new_wallet.CreatedBy, new_wallet.ModifiedOn, YEAR(new_wallet.ModifiedOn) AS ModifiedOn_Year, MONTH(new_wallet.ModifiedOn) 
                         AS ModifiedOn_MonthNumber, DATENAME(mm, new_wallet.ModifiedOn) AS ModifiedOn_MonthName, new_wallet.ModifiedByName, new_wallet.ModifiedBy, new_wallet.statecode, StringMap.Value AS [A-INA], 
                         new_wallet.statuscode, StringMap_1.Value AS [Case], new_wallet.new_name, new_wallet.new_contractstartdate, YEAR(new_wallet.new_contractstartdate) AS Contractstartdate_Year, 
                         MONTH(new_wallet.new_contractstartdate) AS Contractstartdate_MonthNumber, DATENAME(mm, new_wallet.new_contractstartdate) AS Contractstartdate_MonthName, new_wallet.new_contractenddate, 
                         YEAR(new_wallet.new_contractenddate) AS Contractenddate_Year, MONTH(new_wallet.new_contractenddate) AS Contractenddate_MonthNumber, DATENAME(mm, new_wallet.new_contractenddate) 
                         AS Contractenddate_MonthName, new_wallet.new_contractyears, new_wallet.new_accountName, new_wallet.new_account, new_wallet.new_reviewwithName, new_wallet.new_reviewwith, 
                         new_wallet.new_remainingdays, new_wallet.new_amount, new_wallet.new_scopeofworks, new_wallet.new_description, new_wallet.new_accountphone, new_wallet.new_contactphone, 
                         new_wallet.new_descriptioncreatedbyName, new_wallet.new_descriptioncreatedby, new_wallet.new_descriptioncreatedon, YEAR(new_wallet.new_descriptioncreatedon) AS Descriptioncreatedon_Year, 
                         MONTH(new_wallet.new_descriptioncreatedon) AS Descriptioncreatedon_MonthNumber, DATENAME(mm, new_wallet.new_descriptioncreatedon) AS Descriptioncreatedon_MonthName, 
                         new_wallet.new_descriptionmodifiedbyName, new_wallet.new_descriptionmodifiedby, new_wallet.new_descriptionmodifiedon, YEAR(new_wallet.new_descriptionmodifiedon) AS Descriptionmodifiedon_Year, 
                         MONTH(new_wallet.new_descriptionmodifiedon) AS Descriptionmodifiedon_MonthNumber, DATENAME(mm, new_wallet.new_descriptionmodifiedon) AS Descriptionmodifiedon_MonthName, 


						 new_wallet.new_contractenddate as conDATE, 
						 YEAR(new_wallet.new_contractenddate) AS conDATE_Year, MONTH(new_wallet.new_contractenddate) AS conDATE_MonthNumber, DATENAME(mm, new_wallet.new_contractenddate) AS conDATE_MonthName 



FROM            new_wallet LEFT OUTER JOIN
                         FilteredOpportunity ON new_wallet.new_renewedopportunity = FilteredOpportunity.opportunityid LEFT OUTER JOIN
                         StringMap AS StringMap_1 ON new_wallet.statuscode = StringMap_1.AttributeValue LEFT OUTER JOIN
                         StringMap ON new_wallet.statecode = StringMap.AttributeValue
WHERE        (StringMap.ObjectTypeCode = 10036) AND (StringMap.AttributeName = N'statecode') AND (StringMap_1.AttributeName = N'statuscode') AND (StringMap_1.ObjectTypeCode = 10036) AND 
                         (new_wallet.statuscode = '1')


						 union all



--Underrenewal

SELECT        new_wallet.new_walletId, new_wallet.new_walletserial, new_wallet.new_originalopportunityName, new_wallet.new_originalopportunity, new_wallet.new_unitName, new_wallet.new_unit, 
                         new_wallet.new_targetserviceName, new_wallet.new_targetservice, new_wallet.new_renewedopportunityName, new_wallet.new_renewedopportunity, new_wallet.new_partnertosignName, 
                         new_wallet.new_partnertosign, new_wallet.CreatedOn, YEAR(new_wallet.CreatedOn) AS CreatedOn_Year, MONTH(new_wallet.CreatedOn) AS CreatedOn_MonthNumber, DATENAME(mm, new_wallet.CreatedOn) 
                         AS CreatedOn_MonthName, new_wallet.CreatedByName, new_wallet.CreatedBy, new_wallet.ModifiedOn, YEAR(new_wallet.ModifiedOn) AS ModifiedOn_Year, MONTH(new_wallet.ModifiedOn) 
                         AS ModifiedOn_MonthNumber, DATENAME(mm, new_wallet.ModifiedOn) AS ModifiedOn_MonthName, new_wallet.ModifiedByName, new_wallet.ModifiedBy, new_wallet.statecode, StringMap.Value AS [A-INA], 
                         new_wallet.statuscode, StringMap_1.Value AS [Case], new_wallet.new_name, new_wallet.new_contractstartdate, YEAR(new_wallet.new_contractstartdate) AS Contractstartdate_Year, 
                         MONTH(new_wallet.new_contractstartdate) AS Contractstartdate_MonthNumber, DATENAME(mm, new_wallet.new_contractstartdate) AS Contractstartdate_MonthName, new_wallet.new_contractenddate, 
                         YEAR(new_wallet.new_contractenddate) AS Contractenddate_Year, MONTH(new_wallet.new_contractenddate) AS Contractenddate_MonthNumber, DATENAME(mm, new_wallet.new_contractenddate) 
                         AS Contractenddate_MonthName, new_wallet.new_contractyears, new_wallet.new_accountName, new_wallet.new_account, new_wallet.new_reviewwithName, new_wallet.new_reviewwith, 
                         new_wallet.new_remainingdays, new_wallet.new_amount, new_wallet.new_scopeofworks, new_wallet.new_description, new_wallet.new_accountphone, new_wallet.new_contactphone, 
                         new_wallet.new_descriptioncreatedbyName, new_wallet.new_descriptioncreatedby, new_wallet.new_descriptioncreatedon, YEAR(new_wallet.new_descriptioncreatedon) AS Descriptioncreatedon_Year, 
                         MONTH(new_wallet.new_descriptioncreatedon) AS Descriptioncreatedon_MonthNumber, DATENAME(mm, new_wallet.new_descriptioncreatedon) AS Descriptioncreatedon_MonthName, 
                         new_wallet.new_descriptionmodifiedbyName, new_wallet.new_descriptionmodifiedby, new_wallet.new_descriptionmodifiedon, YEAR(new_wallet.new_descriptionmodifiedon) AS Descriptionmodifiedon_Year, 
                         MONTH(new_wallet.new_descriptionmodifiedon) AS Descriptionmodifiedon_MonthNumber, DATENAME(mm, new_wallet.new_descriptionmodifiedon) AS Descriptionmodifiedon_MonthName, 


						 FilteredOpportunity.createdon as conDATE, 
						 YEAR(FilteredOpportunity.createdon) AS conDATE_Year, MONTH(FilteredOpportunity.createdon) AS conDATE_MonthNumber, DATENAME(mm, FilteredOpportunity.createdon) AS conDATE_MonthName 


FROM            new_wallet LEFT OUTER JOIN
                         FilteredOpportunity ON new_wallet.new_renewedopportunity = FilteredOpportunity.opportunityid LEFT OUTER JOIN
                         StringMap AS StringMap_1 ON new_wallet.statuscode = StringMap_1.AttributeValue LEFT OUTER JOIN
                         StringMap ON new_wallet.statecode = StringMap.AttributeValue
WHERE        (StringMap.ObjectTypeCode = 10036) AND (StringMap.AttributeName = N'statecode') AND (StringMap_1.AttributeName = N'statuscode') AND (StringMap_1.ObjectTypeCode = 10036) AND 
                         (new_wallet.statuscode = '100000005')

						 union all


--follwoup

SELECT        new_wallet.new_walletId, new_wallet.new_walletserial, new_wallet.new_originalopportunityName, new_wallet.new_originalopportunity, new_wallet.new_unitName, new_wallet.new_unit, 
                         new_wallet.new_targetserviceName, new_wallet.new_targetservice, new_wallet.new_renewedopportunityName, new_wallet.new_renewedopportunity, new_wallet.new_partnertosignName, 
                         new_wallet.new_partnertosign, new_wallet.CreatedOn, YEAR(new_wallet.CreatedOn) AS CreatedOn_Year, MONTH(new_wallet.CreatedOn) AS CreatedOn_MonthNumber, DATENAME(mm, new_wallet.CreatedOn) 
                         AS CreatedOn_MonthName, new_wallet.CreatedByName, new_wallet.CreatedBy, new_wallet.ModifiedOn, YEAR(new_wallet.ModifiedOn) AS ModifiedOn_Year, MONTH(new_wallet.ModifiedOn) 
                         AS ModifiedOn_MonthNumber, DATENAME(mm, new_wallet.ModifiedOn) AS ModifiedOn_MonthName, new_wallet.ModifiedByName, new_wallet.ModifiedBy, new_wallet.statecode, StringMap.Value AS [A-INA], 
                         new_wallet.statuscode, StringMap_1.Value AS [Case], new_wallet.new_name, new_wallet.new_contractstartdate, YEAR(new_wallet.new_contractstartdate) AS Contractstartdate_Year, 
                         MONTH(new_wallet.new_contractstartdate) AS Contractstartdate_MonthNumber, DATENAME(mm, new_wallet.new_contractstartdate) AS Contractstartdate_MonthName, new_wallet.new_contractenddate, 
                         YEAR(new_wallet.new_contractenddate) AS Contractenddate_Year, MONTH(new_wallet.new_contractenddate) AS Contractenddate_MonthNumber, DATENAME(mm, new_wallet.new_contractenddate) 
                         AS Contractenddate_MonthName, new_wallet.new_contractyears, new_wallet.new_accountName, new_wallet.new_account, new_wallet.new_reviewwithName, new_wallet.new_reviewwith, 
                         new_wallet.new_remainingdays, new_wallet.new_amount, new_wallet.new_scopeofworks, new_wallet.new_description, new_wallet.new_accountphone, new_wallet.new_contactphone, 
                         new_wallet.new_descriptioncreatedbyName, new_wallet.new_descriptioncreatedby, new_wallet.new_descriptioncreatedon, YEAR(new_wallet.new_descriptioncreatedon) AS Descriptioncreatedon_Year, 
                         MONTH(new_wallet.new_descriptioncreatedon) AS Descriptioncreatedon_MonthNumber, DATENAME(mm, new_wallet.new_descriptioncreatedon) AS Descriptioncreatedon_MonthName, 
                         new_wallet.new_descriptionmodifiedbyName, new_wallet.new_descriptionmodifiedby, new_wallet.new_descriptionmodifiedon, YEAR(new_wallet.new_descriptionmodifiedon) AS Descriptionmodifiedon_Year, 
                         MONTH(new_wallet.new_descriptionmodifiedon) AS Descriptionmodifiedon_MonthNumber, DATENAME(mm, new_wallet.new_descriptionmodifiedon) AS Descriptionmodifiedon_MonthName, 


						 new_wallet.new_descriptionmodifiedon as conDATE, 
						 YEAR(new_wallet.new_descriptionmodifiedon) AS conDATE_Year, MONTH(new_wallet.new_descriptionmodifiedon) AS conDATE_MonthNumber, DATENAME(mm, new_wallet.new_descriptionmodifiedon) AS conDATE_MonthName 



FROM            new_wallet LEFT OUTER JOIN
                         FilteredOpportunity ON new_wallet.new_renewedopportunity = FilteredOpportunity.opportunityid LEFT OUTER JOIN
                         StringMap AS StringMap_1 ON new_wallet.statuscode = StringMap_1.AttributeValue LEFT OUTER JOIN
                         StringMap ON new_wallet.statecode = StringMap.AttributeValue
WHERE        (StringMap.ObjectTypeCode = 10036) AND (StringMap.AttributeName = N'statecode') AND (StringMap_1.AttributeName = N'statuscode') AND (StringMap_1.ObjectTypeCode = 10036) AND 
                         (new_wallet.statuscode = '100000006')


						  union all


--didnt renewd direct
SELECT        new_wallet.new_walletId, new_wallet.new_walletserial, new_wallet.new_originalopportunityName, new_wallet.new_originalopportunity, new_wallet.new_unitName, new_wallet.new_unit, 
                         new_wallet.new_targetserviceName, new_wallet.new_targetservice, new_wallet.new_renewedopportunityName, new_wallet.new_renewedopportunity, new_wallet.new_partnertosignName, 
                         new_wallet.new_partnertosign, new_wallet.CreatedOn, YEAR(new_wallet.CreatedOn) AS CreatedOn_Year, MONTH(new_wallet.CreatedOn) AS CreatedOn_MonthNumber, DATENAME(mm, new_wallet.CreatedOn) 
                         AS CreatedOn_MonthName, new_wallet.CreatedByName, new_wallet.CreatedBy, new_wallet.ModifiedOn, YEAR(new_wallet.ModifiedOn) AS ModifiedOn_Year, MONTH(new_wallet.ModifiedOn) 
                         AS ModifiedOn_MonthNumber, DATENAME(mm, new_wallet.ModifiedOn) AS ModifiedOn_MonthName, new_wallet.ModifiedByName, new_wallet.ModifiedBy, new_wallet.statecode, StringMap.Value AS [A-INA], 
                         new_wallet.statuscode, StringMap_1.Value AS [Case], new_wallet.new_name, new_wallet.new_contractstartdate, YEAR(new_wallet.new_contractstartdate) AS Contractstartdate_Year, 
                         MONTH(new_wallet.new_contractstartdate) AS Contractstartdate_MonthNumber, DATENAME(mm, new_wallet.new_contractstartdate) AS Contractstartdate_MonthName, new_wallet.new_contractenddate, 
                         YEAR(new_wallet.new_contractenddate) AS Contractenddate_Year, MONTH(new_wallet.new_contractenddate) AS Contractenddate_MonthNumber, DATENAME(mm, new_wallet.new_contractenddate) 
                         AS Contractenddate_MonthName, new_wallet.new_contractyears, new_wallet.new_accountName, new_wallet.new_account, new_wallet.new_reviewwithName, new_wallet.new_reviewwith, 
                         new_wallet.new_remainingdays, new_wallet.new_amount, new_wallet.new_scopeofworks, new_wallet.new_description, new_wallet.new_accountphone, new_wallet.new_contactphone, 
                         new_wallet.new_descriptioncreatedbyName, new_wallet.new_descriptioncreatedby, new_wallet.new_descriptioncreatedon, YEAR(new_wallet.new_descriptioncreatedon) AS Descriptioncreatedon_Year, 
                         MONTH(new_wallet.new_descriptioncreatedon) AS Descriptioncreatedon_MonthNumber, DATENAME(mm, new_wallet.new_descriptioncreatedon) AS Descriptioncreatedon_MonthName, 
                         new_wallet.new_descriptionmodifiedbyName, new_wallet.new_descriptionmodifiedby, new_wallet.new_descriptionmodifiedon, YEAR(new_wallet.new_descriptionmodifiedon) AS Descriptionmodifiedon_Year, 
                         MONTH(new_wallet.new_descriptionmodifiedon) AS Descriptionmodifiedon_MonthNumber, DATENAME(mm, new_wallet.new_descriptionmodifiedon) AS Descriptionmodifiedon_MonthName, 


						 new_wallet.ModifiedOn as conDATE, 
						 YEAR(new_wallet.ModifiedOn) AS conDATE_Year, MONTH(new_wallet.ModifiedOn) AS conDATE_MonthNumber, DATENAME(mm, new_wallet.ModifiedOn) AS conDATE_MonthName 



FROM            new_wallet LEFT OUTER JOIN
                         FilteredOpportunity ON new_wallet.new_renewedopportunity = FilteredOpportunity.opportunityid LEFT OUTER JOIN
                         StringMap AS StringMap_1 ON new_wallet.statuscode = StringMap_1.AttributeValue LEFT OUTER JOIN
                         StringMap ON new_wallet.statecode = StringMap.AttributeValue
WHERE        (StringMap.ObjectTypeCode = 10036) AND (StringMap.AttributeName = N'statecode') AND (StringMap_1.AttributeName = N'statuscode') AND (StringMap_1.ObjectTypeCode = 10036) AND 
                         (new_wallet.statuscode = '2')


						  union all

--expired

SELECT        new_wallet.new_walletId, new_wallet.new_walletserial, new_wallet.new_originalopportunityName, new_wallet.new_originalopportunity, new_wallet.new_unitName, new_wallet.new_unit, 
                         new_wallet.new_targetserviceName, new_wallet.new_targetservice, new_wallet.new_renewedopportunityName, new_wallet.new_renewedopportunity, new_wallet.new_partnertosignName, 
                         new_wallet.new_partnertosign, new_wallet.CreatedOn, YEAR(new_wallet.CreatedOn) AS CreatedOn_Year, MONTH(new_wallet.CreatedOn) AS CreatedOn_MonthNumber, DATENAME(mm, new_wallet.CreatedOn) 
                         AS CreatedOn_MonthName, new_wallet.CreatedByName, new_wallet.CreatedBy, new_wallet.ModifiedOn, YEAR(new_wallet.ModifiedOn) AS ModifiedOn_Year, MONTH(new_wallet.ModifiedOn) 
                         AS ModifiedOn_MonthNumber, DATENAME(mm, new_wallet.ModifiedOn) AS ModifiedOn_MonthName, new_wallet.ModifiedByName, new_wallet.ModifiedBy, new_wallet.statecode, StringMap.Value AS [A-INA], 
                         new_wallet.statuscode, StringMap_1.Value AS [Case], new_wallet.new_name, new_wallet.new_contractstartdate, YEAR(new_wallet.new_contractstartdate) AS Contractstartdate_Year, 
                         MONTH(new_wallet.new_contractstartdate) AS Contractstartdate_MonthNumber, DATENAME(mm, new_wallet.new_contractstartdate) AS Contractstartdate_MonthName, new_wallet.new_contractenddate, 
                         YEAR(new_wallet.new_contractenddate) AS Contractenddate_Year, MONTH(new_wallet.new_contractenddate) AS Contractenddate_MonthNumber, DATENAME(mm, new_wallet.new_contractenddate) 
                         AS Contractenddate_MonthName, new_wallet.new_contractyears, new_wallet.new_accountName, new_wallet.new_account, new_wallet.new_reviewwithName, new_wallet.new_reviewwith, 
                         new_wallet.new_remainingdays, new_wallet.new_amount, new_wallet.new_scopeofworks, new_wallet.new_description, new_wallet.new_accountphone, new_wallet.new_contactphone, 
                         new_wallet.new_descriptioncreatedbyName, new_wallet.new_descriptioncreatedby, new_wallet.new_descriptioncreatedon, YEAR(new_wallet.new_descriptioncreatedon) AS Descriptioncreatedon_Year, 
                         MONTH(new_wallet.new_descriptioncreatedon) AS Descriptioncreatedon_MonthNumber, DATENAME(mm, new_wallet.new_descriptioncreatedon) AS Descriptioncreatedon_MonthName, 
                         new_wallet.new_descriptionmodifiedbyName, new_wallet.new_descriptionmodifiedby, new_wallet.new_descriptionmodifiedon, YEAR(new_wallet.new_descriptionmodifiedon) AS Descriptionmodifiedon_Year, 
                         MONTH(new_wallet.new_descriptionmodifiedon) AS Descriptionmodifiedon_MonthNumber, DATENAME(mm, new_wallet.new_descriptionmodifiedon) AS Descriptionmodifiedon_MonthName, 


						 new_wallet.new_contractenddate as conDATE, 
						 YEAR(new_wallet.new_contractenddate) AS conDATE_Year, MONTH(new_wallet.new_contractenddate) AS conDATE_MonthNumber, DATENAME(mm, new_wallet.new_contractenddate) AS conDATE_MonthName 



FROM            new_wallet LEFT OUTER JOIN
                         FilteredOpportunity ON new_wallet.new_renewedopportunity = FilteredOpportunity.opportunityid LEFT OUTER JOIN
                         StringMap AS StringMap_1 ON new_wallet.statuscode = StringMap_1.AttributeValue LEFT OUTER JOIN
                         StringMap ON new_wallet.statecode = StringMap.AttributeValue
WHERE        (StringMap.ObjectTypeCode = 10036) AND (StringMap.AttributeName = N'statecode') AND (StringMap_1.AttributeName = N'statuscode') AND (StringMap_1.ObjectTypeCode = 10036) AND 
                         (new_wallet.statuscode = '100000004')





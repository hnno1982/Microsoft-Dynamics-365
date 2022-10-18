USE [btkcrm365_MSCRM]
GO

/****** Object:  View [dbo].[_filtercon]    Script Date: 4/15/2020 10:32:01 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

ALTER VIEW [dbo].[_filtercon]
AS
/***** Look for original specialization and original language and original nation *****/ SELECT DISTINCT 
                         FilteredContact.accountid, FilteredContact.accountidname, FilteredContact.accountrolecode, FilteredContact.accountrolecodename, FilteredContact.address1_city, FilteredContact.address1_composite, 
                         FilteredContact.address1_line1, FilteredContact.address1_line2, FilteredContact.address1_line3, FilteredContact.address1_stateorprovince, FilteredContact.address2_city, FilteredContact.address2_composite, 
                         FilteredContact.address2_line1, FilteredContact.address2_line2, FilteredContact.address2_line3, FilteredContact.birthdate, FilteredContact.birthdateutc, FilteredContact.business2, FilteredContact.contactid, 
                         FilteredContact.createdby, FilteredContact.createdbyname, FilteredContact.createdon, FilteredContact.createdonutc, FilteredContact.emailaddress1, FilteredContact.emailaddress2, FilteredContact.entityimage, 
                         FilteredContact.entityimageid, FilteredContact.entityimage_url, FilteredContact.firstname, FilteredContact.fullname, FilteredContact.gendercode, FilteredContact.gendercodename, FilteredContact.jobtitle, 
                         FilteredContact.lastname, FilteredContact.managername, FilteredContact.managerphone, FilteredContact.middlename, FilteredContact.mobilephone, FilteredContact.modifiedon, FilteredContact.modifiedonutc, 
                         FilteredContact.new_age, FilteredContact.new_arpostalcode, FilteredContact.new_arsalutation, FilteredContact.new_arsalutationname, FilteredContact.new_civilid, FilteredContact.new_civilidexpiredon, 
                         FilteredContact.new_civilidexpiredonutc, FilteredContact.new_civilidname, FilteredContact.new_country, FilteredContact.new_countryname, FilteredContact.new_countryofresidence, 
                         FilteredContact.new_countryofresidencename, FilteredContact.new_cv, FilteredContact.new_cvname, FilteredContact.new_directmanagerid, FilteredContact.new_directmanageridname, 
                         FilteredContact.new_directmanageridyominame, FilteredContact.new_employeeusername, FilteredContact.new_employeeusernamename, FilteredContact.new_employeeusernameyominame, 
                         FilteredContact.new_enfristname, FilteredContact.new_enfullname, FilteredContact.new_enjobtitle, FilteredContact.new_enlastname, FilteredContact.new_enmiddelname, FilteredContact.new_enpostalcode, 
                         FilteredContact.new_ensalutation, FilteredContact.new_ensalutationname, FilteredContact.new_extensionnumber, FilteredContact.new_firstspecialization, FilteredContact.new_firstspecializationname, 
                         FilteredContact.new_fristdepartment, FilteredContact.new_fristdepartmentname, FilteredContact.new_fristlanguage, FilteredContact.new_fristlanguagename, FilteredContact.new_inbirthdate, 
                         FilteredContact.new_inbirthdateutc, FilteredContact.new_lecturerflag, FilteredContact.new_linkedin, FilteredContact.new_nation, FilteredContact.new_nationality, FilteredContact.new_nationalityname, 
                         FilteredContact.new_nationname, FilteredContact.new_passport, FilteredContact.new_passportexpiredon, FilteredContact.new_passportexpiredonutc, FilteredContact.new_passportname, 
                         FilteredContact.new_professionalfees, FilteredContact.new_professionalfees_base, FilteredContact.new_residencelocation, FilteredContact.new_residencelocationname, FilteredContact.new_yearsofexperience, 
                         FilteredContact.ownerid, FilteredContact.owneriddsc, FilteredContact.owneridname, FilteredContact.owneridtype, FilteredContact.owneridyominame, FilteredContact.owningbusinessunit, 
                         FilteredContact.owningteam, FilteredContact.owninguser, FilteredContact.statecode, FilteredContact.statecodename, FilteredContact.statuscode, FilteredContact.statuscodename, FilteredContact.suffix, 
                         FilteredContact.telephone1, FilteredContact.telephone2, FilteredContact.telephone3, FilteredContact.new_firstspecialization AS PrimarySpeciaID, 
                         FilteredContact.new_firstspecializationname AS PrimarySpecianame, FilteredContact.assistantphone, 'PrimarySP' AS SP, 'PrimaryLN' AS LN, FilteredAccount.entityimage AS AccoIMG, 
                         FilteredContact.transactioncurrencyid, 'Any' ACBO
FROM            FilteredContact INNER JOIN
                         FilteredAccount ON FilteredContact.accountid = FilteredAccount.accountid
WHERE        (FilteredContact.accountrolecode <> 2) AND (FilteredContact.new_firstspecialization IS NOT NULL)

UNION ALL

/***** Look for original specialization and original language and other nation *****/
SELECT DISTINCT 
                         FilteredContact.accountid, FilteredContact.accountidname, FilteredContact.accountrolecode, FilteredContact.accountrolecodename, FilteredContact.address1_city, FilteredContact.address1_composite, 
                         FilteredContact.address1_line1, FilteredContact.address1_line2, FilteredContact.address1_line3, FilteredContact.address1_stateorprovince, FilteredContact.address2_city, FilteredContact.address2_composite, 
                         FilteredContact.address2_line1, FilteredContact.address2_line2, FilteredContact.address2_line3, FilteredContact.birthdate, FilteredContact.birthdateutc, FilteredContact.business2, FilteredContact.contactid, 
                         FilteredContact.createdby, FilteredContact.createdbyname, FilteredContact.createdon, FilteredContact.createdonutc, FilteredContact.emailaddress1, FilteredContact.emailaddress2, FilteredContact.entityimage, 
                         FilteredContact.entityimageid, FilteredContact.entityimage_url, FilteredContact.firstname, FilteredContact.fullname, FilteredContact.gendercode, FilteredContact.gendercodename, FilteredContact.jobtitle, 
                         FilteredContact.lastname, FilteredContact.managername, FilteredContact.managerphone, FilteredContact.middlename, FilteredContact.mobilephone, FilteredContact.modifiedon, FilteredContact.modifiedonutc, 
                         FilteredContact.new_age, FilteredContact.new_arpostalcode, FilteredContact.new_arsalutation, FilteredContact.new_arsalutationname, FilteredContact.new_civilid, FilteredContact.new_civilidexpiredon, 
                         FilteredContact.new_civilidexpiredonutc, FilteredContact.new_civilidname, FilteredContact.new_country, FilteredContact.new_countryname, FilteredContact.new_countryofresidence, 
                         FilteredContact.new_countryofresidencename, FilteredContact.new_cv, FilteredContact.new_cvname, FilteredContact.new_directmanagerid, FilteredContact.new_directmanageridname, 
                         FilteredContact.new_directmanageridyominame, FilteredContact.new_employeeusername, FilteredContact.new_employeeusernamename, FilteredContact.new_employeeusernameyominame, 
                         FilteredContact.new_enfristname, FilteredContact.new_enfullname, FilteredContact.new_enjobtitle, FilteredContact.new_enlastname, FilteredContact.new_enmiddelname, FilteredContact.new_enpostalcode, 
                         FilteredContact.new_ensalutation, FilteredContact.new_ensalutationname, FilteredContact.new_extensionnumber, FilteredContact.new_firstspecialization, FilteredContact.new_firstspecializationname, 
                         FilteredContact.new_fristdepartment, FilteredContact.new_fristdepartmentname, FilteredContact.new_fristlanguage, FilteredContact.new_fristlanguagename, FilteredContact.new_inbirthdate, 
                         FilteredContact.new_inbirthdateutc, FilteredContact.new_lecturerflag, FilteredContact.new_linkedin, Filterednew_nationalities.new_nation, Filterednew_nationalities.new_nationalitiesid, 
                         Filterednew_nationalities.new_nationalityname, Filterednew_nationalities.new_nationname, FilteredContact.new_passport, FilteredContact.new_passportexpiredon, FilteredContact.new_passportexpiredonutc, 
                         FilteredContact.new_passportname, FilteredContact.new_professionalfees, FilteredContact.new_professionalfees_base, FilteredContact.new_residencelocation, FilteredContact.new_residencelocationname, 
                         FilteredContact.new_yearsofexperience, FilteredContact.ownerid, FilteredContact.owneriddsc, FilteredContact.owneridname, FilteredContact.owneridtype, FilteredContact.owneridyominame, 
                         FilteredContact.owningbusinessunit, FilteredContact.owningteam, FilteredContact.owninguser, FilteredContact.statecode, FilteredContact.statecodename, FilteredContact.statuscode, 
                         FilteredContact.statuscodename, FilteredContact.suffix, FilteredContact.telephone1, FilteredContact.telephone2, FilteredContact.telephone3, FilteredContact.new_firstspecialization AS PrimarySpeciaID, 
                         FilteredContact.new_firstspecializationname AS PrimarySpecianame, FilteredContact.assistantphone, 'PrimarySP' AS SP, 'PrimaryLN' AS LN, FilteredAccount.entityimage AS AccoIMG, 
                         FilteredContact.transactioncurrencyid, 'Any' AS ACBO
FROM            FilteredContact INNER JOIN
                         FilteredAccount ON FilteredContact.accountid = FilteredAccount.accountid INNER JOIN
                         Filterednew_nationalities ON FilteredContact.contactid = Filterednew_nationalities.new_contactname
WHERE        (FilteredContact.accountrolecode <> 2) AND (FilteredContact.new_firstspecialization IS NOT NULL)


--************************************DONE****************************************DONE************************************************

UNION ALL
/***** Look for original specialization and sub language and original nation *****/ SELECT DISTINCT 
                         FilteredContact.accountid, FilteredContact.accountidname, FilteredContact.accountrolecode, FilteredContact.accountrolecodename, FilteredContact.address1_city, FilteredContact.address1_composite, 
                         FilteredContact.address1_line1, FilteredContact.address1_line2, FilteredContact.address1_line3, FilteredContact.address1_stateorprovince, FilteredContact.address2_city, FilteredContact.address2_composite, 
                         FilteredContact.address2_line1, FilteredContact.address2_line2, FilteredContact.address2_line3, FilteredContact.birthdate, FilteredContact.birthdateutc, FilteredContact.business2, FilteredContact.contactid, 
                         FilteredContact.createdby, FilteredContact.createdbyname, FilteredContact.createdon, FilteredContact.createdonutc, FilteredContact.emailaddress1, FilteredContact.emailaddress2, FilteredContact.entityimage, 
                         FilteredContact.entityimageid, FilteredContact.entityimage_url, FilteredContact.firstname, FilteredContact.fullname, FilteredContact.gendercode, FilteredContact.gendercodename, FilteredContact.jobtitle, 
                         FilteredContact.lastname, FilteredContact.managername, FilteredContact.managerphone, FilteredContact.middlename, FilteredContact.mobilephone, FilteredContact.modifiedon, FilteredContact.modifiedonutc, 
                         FilteredContact.new_age, FilteredContact.new_arpostalcode, FilteredContact.new_arsalutation, FilteredContact.new_arsalutationname, FilteredContact.new_civilid, FilteredContact.new_civilidexpiredon, 
                         FilteredContact.new_civilidexpiredonutc, FilteredContact.new_civilidname, FilteredContact.new_country, FilteredContact.new_countryname, FilteredContact.new_countryofresidence, 
                         FilteredContact.new_countryofresidencename, FilteredContact.new_cv, FilteredContact.new_cvname, FilteredContact.new_directmanagerid, FilteredContact.new_directmanageridname, 
                         FilteredContact.new_directmanageridyominame, FilteredContact.new_employeeusername, FilteredContact.new_employeeusernamename, FilteredContact.new_employeeusernameyominame, 
                         FilteredContact.new_enfristname, FilteredContact.new_enfullname, FilteredContact.new_enjobtitle, FilteredContact.new_enlastname, FilteredContact.new_enmiddelname, FilteredContact.new_enpostalcode, 
                         FilteredContact.new_ensalutation, FilteredContact.new_ensalutationname, FilteredContact.new_extensionnumber, FilteredContact.new_firstspecialization, FilteredContact.new_firstspecializationname, 
                         FilteredContact.new_fristdepartment, FilteredContact.new_fristdepartmentname, Filterednew_ecturerlanguages.new_languages, Filterednew_ecturerlanguages.new_languagesname, 
                         FilteredContact.new_inbirthdate, FilteredContact.new_inbirthdateutc, FilteredContact.new_lecturerflag, FilteredContact.new_linkedin, FilteredContact.new_nation, FilteredContact.new_nationality, 
                         FilteredContact.new_nationalityname, FilteredContact.new_nationname, FilteredContact.new_passport, FilteredContact.new_passportexpiredon, FilteredContact.new_passportexpiredonutc, 
                         FilteredContact.new_passportname, FilteredContact.new_professionalfees, FilteredContact.new_professionalfees_base, FilteredContact.new_residencelocation, FilteredContact.new_residencelocationname, 
                         FilteredContact.new_yearsofexperience, FilteredContact.ownerid, FilteredContact.owneriddsc, FilteredContact.owneridname, FilteredContact.owneridtype, FilteredContact.owneridyominame, 
                         FilteredContact.owningbusinessunit, FilteredContact.owningteam, FilteredContact.owninguser, FilteredContact.statecode, FilteredContact.statecodename, FilteredContact.statuscode, 
                         FilteredContact.statuscodename, FilteredContact.suffix, FilteredContact.telephone1, FilteredContact.telephone2, FilteredContact.telephone3, FilteredContact.new_firstspecialization AS PrimarySpeciaID, 
                         FilteredContact.new_firstspecializationname AS PrimarySpecianame, FilteredContact.assistantphone, 'PrimarySP' AS SP, 'SubLN' AS LN, FilteredAccount.entityimage AS Expr1, 
                         FilteredContact.transactioncurrencyid, 'Any' ACBO
FROM            FilteredContact INNER JOIN
                         FilteredAccount ON FilteredContact.accountid = FilteredAccount.accountid FULL OUTER JOIN
                         Filterednew_ecturerlanguages ON FilteredContact.contactid = Filterednew_ecturerlanguages.new_lecturername
WHERE        (FilteredContact.accountrolecode <> 2) AND (FilteredContact.new_firstspecialization IS NOT NULL) AND (Filterednew_ecturerlanguages.new_languages IS NOT NULL) AND 
                         (Filterednew_ecturerlanguages.new_languagesname IS NOT NULL)

UNION ALL

/***** Look for original specialization and sub language and other nation *****/ SELECT DISTINCT 
                         FilteredContact.accountid, FilteredContact.accountidname, FilteredContact.accountrolecode, FilteredContact.accountrolecodename, FilteredContact.address1_city, FilteredContact.address1_composite, 
                         FilteredContact.address1_line1, FilteredContact.address1_line2, FilteredContact.address1_line3, FilteredContact.address1_stateorprovince, FilteredContact.address2_city, FilteredContact.address2_composite, 
                         FilteredContact.address2_line1, FilteredContact.address2_line2, FilteredContact.address2_line3, FilteredContact.birthdate, FilteredContact.birthdateutc, FilteredContact.business2, FilteredContact.contactid, 
                         FilteredContact.createdby, FilteredContact.createdbyname, FilteredContact.createdon, FilteredContact.createdonutc, FilteredContact.emailaddress1, FilteredContact.emailaddress2, FilteredContact.entityimage, 
                         FilteredContact.entityimageid, FilteredContact.entityimage_url, FilteredContact.firstname, FilteredContact.fullname, FilteredContact.gendercode, FilteredContact.gendercodename, FilteredContact.jobtitle, 
                         FilteredContact.lastname, FilteredContact.managername, FilteredContact.managerphone, FilteredContact.middlename, FilteredContact.mobilephone, FilteredContact.modifiedon, FilteredContact.modifiedonutc, 
                         FilteredContact.new_age, FilteredContact.new_arpostalcode, FilteredContact.new_arsalutation, FilteredContact.new_arsalutationname, FilteredContact.new_civilid, FilteredContact.new_civilidexpiredon, 
                         FilteredContact.new_civilidexpiredonutc, FilteredContact.new_civilidname, FilteredContact.new_country, FilteredContact.new_countryname, FilteredContact.new_countryofresidence, 
                         FilteredContact.new_countryofresidencename, FilteredContact.new_cv, FilteredContact.new_cvname, FilteredContact.new_directmanagerid, FilteredContact.new_directmanageridname, 
                         FilteredContact.new_directmanageridyominame, FilteredContact.new_employeeusername, FilteredContact.new_employeeusernamename, FilteredContact.new_employeeusernameyominame, 
                         FilteredContact.new_enfristname, FilteredContact.new_enfullname, FilteredContact.new_enjobtitle, FilteredContact.new_enlastname, FilteredContact.new_enmiddelname, FilteredContact.new_enpostalcode, 
                         FilteredContact.new_ensalutation, FilteredContact.new_ensalutationname, FilteredContact.new_extensionnumber, FilteredContact.new_firstspecialization, FilteredContact.new_firstspecializationname, 
                         FilteredContact.new_fristdepartment, FilteredContact.new_fristdepartmentname, Filterednew_ecturerlanguages.new_languages, Filterednew_ecturerlanguages.new_languagesname, 
                         FilteredContact.new_inbirthdate, FilteredContact.new_inbirthdateutc, FilteredContact.new_lecturerflag, FilteredContact.new_linkedin, Filterednew_nationalities.new_nation, Filterednew_nationalities.new_nationalitiesid, Filterednew_nationalities.new_nationalityname, Filterednew_nationalities.new_nationname, FilteredContact.new_passport, FilteredContact.new_passportexpiredon, FilteredContact.new_passportexpiredonutc, 
                         FilteredContact.new_passportname, FilteredContact.new_professionalfees, FilteredContact.new_professionalfees_base, FilteredContact.new_residencelocation, FilteredContact.new_residencelocationname, 
                         FilteredContact.new_yearsofexperience, FilteredContact.ownerid, FilteredContact.owneriddsc, FilteredContact.owneridname, FilteredContact.owneridtype, FilteredContact.owneridyominame, 
                         FilteredContact.owningbusinessunit, FilteredContact.owningteam, FilteredContact.owninguser, FilteredContact.statecode, FilteredContact.statecodename, FilteredContact.statuscode, 
                         FilteredContact.statuscodename, FilteredContact.suffix, FilteredContact.telephone1, FilteredContact.telephone2, FilteredContact.telephone3, FilteredContact.new_firstspecialization AS PrimarySpeciaID, 
                         FilteredContact.new_firstspecializationname AS PrimarySpecianame, FilteredContact.assistantphone, 'PrimarySP' AS SP, 'SubLN' AS LN, FilteredAccount.entityimage AS Expr1, 
                         FilteredContact.transactioncurrencyid, 'Any' ACBO
FROM            FilteredContact INNER JOIN
                         FilteredAccount ON FilteredContact.accountid = FilteredAccount.accountid FULL OUTER JOIN
                         Filterednew_ecturerlanguages ON FilteredContact.contactid = Filterednew_ecturerlanguages.new_lecturername  INNER JOIN
                         Filterednew_nationalities ON FilteredContact.contactid = Filterednew_nationalities.new_contactname
WHERE        (FilteredContact.accountrolecode <> 2) AND (FilteredContact.new_firstspecialization IS NOT NULL) AND (Filterednew_ecturerlanguages.new_languages IS NOT NULL) AND 
                         (Filterednew_ecturerlanguages.new_languagesname IS NOT NULL)


--************************************DONE****************************************DONE************************************************

UNION ALL
/***** Look for sub specialization and original  language and original nation *****/ SELECT DISTINCT 
                         FilteredContact.accountid, FilteredContact.accountidname, FilteredContact.accountrolecode, FilteredContact.accountrolecodename, FilteredContact.address1_city, FilteredContact.address1_composite, 
                         FilteredContact.address1_line1, FilteredContact.address1_line2, FilteredContact.address1_line3, FilteredContact.address1_stateorprovince, FilteredContact.address2_city, FilteredContact.address2_composite, 
                         FilteredContact.address2_line1, FilteredContact.address2_line2, FilteredContact.address2_line3, FilteredContact.birthdate, FilteredContact.birthdateutc, FilteredContact.business2, FilteredContact.contactid, 
                         FilteredContact.createdby, FilteredContact.createdbyname, FilteredContact.createdon, FilteredContact.createdonutc, FilteredContact.emailaddress1, FilteredContact.emailaddress2, FilteredContact.entityimage, 
                         FilteredContact.entityimageid, FilteredContact.entityimage_url, FilteredContact.firstname, FilteredContact.fullname, FilteredContact.gendercode, FilteredContact.gendercodename, FilteredContact.jobtitle, 
                         FilteredContact.lastname, FilteredContact.managername, FilteredContact.managerphone, FilteredContact.middlename, FilteredContact.mobilephone, FilteredContact.modifiedon, FilteredContact.modifiedonutc, 
                         FilteredContact.new_age, FilteredContact.new_arpostalcode, FilteredContact.new_arsalutation, FilteredContact.new_arsalutationname, FilteredContact.new_civilid, FilteredContact.new_civilidexpiredon, 
                         FilteredContact.new_civilidexpiredonutc, FilteredContact.new_civilidname, FilteredContact.new_country, FilteredContact.new_countryname, FilteredContact.new_countryofresidence, 
                         FilteredContact.new_countryofresidencename, FilteredContact.new_cv, FilteredContact.new_cvname, FilteredContact.new_directmanagerid, FilteredContact.new_directmanageridname, 
                         FilteredContact.new_directmanageridyominame, FilteredContact.new_employeeusername, FilteredContact.new_employeeusernamename, FilteredContact.new_employeeusernameyominame, 
                         FilteredContact.new_enfristname, FilteredContact.new_enfullname, FilteredContact.new_enjobtitle, FilteredContact.new_enlastname, FilteredContact.new_enmiddelname, FilteredContact.new_enpostalcode, 
                         FilteredContact.new_ensalutation, FilteredContact.new_ensalutationname, FilteredContact.new_extensionnumber, Filterednew_specializations.new_specialtyar, Filterednew_specializations.new_specialtyarname, 
                         FilteredContact.new_fristdepartment, FilteredContact.new_fristdepartmentname, FilteredContact.new_fristlanguage, FilteredContact.new_fristlanguagename, FilteredContact.new_inbirthdate, 
                         FilteredContact.new_inbirthdateutc, FilteredContact.new_lecturerflag, FilteredContact.new_linkedin, FilteredContact.new_nation, FilteredContact.new_nationality, FilteredContact.new_nationalityname, 
                         FilteredContact.new_nationname, FilteredContact.new_passport, FilteredContact.new_passportexpiredon, FilteredContact.new_passportexpiredonutc, FilteredContact.new_passportname, 
                         FilteredContact.new_professionalfees, FilteredContact.new_professionalfees_base, FilteredContact.new_residencelocation, FilteredContact.new_residencelocationname, FilteredContact.new_yearsofexperience, 
                         FilteredContact.ownerid, FilteredContact.owneriddsc, FilteredContact.owneridname, FilteredContact.owneridtype, FilteredContact.owneridyominame, FilteredContact.owningbusinessunit, 
                         FilteredContact.owningteam, FilteredContact.owninguser, FilteredContact.statecode, FilteredContact.statecodename, FilteredContact.statuscode, FilteredContact.statuscodename, FilteredContact.suffix, 
                         FilteredContact.telephone1, FilteredContact.telephone2, FilteredContact.telephone3, FilteredContact.new_firstspecialization AS PrimarySpeciaID, 
                         FilteredContact.new_firstspecializationname AS PrimarySpecianame, FilteredContact.assistantphone, 'SubSP' AS SP, 'PrimaryLN' AS LN, FilteredAccount.entityimage AS Expr1, 
                         FilteredContact.transactioncurrencyid, 'Any' ACBO
FROM            FilteredContact INNER JOIN
                         FilteredAccount ON FilteredContact.accountid = FilteredAccount.accountid RIGHT OUTER JOIN
                         Filterednew_specializations ON FilteredContact.contactid = Filterednew_specializations.new_lecturername
WHERE        (FilteredContact.accountrolecode <> 2) AND (Filterednew_specializations.new_specialtyar IS NOT NULL)


UNION ALL
/***** Look for sub specialization and original  language and other nation *****/ SELECT DISTINCT 
                         FilteredContact.accountid, FilteredContact.accountidname, FilteredContact.accountrolecode, FilteredContact.accountrolecodename, FilteredContact.address1_city, FilteredContact.address1_composite, 
                         FilteredContact.address1_line1, FilteredContact.address1_line2, FilteredContact.address1_line3, FilteredContact.address1_stateorprovince, FilteredContact.address2_city, FilteredContact.address2_composite, 
                         FilteredContact.address2_line1, FilteredContact.address2_line2, FilteredContact.address2_line3, FilteredContact.birthdate, FilteredContact.birthdateutc, FilteredContact.business2, FilteredContact.contactid, 
                         FilteredContact.createdby, FilteredContact.createdbyname, FilteredContact.createdon, FilteredContact.createdonutc, FilteredContact.emailaddress1, FilteredContact.emailaddress2, FilteredContact.entityimage, 
                         FilteredContact.entityimageid, FilteredContact.entityimage_url, FilteredContact.firstname, FilteredContact.fullname, FilteredContact.gendercode, FilteredContact.gendercodename, FilteredContact.jobtitle, 
                         FilteredContact.lastname, FilteredContact.managername, FilteredContact.managerphone, FilteredContact.middlename, FilteredContact.mobilephone, FilteredContact.modifiedon, FilteredContact.modifiedonutc, 
                         FilteredContact.new_age, FilteredContact.new_arpostalcode, FilteredContact.new_arsalutation, FilteredContact.new_arsalutationname, FilteredContact.new_civilid, FilteredContact.new_civilidexpiredon, 
                         FilteredContact.new_civilidexpiredonutc, FilteredContact.new_civilidname, FilteredContact.new_country, FilteredContact.new_countryname, FilteredContact.new_countryofresidence, 
                         FilteredContact.new_countryofresidencename, FilteredContact.new_cv, FilteredContact.new_cvname, FilteredContact.new_directmanagerid, FilteredContact.new_directmanageridname, 
                         FilteredContact.new_directmanageridyominame, FilteredContact.new_employeeusername, FilteredContact.new_employeeusernamename, FilteredContact.new_employeeusernameyominame, 
                         FilteredContact.new_enfristname, FilteredContact.new_enfullname, FilteredContact.new_enjobtitle, FilteredContact.new_enlastname, FilteredContact.new_enmiddelname, FilteredContact.new_enpostalcode, 
                         FilteredContact.new_ensalutation, FilteredContact.new_ensalutationname, FilteredContact.new_extensionnumber, Filterednew_specializations.new_specialtyar, Filterednew_specializations.new_specialtyarname, 
                         FilteredContact.new_fristdepartment, FilteredContact.new_fristdepartmentname, FilteredContact.new_fristlanguage, FilteredContact.new_fristlanguagename, FilteredContact.new_inbirthdate, 
                         FilteredContact.new_inbirthdateutc, FilteredContact.new_lecturerflag, FilteredContact.new_linkedin, Filterednew_nationalities.new_nation, Filterednew_nationalities.new_nationalitiesid, Filterednew_nationalities.new_nationalityname, Filterednew_nationalities.new_nationname, FilteredContact.new_passport, FilteredContact.new_passportexpiredon, FilteredContact.new_passportexpiredonutc, FilteredContact.new_passportname, 
                         FilteredContact.new_professionalfees, FilteredContact.new_professionalfees_base, FilteredContact.new_residencelocation, FilteredContact.new_residencelocationname, FilteredContact.new_yearsofexperience, 
                         FilteredContact.ownerid, FilteredContact.owneriddsc, FilteredContact.owneridname, FilteredContact.owneridtype, FilteredContact.owneridyominame, FilteredContact.owningbusinessunit, 
                         FilteredContact.owningteam, FilteredContact.owninguser, FilteredContact.statecode, FilteredContact.statecodename, FilteredContact.statuscode, FilteredContact.statuscodename, FilteredContact.suffix, 
                         FilteredContact.telephone1, FilteredContact.telephone2, FilteredContact.telephone3, FilteredContact.new_firstspecialization AS PrimarySpeciaID, 
                         FilteredContact.new_firstspecializationname AS PrimarySpecianame, FilteredContact.assistantphone, 'SubSP' AS SP, 'PrimaryLN' AS LN, FilteredAccount.entityimage AS Expr1, 
                         FilteredContact.transactioncurrencyid, 'Any' ACBO
FROM            FilteredContact INNER JOIN
                         FilteredAccount ON FilteredContact.accountid = FilteredAccount.accountid RIGHT OUTER JOIN
                         Filterednew_specializations ON FilteredContact.contactid = Filterednew_specializations.new_lecturername INNER JOIN Filterednew_nationalities ON FilteredContact.contactid = Filterednew_nationalities.new_contactname
WHERE        (FilteredContact.accountrolecode <> 2) AND (Filterednew_specializations.new_specialtyar IS NOT NULL)

--************************************DONE****************************************DONE************************************************

UNION ALL

/***** Look for sub specialization and sub  language and original nation *****/ SELECT DISTINCT 
                         FilteredContact.accountid, FilteredContact.accountidname, FilteredContact.accountrolecode, FilteredContact.accountrolecodename, FilteredContact.address1_city, FilteredContact.address1_composite, 
                         FilteredContact.address1_line1, FilteredContact.address1_line2, FilteredContact.address1_line3, FilteredContact.address1_stateorprovince, FilteredContact.address2_city, FilteredContact.address2_composite, 
                         FilteredContact.address2_line1, FilteredContact.address2_line2, FilteredContact.address2_line3, FilteredContact.birthdate, FilteredContact.birthdateutc, FilteredContact.business2, FilteredContact.contactid, 
                         FilteredContact.createdby, FilteredContact.createdbyname, FilteredContact.createdon, FilteredContact.createdonutc, FilteredContact.emailaddress1, FilteredContact.emailaddress2, FilteredContact.entityimage, 
                         FilteredContact.entityimageid, FilteredContact.entityimage_url, FilteredContact.firstname, FilteredContact.fullname, FilteredContact.gendercode, FilteredContact.gendercodename, FilteredContact.jobtitle, 
                         FilteredContact.lastname, FilteredContact.managername, FilteredContact.managerphone, FilteredContact.middlename, FilteredContact.mobilephone, FilteredContact.modifiedon, FilteredContact.modifiedonutc, 
                         FilteredContact.new_age, FilteredContact.new_arpostalcode, FilteredContact.new_arsalutation, FilteredContact.new_arsalutationname, FilteredContact.new_civilid, FilteredContact.new_civilidexpiredon, 
                         FilteredContact.new_civilidexpiredonutc, FilteredContact.new_civilidname, FilteredContact.new_country, FilteredContact.new_countryname, FilteredContact.new_countryofresidence, 
                         FilteredContact.new_countryofresidencename, FilteredContact.new_cv, FilteredContact.new_cvname, FilteredContact.new_directmanagerid, FilteredContact.new_directmanageridname, 
                         FilteredContact.new_directmanageridyominame, FilteredContact.new_employeeusername, FilteredContact.new_employeeusernamename, FilteredContact.new_employeeusernameyominame, 
                         FilteredContact.new_enfristname, FilteredContact.new_enfullname, FilteredContact.new_enjobtitle, FilteredContact.new_enlastname, FilteredContact.new_enmiddelname, FilteredContact.new_enpostalcode, 
                         FilteredContact.new_ensalutation, FilteredContact.new_ensalutationname, FilteredContact.new_extensionnumber, Filterednew_specializations.new_specialtyar, Filterednew_specializations.new_specialtyarname, 
                         FilteredContact.new_fristdepartment, FilteredContact.new_fristdepartmentname, Filterednew_ecturerlanguages.new_languages, Filterednew_ecturerlanguages.new_languagesname, 
                         FilteredContact.new_inbirthdate, FilteredContact.new_inbirthdateutc, FilteredContact.new_lecturerflag, FilteredContact.new_linkedin, FilteredContact.new_nation, FilteredContact.new_nationality, 
                         FilteredContact.new_nationalityname, FilteredContact.new_nationname, FilteredContact.new_passport, FilteredContact.new_passportexpiredon, FilteredContact.new_passportexpiredonutc, 
                         FilteredContact.new_passportname, FilteredContact.new_professionalfees, FilteredContact.new_professionalfees_base, FilteredContact.new_residencelocation, FilteredContact.new_residencelocationname, 
                         FilteredContact.new_yearsofexperience, FilteredContact.ownerid, FilteredContact.owneriddsc, FilteredContact.owneridname, FilteredContact.owneridtype, FilteredContact.owneridyominame, 
                         FilteredContact.owningbusinessunit, FilteredContact.owningteam, FilteredContact.owninguser, FilteredContact.statecode, FilteredContact.statecodename, FilteredContact.statuscode, 
                         FilteredContact.statuscodename, FilteredContact.suffix, FilteredContact.telephone1, FilteredContact.telephone2, FilteredContact.telephone3, FilteredContact.new_firstspecialization AS PrimarySpeciaID, 
                         FilteredContact.new_firstspecializationname AS PrimarySpecianame, FilteredContact.assistantphone, 'SubSP' AS SP, 'SubLN' AS LN, FilteredAccount.entityimage AS Expr1, FilteredContact.transactioncurrencyid, 
                         'Any' ACBO
FROM            FilteredContact INNER JOIN
                         FilteredAccount ON FilteredContact.accountid = FilteredAccount.accountid RIGHT OUTER JOIN
                         Filterednew_specializations ON FilteredContact.contactid = Filterednew_specializations.new_lecturername RIGHT OUTER JOIN
                         Filterednew_ecturerlanguages ON FilteredContact.contactid = Filterednew_ecturerlanguages.new_lecturername
WHERE        (FilteredContact.accountrolecode <> 2) AND (Filterednew_specializations.new_specialtyar IS NOT NULL) AND (Filterednew_ecturerlanguages.new_languages IS NOT NULL) AND 
                         (Filterednew_ecturerlanguages.new_languagesname IS NOT NULL)


UNION ALL

/***** Look for sub specialization and sub  language and other nation *****/ SELECT DISTINCT 
                         FilteredContact.accountid, FilteredContact.accountidname, FilteredContact.accountrolecode, FilteredContact.accountrolecodename, FilteredContact.address1_city, FilteredContact.address1_composite, 
                         FilteredContact.address1_line1, FilteredContact.address1_line2, FilteredContact.address1_line3, FilteredContact.address1_stateorprovince, FilteredContact.address2_city, FilteredContact.address2_composite, 
                         FilteredContact.address2_line1, FilteredContact.address2_line2, FilteredContact.address2_line3, FilteredContact.birthdate, FilteredContact.birthdateutc, FilteredContact.business2, FilteredContact.contactid, 
                         FilteredContact.createdby, FilteredContact.createdbyname, FilteredContact.createdon, FilteredContact.createdonutc, FilteredContact.emailaddress1, FilteredContact.emailaddress2, FilteredContact.entityimage, 
                         FilteredContact.entityimageid, FilteredContact.entityimage_url, FilteredContact.firstname, FilteredContact.fullname, FilteredContact.gendercode, FilteredContact.gendercodename, FilteredContact.jobtitle, 
                         FilteredContact.lastname, FilteredContact.managername, FilteredContact.managerphone, FilteredContact.middlename, FilteredContact.mobilephone, FilteredContact.modifiedon, FilteredContact.modifiedonutc, 
                         FilteredContact.new_age, FilteredContact.new_arpostalcode, FilteredContact.new_arsalutation, FilteredContact.new_arsalutationname, FilteredContact.new_civilid, FilteredContact.new_civilidexpiredon, 
                         FilteredContact.new_civilidexpiredonutc, FilteredContact.new_civilidname, FilteredContact.new_country, FilteredContact.new_countryname, FilteredContact.new_countryofresidence, 
                         FilteredContact.new_countryofresidencename, FilteredContact.new_cv, FilteredContact.new_cvname, FilteredContact.new_directmanagerid, FilteredContact.new_directmanageridname, 
                         FilteredContact.new_directmanageridyominame, FilteredContact.new_employeeusername, FilteredContact.new_employeeusernamename, FilteredContact.new_employeeusernameyominame, 
                         FilteredContact.new_enfristname, FilteredContact.new_enfullname, FilteredContact.new_enjobtitle, FilteredContact.new_enlastname, FilteredContact.new_enmiddelname, FilteredContact.new_enpostalcode, 
                         FilteredContact.new_ensalutation, FilteredContact.new_ensalutationname, FilteredContact.new_extensionnumber, Filterednew_specializations.new_specialtyar, Filterednew_specializations.new_specialtyarname, 
                         FilteredContact.new_fristdepartment, FilteredContact.new_fristdepartmentname, Filterednew_ecturerlanguages.new_languages, Filterednew_ecturerlanguages.new_languagesname, 
                         FilteredContact.new_inbirthdate, FilteredContact.new_inbirthdateutc, FilteredContact.new_lecturerflag, FilteredContact.new_linkedin, Filterednew_nationalities.new_nation, Filterednew_nationalities.new_nationalitiesid, Filterednew_nationalities.new_nationalityname, Filterednew_nationalities.new_nationname, FilteredContact.new_passport, FilteredContact.new_passportexpiredon, FilteredContact.new_passportexpiredonutc, 
                         FilteredContact.new_passportname, FilteredContact.new_professionalfees, FilteredContact.new_professionalfees_base, FilteredContact.new_residencelocation, FilteredContact.new_residencelocationname, 
                         FilteredContact.new_yearsofexperience, FilteredContact.ownerid, FilteredContact.owneriddsc, FilteredContact.owneridname, FilteredContact.owneridtype, FilteredContact.owneridyominame, 
                         FilteredContact.owningbusinessunit, FilteredContact.owningteam, FilteredContact.owninguser, FilteredContact.statecode, FilteredContact.statecodename, FilteredContact.statuscode, 
                         FilteredContact.statuscodename, FilteredContact.suffix, FilteredContact.telephone1, FilteredContact.telephone2, FilteredContact.telephone3, FilteredContact.new_firstspecialization AS PrimarySpeciaID, 
                         FilteredContact.new_firstspecializationname AS PrimarySpecianame, FilteredContact.assistantphone, 'SubSP' AS SP, 'SubLN' AS LN, FilteredAccount.entityimage AS Expr1, FilteredContact.transactioncurrencyid, 
                         'Any' ACBO
FROM            FilteredContact INNER JOIN
                         FilteredAccount ON FilteredContact.accountid = FilteredAccount.accountid RIGHT OUTER JOIN
                         Filterednew_specializations ON FilteredContact.contactid = Filterednew_specializations.new_lecturername RIGHT OUTER JOIN
                         Filterednew_ecturerlanguages ON FilteredContact.contactid = Filterednew_ecturerlanguages.new_lecturername INNER JOIN Filterednew_nationalities ON FilteredContact.contactid = Filterednew_nationalities.new_contactname
WHERE        (FilteredContact.accountrolecode <> 2) AND (Filterednew_specializations.new_specialtyar IS NOT NULL) AND (Filterednew_ecturerlanguages.new_languages IS NOT NULL) AND 
                         (Filterednew_ecturerlanguages.new_languagesname IS NOT NULL)


--************************************DONE****************************************DONE************************************************

UNION ALL
/***** Look for Accreditation specialization and original  language and original nation *****/ SELECT DISTINCT 
                         FilteredContact.accountid, FilteredContact.accountidname, FilteredContact.accountrolecode, FilteredContact.accountrolecodename, FilteredContact.address1_city, FilteredContact.address1_composite, 
                         FilteredContact.address1_line1, FilteredContact.address1_line2, FilteredContact.address1_line3, FilteredContact.address1_stateorprovince, FilteredContact.address2_city, FilteredContact.address2_composite, 
                         FilteredContact.address2_line1, FilteredContact.address2_line2, FilteredContact.address2_line3, FilteredContact.birthdate, FilteredContact.birthdateutc, FilteredContact.business2, FilteredContact.contactid, 
                         FilteredContact.createdby, FilteredContact.createdbyname, FilteredContact.createdon, FilteredContact.createdonutc, FilteredContact.emailaddress1, FilteredContact.emailaddress2, FilteredContact.entityimage, 
                         FilteredContact.entityimageid, FilteredContact.entityimage_url, FilteredContact.firstname, FilteredContact.fullname, FilteredContact.gendercode, FilteredContact.gendercodename, FilteredContact.jobtitle, 
                         FilteredContact.lastname, FilteredContact.managername, FilteredContact.managerphone, FilteredContact.middlename, FilteredContact.mobilephone, FilteredContact.modifiedon, FilteredContact.modifiedonutc, 
                         FilteredContact.new_age, FilteredContact.new_arpostalcode, FilteredContact.new_arsalutation, FilteredContact.new_arsalutationname, FilteredContact.new_civilid, FilteredContact.new_civilidexpiredon, 
                         FilteredContact.new_civilidexpiredonutc, FilteredContact.new_civilidname, FilteredContact.new_country, FilteredContact.new_countryname, FilteredContact.new_countryofresidence, 
                         FilteredContact.new_countryofresidencename, FilteredContact.new_cv, FilteredContact.new_cvname, FilteredContact.new_directmanagerid, FilteredContact.new_directmanageridname, 
                         FilteredContact.new_directmanageridyominame, FilteredContact.new_employeeusername, FilteredContact.new_employeeusernamename, FilteredContact.new_employeeusernameyominame, 
                         FilteredContact.new_enfristname, FilteredContact.new_enfullname, FilteredContact.new_enjobtitle, FilteredContact.new_enlastname, FilteredContact.new_enmiddelname, FilteredContact.new_enpostalcode, 
                         FilteredContact.new_ensalutation, FilteredContact.new_ensalutationname, FilteredContact.new_extensionnumber, Filterednew_accreditationbodies.new_specialization, 
                         Filterednew_accreditationbodies.new_specializationname, FilteredContact.new_fristdepartment, FilteredContact.new_fristdepartmentname, FilteredContact.new_fristlanguage, 
                         FilteredContact.new_fristlanguagename, FilteredContact.new_inbirthdate, FilteredContact.new_inbirthdateutc, FilteredContact.new_lecturerflag, FilteredContact.new_linkedin, FilteredContact.new_nation, 
                         FilteredContact.new_nationality, FilteredContact.new_nationalityname, FilteredContact.new_nationname, FilteredContact.new_passport, FilteredContact.new_passportexpiredon, 
                         FilteredContact.new_passportexpiredonutc, FilteredContact.new_passportname, FilteredContact.new_professionalfees, FilteredContact.new_professionalfees_base, FilteredContact.new_residencelocation, 
                         FilteredContact.new_residencelocationname, FilteredContact.new_yearsofexperience, FilteredContact.ownerid, FilteredContact.owneriddsc, FilteredContact.owneridname, FilteredContact.owneridtype, 
                         FilteredContact.owneridyominame, FilteredContact.owningbusinessunit, FilteredContact.owningteam, FilteredContact.owninguser, FilteredContact.statecode, FilteredContact.statecodename, 
                         FilteredContact.statuscode, FilteredContact.statuscodename, FilteredContact.suffix, FilteredContact.telephone1, FilteredContact.telephone2, FilteredContact.telephone3, 
                         FilteredContact.new_firstspecialization AS PrimarySpeciaID, FilteredContact.new_firstspecializationname AS PrimarySpecianame, FilteredContact.assistantphone, 'AB' AS SP, 'PrimaryLN' AS LN, 
                         FilteredAccount.entityimage AS Expr1, FilteredContact.transactioncurrencyid, new_accreditationbody
FROM            FilteredContact INNER JOIN
                         FilteredAccount ON FilteredContact.accountid = FilteredAccount.accountid RIGHT OUTER JOIN
                         Filterednew_accreditationbodies ON FilteredContact.contactid = Filterednew_accreditationbodies.new_contactname
WHERE        (FilteredContact.accountrolecode <> 2)



UNION ALL
/***** Look for Accreditation specialization and original  language and other nation *****/ SELECT DISTINCT 
                         FilteredContact.accountid, FilteredContact.accountidname, FilteredContact.accountrolecode, FilteredContact.accountrolecodename, FilteredContact.address1_city, FilteredContact.address1_composite, 
                         FilteredContact.address1_line1, FilteredContact.address1_line2, FilteredContact.address1_line3, FilteredContact.address1_stateorprovince, FilteredContact.address2_city, FilteredContact.address2_composite, 
                         FilteredContact.address2_line1, FilteredContact.address2_line2, FilteredContact.address2_line3, FilteredContact.birthdate, FilteredContact.birthdateutc, FilteredContact.business2, FilteredContact.contactid, 
                         FilteredContact.createdby, FilteredContact.createdbyname, FilteredContact.createdon, FilteredContact.createdonutc, FilteredContact.emailaddress1, FilteredContact.emailaddress2, FilteredContact.entityimage, 
                         FilteredContact.entityimageid, FilteredContact.entityimage_url, FilteredContact.firstname, FilteredContact.fullname, FilteredContact.gendercode, FilteredContact.gendercodename, FilteredContact.jobtitle, 
                         FilteredContact.lastname, FilteredContact.managername, FilteredContact.managerphone, FilteredContact.middlename, FilteredContact.mobilephone, FilteredContact.modifiedon, FilteredContact.modifiedonutc, 
                         FilteredContact.new_age, FilteredContact.new_arpostalcode, FilteredContact.new_arsalutation, FilteredContact.new_arsalutationname, FilteredContact.new_civilid, FilteredContact.new_civilidexpiredon, 
                         FilteredContact.new_civilidexpiredonutc, FilteredContact.new_civilidname, FilteredContact.new_country, FilteredContact.new_countryname, FilteredContact.new_countryofresidence, 
                         FilteredContact.new_countryofresidencename, FilteredContact.new_cv, FilteredContact.new_cvname, FilteredContact.new_directmanagerid, FilteredContact.new_directmanageridname, 
                         FilteredContact.new_directmanageridyominame, FilteredContact.new_employeeusername, FilteredContact.new_employeeusernamename, FilteredContact.new_employeeusernameyominame, 
                         FilteredContact.new_enfristname, FilteredContact.new_enfullname, FilteredContact.new_enjobtitle, FilteredContact.new_enlastname, FilteredContact.new_enmiddelname, FilteredContact.new_enpostalcode, 
                         FilteredContact.new_ensalutation, FilteredContact.new_ensalutationname, FilteredContact.new_extensionnumber, Filterednew_accreditationbodies.new_specialization, 
                         Filterednew_accreditationbodies.new_specializationname, FilteredContact.new_fristdepartment, FilteredContact.new_fristdepartmentname, FilteredContact.new_fristlanguage, 
                         FilteredContact.new_fristlanguagename, FilteredContact.new_inbirthdate, FilteredContact.new_inbirthdateutc, FilteredContact.new_lecturerflag, FilteredContact.new_linkedin, Filterednew_nationalities.new_nation, Filterednew_nationalities.new_nationalitiesid, Filterednew_nationalities.new_nationalityname, Filterednew_nationalities.new_nationname, FilteredContact.new_passport, FilteredContact.new_passportexpiredon, 
                         FilteredContact.new_passportexpiredonutc, FilteredContact.new_passportname, FilteredContact.new_professionalfees, FilteredContact.new_professionalfees_base, FilteredContact.new_residencelocation, 
                         FilteredContact.new_residencelocationname, FilteredContact.new_yearsofexperience, FilteredContact.ownerid, FilteredContact.owneriddsc, FilteredContact.owneridname, FilteredContact.owneridtype, 
                         FilteredContact.owneridyominame, FilteredContact.owningbusinessunit, FilteredContact.owningteam, FilteredContact.owninguser, FilteredContact.statecode, FilteredContact.statecodename, 
                         FilteredContact.statuscode, FilteredContact.statuscodename, FilteredContact.suffix, FilteredContact.telephone1, FilteredContact.telephone2, FilteredContact.telephone3, 
                         FilteredContact.new_firstspecialization AS PrimarySpeciaID, FilteredContact.new_firstspecializationname AS PrimarySpecianame, FilteredContact.assistantphone, 'AB' AS SP, 'PrimaryLN' AS LN, 
                         FilteredAccount.entityimage AS Expr1, FilteredContact.transactioncurrencyid, new_accreditationbody
FROM            FilteredContact INNER JOIN
                         FilteredAccount ON FilteredContact.accountid = FilteredAccount.accountid RIGHT OUTER JOIN
                         Filterednew_accreditationbodies ON FilteredContact.contactid = Filterednew_accreditationbodies.new_contactname INNER JOIN Filterednew_nationalities ON FilteredContact.contactid = Filterednew_nationalities.new_contactname
WHERE        (FilteredContact.accountrolecode <> 2)


--************************************DONE****************************************DONE************************************************




/*AND (Filterednew_specializations.new_specialtyar IS NOT NULL)*/ UNION ALL
/***** Look for Accreditation specialization and sub  language and original nation *****/ SELECT DISTINCT 
                         FilteredContact.accountid, FilteredContact.accountidname, FilteredContact.accountrolecode, FilteredContact.accountrolecodename, FilteredContact.address1_city, FilteredContact.address1_composite, 
                         FilteredContact.address1_line1, FilteredContact.address1_line2, FilteredContact.address1_line3, FilteredContact.address1_stateorprovince, FilteredContact.address2_city, FilteredContact.address2_composite, 
                         FilteredContact.address2_line1, FilteredContact.address2_line2, FilteredContact.address2_line3, FilteredContact.birthdate, FilteredContact.birthdateutc, FilteredContact.business2, FilteredContact.contactid, 
                         FilteredContact.createdby, FilteredContact.createdbyname, FilteredContact.createdon, FilteredContact.createdonutc, FilteredContact.emailaddress1, FilteredContact.emailaddress2, FilteredContact.entityimage, 
                         FilteredContact.entityimageid, FilteredContact.entityimage_url, FilteredContact.firstname, FilteredContact.fullname, FilteredContact.gendercode, FilteredContact.gendercodename, FilteredContact.jobtitle, 
                         FilteredContact.lastname, FilteredContact.managername, FilteredContact.managerphone, FilteredContact.middlename, FilteredContact.mobilephone, FilteredContact.modifiedon, FilteredContact.modifiedonutc, 
                         FilteredContact.new_age, FilteredContact.new_arpostalcode, FilteredContact.new_arsalutation, FilteredContact.new_arsalutationname, FilteredContact.new_civilid, FilteredContact.new_civilidexpiredon, 
                         FilteredContact.new_civilidexpiredonutc, FilteredContact.new_civilidname, FilteredContact.new_country, FilteredContact.new_countryname, FilteredContact.new_countryofresidence, 
                         FilteredContact.new_countryofresidencename, FilteredContact.new_cv, FilteredContact.new_cvname, FilteredContact.new_directmanagerid, FilteredContact.new_directmanageridname, 
                         FilteredContact.new_directmanageridyominame, FilteredContact.new_employeeusername, FilteredContact.new_employeeusernamename, FilteredContact.new_employeeusernameyominame, 
                         FilteredContact.new_enfristname, FilteredContact.new_enfullname, FilteredContact.new_enjobtitle, FilteredContact.new_enlastname, FilteredContact.new_enmiddelname, FilteredContact.new_enpostalcode, 
                         FilteredContact.new_ensalutation, FilteredContact.new_ensalutationname, FilteredContact.new_extensionnumber, Filterednew_accreditationbodies.new_specialization, 
                         Filterednew_accreditationbodies.new_specializationname, FilteredContact.new_fristdepartment, FilteredContact.new_fristdepartmentname, Filterednew_ecturerlanguages.new_languages, 
                         Filterednew_ecturerlanguages.new_languagesname, FilteredContact.new_inbirthdate, FilteredContact.new_inbirthdateutc, FilteredContact.new_lecturerflag, FilteredContact.new_linkedin, 
                         FilteredContact.new_nation, FilteredContact.new_nationality, FilteredContact.new_nationalityname, FilteredContact.new_nationname, FilteredContact.new_passport, FilteredContact.new_passportexpiredon, 
                         FilteredContact.new_passportexpiredonutc, FilteredContact.new_passportname, FilteredContact.new_professionalfees, FilteredContact.new_professionalfees_base, FilteredContact.new_residencelocation, 
                         FilteredContact.new_residencelocationname, FilteredContact.new_yearsofexperience, FilteredContact.ownerid, FilteredContact.owneriddsc, FilteredContact.owneridname, FilteredContact.owneridtype, 
                         FilteredContact.owneridyominame, FilteredContact.owningbusinessunit, FilteredContact.owningteam, FilteredContact.owninguser, FilteredContact.statecode, FilteredContact.statecodename, 
                         FilteredContact.statuscode, FilteredContact.statuscodename, FilteredContact.suffix, FilteredContact.telephone1, FilteredContact.telephone2, FilteredContact.telephone3, 
                         FilteredContact.new_firstspecialization AS PrimarySpeciaID, FilteredContact.new_firstspecializationname AS PrimarySpecianame, FilteredContact.assistantphone, 'AB' AS SP, 'SubLN' AS LN, 
                         FilteredAccount.entityimage AS Expr1, FilteredContact.transactioncurrencyid, new_accreditationbody
FROM            FilteredContact INNER JOIN
                         FilteredAccount ON FilteredContact.accountid = FilteredAccount.accountid RIGHT OUTER JOIN
                         Filterednew_accreditationbodies ON FilteredContact.contactid = Filterednew_accreditationbodies.new_contactname RIGHT OUTER JOIN
                         Filterednew_ecturerlanguages ON FilteredContact.contactid = Filterednew_ecturerlanguages.new_lecturername
WHERE        (FilteredContact.accountrolecode <> 2) /*AND (Filterednew_specializations.new_specialtyar IS NOT NULL) */ AND (Filterednew_ecturerlanguages.new_languages IS NOT NULL) AND 
                         (Filterednew_ecturerlanguages.new_languagesname IS NOT NULL)




/*AND (Filterednew_specializations.new_specialtyar IS NOT NULL)*/ UNION ALL
/***** Look for Accreditation specialization and sub  language and other nation *****/ SELECT DISTINCT 
                         FilteredContact.accountid, FilteredContact.accountidname, FilteredContact.accountrolecode, FilteredContact.accountrolecodename, FilteredContact.address1_city, FilteredContact.address1_composite, 
                         FilteredContact.address1_line1, FilteredContact.address1_line2, FilteredContact.address1_line3, FilteredContact.address1_stateorprovince, FilteredContact.address2_city, FilteredContact.address2_composite, 
                         FilteredContact.address2_line1, FilteredContact.address2_line2, FilteredContact.address2_line3, FilteredContact.birthdate, FilteredContact.birthdateutc, FilteredContact.business2, FilteredContact.contactid, 
                         FilteredContact.createdby, FilteredContact.createdbyname, FilteredContact.createdon, FilteredContact.createdonutc, FilteredContact.emailaddress1, FilteredContact.emailaddress2, FilteredContact.entityimage, 
                         FilteredContact.entityimageid, FilteredContact.entityimage_url, FilteredContact.firstname, FilteredContact.fullname, FilteredContact.gendercode, FilteredContact.gendercodename, FilteredContact.jobtitle, 
                         FilteredContact.lastname, FilteredContact.managername, FilteredContact.managerphone, FilteredContact.middlename, FilteredContact.mobilephone, FilteredContact.modifiedon, FilteredContact.modifiedonutc, 
                         FilteredContact.new_age, FilteredContact.new_arpostalcode, FilteredContact.new_arsalutation, FilteredContact.new_arsalutationname, FilteredContact.new_civilid, FilteredContact.new_civilidexpiredon, 
                         FilteredContact.new_civilidexpiredonutc, FilteredContact.new_civilidname, FilteredContact.new_country, FilteredContact.new_countryname, FilteredContact.new_countryofresidence, 
                         FilteredContact.new_countryofresidencename, FilteredContact.new_cv, FilteredContact.new_cvname, FilteredContact.new_directmanagerid, FilteredContact.new_directmanageridname, 
                         FilteredContact.new_directmanageridyominame, FilteredContact.new_employeeusername, FilteredContact.new_employeeusernamename, FilteredContact.new_employeeusernameyominame, 
                         FilteredContact.new_enfristname, FilteredContact.new_enfullname, FilteredContact.new_enjobtitle, FilteredContact.new_enlastname, FilteredContact.new_enmiddelname, FilteredContact.new_enpostalcode, 
                         FilteredContact.new_ensalutation, FilteredContact.new_ensalutationname, FilteredContact.new_extensionnumber, Filterednew_accreditationbodies.new_specialization, 
                         Filterednew_accreditationbodies.new_specializationname, FilteredContact.new_fristdepartment, FilteredContact.new_fristdepartmentname, Filterednew_ecturerlanguages.new_languages, 
                         Filterednew_ecturerlanguages.new_languagesname, FilteredContact.new_inbirthdate, FilteredContact.new_inbirthdateutc, FilteredContact.new_lecturerflag, FilteredContact.new_linkedin, 
                         Filterednew_nationalities.new_nation, Filterednew_nationalities.new_nationalitiesid, Filterednew_nationalities.new_nationalityname, Filterednew_nationalities.new_nationname, FilteredContact.new_passport, FilteredContact.new_passportexpiredon, 
                         FilteredContact.new_passportexpiredonutc, FilteredContact.new_passportname, FilteredContact.new_professionalfees, FilteredContact.new_professionalfees_base, FilteredContact.new_residencelocation, 
                         FilteredContact.new_residencelocationname, FilteredContact.new_yearsofexperience, FilteredContact.ownerid, FilteredContact.owneriddsc, FilteredContact.owneridname, FilteredContact.owneridtype, 
                         FilteredContact.owneridyominame, FilteredContact.owningbusinessunit, FilteredContact.owningteam, FilteredContact.owninguser, FilteredContact.statecode, FilteredContact.statecodename, 
                         FilteredContact.statuscode, FilteredContact.statuscodename, FilteredContact.suffix, FilteredContact.telephone1, FilteredContact.telephone2, FilteredContact.telephone3, 
                         FilteredContact.new_firstspecialization AS PrimarySpeciaID, FilteredContact.new_firstspecializationname AS PrimarySpecianame, FilteredContact.assistantphone, 'AB' AS SP, 'SubLN' AS LN, 
                         FilteredAccount.entityimage AS Expr1, FilteredContact.transactioncurrencyid, new_accreditationbody
FROM            FilteredContact INNER JOIN
                         FilteredAccount ON FilteredContact.accountid = FilteredAccount.accountid RIGHT OUTER JOIN
                         Filterednew_accreditationbodies ON FilteredContact.contactid = Filterednew_accreditationbodies.new_contactname RIGHT OUTER JOIN
                         Filterednew_ecturerlanguages ON FilteredContact.contactid = Filterednew_ecturerlanguages.new_lecturername INNER JOIN Filterednew_nationalities ON FilteredContact.contactid = Filterednew_nationalities.new_contactname
WHERE        (FilteredContact.accountrolecode <> 2) /*AND (Filterednew_specializations.new_specialtyar IS NOT NULL) */ AND (Filterednew_ecturerlanguages.new_languages IS NOT NULL) AND 
                         (Filterednew_ecturerlanguages.new_languagesname IS NOT NULL)


--************************************DONE****************************************DONE************************************************


UNION ALL
/***** Look for Accreditation specialization and original  language and original nation ANY*****/ SELECT DISTINCT 
                         FilteredContact.accountid, FilteredContact.accountidname, FilteredContact.accountrolecode, FilteredContact.accountrolecodename, FilteredContact.address1_city, FilteredContact.address1_composite, 
                         FilteredContact.address1_line1, FilteredContact.address1_line2, FilteredContact.address1_line3, FilteredContact.address1_stateorprovince, FilteredContact.address2_city, FilteredContact.address2_composite, 
                         FilteredContact.address2_line1, FilteredContact.address2_line2, FilteredContact.address2_line3, FilteredContact.birthdate, FilteredContact.birthdateutc, FilteredContact.business2, FilteredContact.contactid, 
                         FilteredContact.createdby, FilteredContact.createdbyname, FilteredContact.createdon, FilteredContact.createdonutc, FilteredContact.emailaddress1, FilteredContact.emailaddress2, FilteredContact.entityimage, 
                         FilteredContact.entityimageid, FilteredContact.entityimage_url, FilteredContact.firstname, FilteredContact.fullname, FilteredContact.gendercode, FilteredContact.gendercodename, FilteredContact.jobtitle, 
                         FilteredContact.lastname, FilteredContact.managername, FilteredContact.managerphone, FilteredContact.middlename, FilteredContact.mobilephone, FilteredContact.modifiedon, FilteredContact.modifiedonutc, 
                         FilteredContact.new_age, FilteredContact.new_arpostalcode, FilteredContact.new_arsalutation, FilteredContact.new_arsalutationname, FilteredContact.new_civilid, FilteredContact.new_civilidexpiredon, 
                         FilteredContact.new_civilidexpiredonutc, FilteredContact.new_civilidname, FilteredContact.new_country, FilteredContact.new_countryname, FilteredContact.new_countryofresidence, 
                         FilteredContact.new_countryofresidencename, FilteredContact.new_cv, FilteredContact.new_cvname, FilteredContact.new_directmanagerid, FilteredContact.new_directmanageridname, 
                         FilteredContact.new_directmanageridyominame, FilteredContact.new_employeeusername, FilteredContact.new_employeeusernamename, FilteredContact.new_employeeusernameyominame, 
                         FilteredContact.new_enfristname, FilteredContact.new_enfullname, FilteredContact.new_enjobtitle, FilteredContact.new_enlastname, FilteredContact.new_enmiddelname, FilteredContact.new_enpostalcode, 
                         FilteredContact.new_ensalutation, FilteredContact.new_ensalutationname, FilteredContact.new_extensionnumber, Filterednew_accreditationbodies.new_specialization, 
                         Filterednew_accreditationbodies.new_specializationname, FilteredContact.new_fristdepartment, FilteredContact.new_fristdepartmentname, FilteredContact.new_fristlanguage, 
                         FilteredContact.new_fristlanguagename, FilteredContact.new_inbirthdate, FilteredContact.new_inbirthdateutc, FilteredContact.new_lecturerflag, FilteredContact.new_linkedin, FilteredContact.new_nation, 
                         FilteredContact.new_nationality, FilteredContact.new_nationalityname, FilteredContact.new_nationname, FilteredContact.new_passport, FilteredContact.new_passportexpiredon, 
                         FilteredContact.new_passportexpiredonutc, FilteredContact.new_passportname, FilteredContact.new_professionalfees, FilteredContact.new_professionalfees_base, FilteredContact.new_residencelocation, 
                         FilteredContact.new_residencelocationname, FilteredContact.new_yearsofexperience, FilteredContact.ownerid, FilteredContact.owneriddsc, FilteredContact.owneridname, FilteredContact.owneridtype, 
                         FilteredContact.owneridyominame, FilteredContact.owningbusinessunit, FilteredContact.owningteam, FilteredContact.owninguser, FilteredContact.statecode, FilteredContact.statecodename, 
                         FilteredContact.statuscode, FilteredContact.statuscodename, FilteredContact.suffix, FilteredContact.telephone1, FilteredContact.telephone2, FilteredContact.telephone3, 
                         FilteredContact.new_firstspecialization AS PrimarySpeciaID, FilteredContact.new_firstspecializationname AS PrimarySpecianame, FilteredContact.assistantphone, 'AB' AS SP, 'PrimaryLN' AS LN, 
                         FilteredAccount.entityimage AS Expr1, FilteredContact.transactioncurrencyid, 'Any' ACBO
FROM            FilteredContact INNER JOIN
                         FilteredAccount ON FilteredContact.accountid = FilteredAccount.accountid RIGHT OUTER JOIN
                         Filterednew_accreditationbodies ON FilteredContact.contactid = Filterednew_accreditationbodies.new_contactname
WHERE        (FilteredContact.accountrolecode <> 2)

UNION ALL
/***** Look for Accreditation specialization and original  language and other nation ANY*****/ SELECT DISTINCT 
                         FilteredContact.accountid, FilteredContact.accountidname, FilteredContact.accountrolecode, FilteredContact.accountrolecodename, FilteredContact.address1_city, FilteredContact.address1_composite, 
                         FilteredContact.address1_line1, FilteredContact.address1_line2, FilteredContact.address1_line3, FilteredContact.address1_stateorprovince, FilteredContact.address2_city, FilteredContact.address2_composite, 
                         FilteredContact.address2_line1, FilteredContact.address2_line2, FilteredContact.address2_line3, FilteredContact.birthdate, FilteredContact.birthdateutc, FilteredContact.business2, FilteredContact.contactid, 
                         FilteredContact.createdby, FilteredContact.createdbyname, FilteredContact.createdon, FilteredContact.createdonutc, FilteredContact.emailaddress1, FilteredContact.emailaddress2, FilteredContact.entityimage, 
                         FilteredContact.entityimageid, FilteredContact.entityimage_url, FilteredContact.firstname, FilteredContact.fullname, FilteredContact.gendercode, FilteredContact.gendercodename, FilteredContact.jobtitle, 
                         FilteredContact.lastname, FilteredContact.managername, FilteredContact.managerphone, FilteredContact.middlename, FilteredContact.mobilephone, FilteredContact.modifiedon, FilteredContact.modifiedonutc, 
                         FilteredContact.new_age, FilteredContact.new_arpostalcode, FilteredContact.new_arsalutation, FilteredContact.new_arsalutationname, FilteredContact.new_civilid, FilteredContact.new_civilidexpiredon, 
                         FilteredContact.new_civilidexpiredonutc, FilteredContact.new_civilidname, FilteredContact.new_country, FilteredContact.new_countryname, FilteredContact.new_countryofresidence, 
                         FilteredContact.new_countryofresidencename, FilteredContact.new_cv, FilteredContact.new_cvname, FilteredContact.new_directmanagerid, FilteredContact.new_directmanageridname, 
                         FilteredContact.new_directmanageridyominame, FilteredContact.new_employeeusername, FilteredContact.new_employeeusernamename, FilteredContact.new_employeeusernameyominame, 
                         FilteredContact.new_enfristname, FilteredContact.new_enfullname, FilteredContact.new_enjobtitle, FilteredContact.new_enlastname, FilteredContact.new_enmiddelname, FilteredContact.new_enpostalcode, 
                         FilteredContact.new_ensalutation, FilteredContact.new_ensalutationname, FilteredContact.new_extensionnumber, Filterednew_accreditationbodies.new_specialization, 
                         Filterednew_accreditationbodies.new_specializationname, FilteredContact.new_fristdepartment, FilteredContact.new_fristdepartmentname, FilteredContact.new_fristlanguage, 
                         FilteredContact.new_fristlanguagename, FilteredContact.new_inbirthdate, FilteredContact.new_inbirthdateutc, FilteredContact.new_lecturerflag, FilteredContact.new_linkedin, Filterednew_nationalities.new_nation, Filterednew_nationalities.new_nationalitiesid, Filterednew_nationalities.new_nationalityname, Filterednew_nationalities.new_nationname, FilteredContact.new_passport, FilteredContact.new_passportexpiredon, 
                         FilteredContact.new_passportexpiredonutc, FilteredContact.new_passportname, FilteredContact.new_professionalfees, FilteredContact.new_professionalfees_base, FilteredContact.new_residencelocation, 
                         FilteredContact.new_residencelocationname, FilteredContact.new_yearsofexperience, FilteredContact.ownerid, FilteredContact.owneriddsc, FilteredContact.owneridname, FilteredContact.owneridtype, 
                         FilteredContact.owneridyominame, FilteredContact.owningbusinessunit, FilteredContact.owningteam, FilteredContact.owninguser, FilteredContact.statecode, FilteredContact.statecodename, 
                         FilteredContact.statuscode, FilteredContact.statuscodename, FilteredContact.suffix, FilteredContact.telephone1, FilteredContact.telephone2, FilteredContact.telephone3, 
                         FilteredContact.new_firstspecialization AS PrimarySpeciaID, FilteredContact.new_firstspecializationname AS PrimarySpecianame, FilteredContact.assistantphone, 'AB' AS SP, 'PrimaryLN' AS LN, 
                         FilteredAccount.entityimage AS Expr1, FilteredContact.transactioncurrencyid, 'Any' ACBO
FROM            FilteredContact INNER JOIN
                         FilteredAccount ON FilteredContact.accountid = FilteredAccount.accountid RIGHT OUTER JOIN
                         Filterednew_accreditationbodies ON FilteredContact.contactid = Filterednew_accreditationbodies.new_contactname INNER JOIN Filterednew_nationalities ON FilteredContact.contactid = Filterednew_nationalities.new_contactname
WHERE        (FilteredContact.accountrolecode <> 2)

--************************************DONE****************************************DONE************************************************

/*AND (Filterednew_specializations.new_specialtyar IS NOT NULL)*/ UNION ALL
/***** Look for Accreditation specialization and sub  language and original nation ANY*****/ SELECT DISTINCT 
                         FilteredContact.accountid, FilteredContact.accountidname, FilteredContact.accountrolecode, FilteredContact.accountrolecodename, FilteredContact.address1_city, FilteredContact.address1_composite, 
                         FilteredContact.address1_line1, FilteredContact.address1_line2, FilteredContact.address1_line3, FilteredContact.address1_stateorprovince, FilteredContact.address2_city, FilteredContact.address2_composite, 
                         FilteredContact.address2_line1, FilteredContact.address2_line2, FilteredContact.address2_line3, FilteredContact.birthdate, FilteredContact.birthdateutc, FilteredContact.business2, FilteredContact.contactid, 
                         FilteredContact.createdby, FilteredContact.createdbyname, FilteredContact.createdon, FilteredContact.createdonutc, FilteredContact.emailaddress1, FilteredContact.emailaddress2, FilteredContact.entityimage, 
                         FilteredContact.entityimageid, FilteredContact.entityimage_url, FilteredContact.firstname, FilteredContact.fullname, FilteredContact.gendercode, FilteredContact.gendercodename, FilteredContact.jobtitle, 
                         FilteredContact.lastname, FilteredContact.managername, FilteredContact.managerphone, FilteredContact.middlename, FilteredContact.mobilephone, FilteredContact.modifiedon, FilteredContact.modifiedonutc, 
                         FilteredContact.new_age, FilteredContact.new_arpostalcode, FilteredContact.new_arsalutation, FilteredContact.new_arsalutationname, FilteredContact.new_civilid, FilteredContact.new_civilidexpiredon, 
                         FilteredContact.new_civilidexpiredonutc, FilteredContact.new_civilidname, FilteredContact.new_country, FilteredContact.new_countryname, FilteredContact.new_countryofresidence, 
                         FilteredContact.new_countryofresidencename, FilteredContact.new_cv, FilteredContact.new_cvname, FilteredContact.new_directmanagerid, FilteredContact.new_directmanageridname, 
                         FilteredContact.new_directmanageridyominame, FilteredContact.new_employeeusername, FilteredContact.new_employeeusernamename, FilteredContact.new_employeeusernameyominame, 
                         FilteredContact.new_enfristname, FilteredContact.new_enfullname, FilteredContact.new_enjobtitle, FilteredContact.new_enlastname, FilteredContact.new_enmiddelname, FilteredContact.new_enpostalcode, 
                         FilteredContact.new_ensalutation, FilteredContact.new_ensalutationname, FilteredContact.new_extensionnumber, Filterednew_accreditationbodies.new_specialization, 
                         Filterednew_accreditationbodies.new_specializationname, FilteredContact.new_fristdepartment, FilteredContact.new_fristdepartmentname, Filterednew_ecturerlanguages.new_languages, 
                         Filterednew_ecturerlanguages.new_languagesname, FilteredContact.new_inbirthdate, FilteredContact.new_inbirthdateutc, FilteredContact.new_lecturerflag, FilteredContact.new_linkedin, 
                         FilteredContact.new_nation, FilteredContact.new_nationality, FilteredContact.new_nationalityname, FilteredContact.new_nationname, FilteredContact.new_passport, FilteredContact.new_passportexpiredon, 
                         FilteredContact.new_passportexpiredonutc, FilteredContact.new_passportname, FilteredContact.new_professionalfees, FilteredContact.new_professionalfees_base, FilteredContact.new_residencelocation, 
                         FilteredContact.new_residencelocationname, FilteredContact.new_yearsofexperience, FilteredContact.ownerid, FilteredContact.owneriddsc, FilteredContact.owneridname, FilteredContact.owneridtype, 
                         FilteredContact.owneridyominame, FilteredContact.owningbusinessunit, FilteredContact.owningteam, FilteredContact.owninguser, FilteredContact.statecode, FilteredContact.statecodename, 
                         FilteredContact.statuscode, FilteredContact.statuscodename, FilteredContact.suffix, FilteredContact.telephone1, FilteredContact.telephone2, FilteredContact.telephone3, 
                         FilteredContact.new_firstspecialization AS PrimarySpeciaID, FilteredContact.new_firstspecializationname AS PrimarySpecianame, FilteredContact.assistantphone, 'AB' AS SP, 'SubLN' AS LN, 
                         FilteredAccount.entityimage AS Expr1, FilteredContact.transactioncurrencyid, 'Any' ACBO
FROM            FilteredContact INNER JOIN
                         FilteredAccount ON FilteredContact.accountid = FilteredAccount.accountid RIGHT OUTER JOIN
                         Filterednew_accreditationbodies ON FilteredContact.contactid = Filterednew_accreditationbodies.new_contactname RIGHT OUTER JOIN
                         Filterednew_ecturerlanguages ON FilteredContact.contactid = Filterednew_ecturerlanguages.new_lecturername
WHERE        (FilteredContact.accountrolecode <> 2) /*AND (Filterednew_specializations.new_specialtyar IS NOT NULL) */ AND (Filterednew_ecturerlanguages.new_languages IS NOT NULL) AND 
                         (Filterednew_ecturerlanguages.new_languagesname IS NOT NULL)


/*AND (Filterednew_specializations.new_specialtyar IS NOT NULL)*/ UNION ALL
/***** Look for Accreditation specialization and sub  language and other nation ANY*****/ SELECT DISTINCT 
                         FilteredContact.accountid, FilteredContact.accountidname, FilteredContact.accountrolecode, FilteredContact.accountrolecodename, FilteredContact.address1_city, FilteredContact.address1_composite, 
                         FilteredContact.address1_line1, FilteredContact.address1_line2, FilteredContact.address1_line3, FilteredContact.address1_stateorprovince, FilteredContact.address2_city, FilteredContact.address2_composite, 
                         FilteredContact.address2_line1, FilteredContact.address2_line2, FilteredContact.address2_line3, FilteredContact.birthdate, FilteredContact.birthdateutc, FilteredContact.business2, FilteredContact.contactid, 
                         FilteredContact.createdby, FilteredContact.createdbyname, FilteredContact.createdon, FilteredContact.createdonutc, FilteredContact.emailaddress1, FilteredContact.emailaddress2, FilteredContact.entityimage, 
                         FilteredContact.entityimageid, FilteredContact.entityimage_url, FilteredContact.firstname, FilteredContact.fullname, FilteredContact.gendercode, FilteredContact.gendercodename, FilteredContact.jobtitle, 
                         FilteredContact.lastname, FilteredContact.managername, FilteredContact.managerphone, FilteredContact.middlename, FilteredContact.mobilephone, FilteredContact.modifiedon, FilteredContact.modifiedonutc, 
                         FilteredContact.new_age, FilteredContact.new_arpostalcode, FilteredContact.new_arsalutation, FilteredContact.new_arsalutationname, FilteredContact.new_civilid, FilteredContact.new_civilidexpiredon, 
                         FilteredContact.new_civilidexpiredonutc, FilteredContact.new_civilidname, FilteredContact.new_country, FilteredContact.new_countryname, FilteredContact.new_countryofresidence, 
                         FilteredContact.new_countryofresidencename, FilteredContact.new_cv, FilteredContact.new_cvname, FilteredContact.new_directmanagerid, FilteredContact.new_directmanageridname, 
                         FilteredContact.new_directmanageridyominame, FilteredContact.new_employeeusername, FilteredContact.new_employeeusernamename, FilteredContact.new_employeeusernameyominame, 
                         FilteredContact.new_enfristname, FilteredContact.new_enfullname, FilteredContact.new_enjobtitle, FilteredContact.new_enlastname, FilteredContact.new_enmiddelname, FilteredContact.new_enpostalcode, 
                         FilteredContact.new_ensalutation, FilteredContact.new_ensalutationname, FilteredContact.new_extensionnumber, Filterednew_accreditationbodies.new_specialization, 
                         Filterednew_accreditationbodies.new_specializationname, FilteredContact.new_fristdepartment, FilteredContact.new_fristdepartmentname, Filterednew_ecturerlanguages.new_languages, 
                         Filterednew_ecturerlanguages.new_languagesname, FilteredContact.new_inbirthdate, FilteredContact.new_inbirthdateutc, FilteredContact.new_lecturerflag, FilteredContact.new_linkedin, 
                         Filterednew_nationalities.new_nation, Filterednew_nationalities.new_nationalitiesid, Filterednew_nationalities.new_nationalityname, Filterednew_nationalities.new_nationname, FilteredContact.new_passport, FilteredContact.new_passportexpiredon, 
                         FilteredContact.new_passportexpiredonutc, FilteredContact.new_passportname, FilteredContact.new_professionalfees, FilteredContact.new_professionalfees_base, FilteredContact.new_residencelocation, 
                         FilteredContact.new_residencelocationname, FilteredContact.new_yearsofexperience, FilteredContact.ownerid, FilteredContact.owneriddsc, FilteredContact.owneridname, FilteredContact.owneridtype, 
                         FilteredContact.owneridyominame, FilteredContact.owningbusinessunit, FilteredContact.owningteam, FilteredContact.owninguser, FilteredContact.statecode, FilteredContact.statecodename, 
                         FilteredContact.statuscode, FilteredContact.statuscodename, FilteredContact.suffix, FilteredContact.telephone1, FilteredContact.telephone2, FilteredContact.telephone3, 
                         FilteredContact.new_firstspecialization AS PrimarySpeciaID, FilteredContact.new_firstspecializationname AS PrimarySpecianame, FilteredContact.assistantphone, 'AB' AS SP, 'SubLN' AS LN, 
                         FilteredAccount.entityimage AS Expr1, FilteredContact.transactioncurrencyid, 'Any' ACBO
FROM            FilteredContact INNER JOIN
                         FilteredAccount ON FilteredContact.accountid = FilteredAccount.accountid RIGHT OUTER JOIN
                         Filterednew_accreditationbodies ON FilteredContact.contactid = Filterednew_accreditationbodies.new_contactname RIGHT OUTER JOIN
                         Filterednew_ecturerlanguages ON FilteredContact.contactid = Filterednew_ecturerlanguages.new_lecturername INNER JOIN Filterednew_nationalities ON FilteredContact.contactid = Filterednew_nationalities.new_contactname
WHERE        (FilteredContact.accountrolecode <> 2) /*AND (Filterednew_specializations.new_specialtyar IS NOT NULL) */ AND (Filterednew_ecturerlanguages.new_languages IS NOT NULL) AND 
                         (Filterednew_ecturerlanguages.new_languagesname IS NOT NULL)
GO



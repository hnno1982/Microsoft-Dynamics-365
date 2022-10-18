/***** Look for original specialization and original language and original nation *****/
SELECT         accountid, accountidname, accountrolecode, accountrolecodename, address1_city, address1_composite, address1_line1, address1_line2, address1_line3, address1_stateorprovince, address2_city, 
                         address2_composite, address2_line1, address2_line2, address2_line3, birthdate, birthdateutc, business2, contactid, createdby, createdbyname, createdon, createdonutc, emailaddress1, emailaddress2, 
                         entityimage, entityimageid, entityimage_url, firstname, fullname, gendercode, gendercodename, jobtitle, lastname, managername, managerphone, middlename, mobilephone, modifiedon, modifiedonutc, 
                         new_age, new_arpostalcode, new_arsalutation, new_arsalutationname, new_civilid, new_civilidexpiredon, new_civilidexpiredonutc, new_civilidname, new_country, new_countryname, new_countryofresidence, 
                         new_countryofresidencename, new_cv, new_cvname, new_directmanagerid, new_directmanageridname, new_directmanageridyominame, new_employeeusername, new_employeeusernamename, 
                         new_employeeusernameyominame, new_enfristname, new_enfullname, new_enjobtitle, new_enlastname, new_enmiddelname, new_enpostalcode, new_ensalutation, new_ensalutationname, 
                         new_extensionnumber, new_firstspecialization, new_firstspecializationname, new_fristdepartment, new_fristdepartmentname, new_fristlanguage, new_fristlanguagename, new_inbirthdate, new_inbirthdateutc, 
                         new_lecturerflag, new_linkedin, new_nation, new_nationality, new_nationalityname, new_nationname, new_passport, new_passportexpiredon, 
                         new_passportexpiredonutc, new_passportname, new_professionalfees, new_professionalfees_base, new_residencelocation, new_residencelocationname, new_yearsofexperience, ownerid, owneriddsc, 
                         owneridname, owneridtype, owneridyominame, owningbusinessunit, owningteam, owninguser, statecode, statecodename, statuscode, statuscodename, suffix, telephone1, telephone2, telephone3
FROM            FilteredContact
WHERE        (accountrolecode <> 2) AND (new_firstspecialization IS NOT NULL)


union all
/***** Look for original specialization and original language and sub nation *****/

/***
SELECT        FilteredContact.accountid, FilteredContact.accountidname, FilteredContact.accountrolecode, FilteredContact.accountrolecodename, FilteredContact.address1_city, FilteredContact.address1_composite, 
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
                         FilteredContact.new_inbirthdateutc, FilteredContact.new_lecturerflag, FilteredContact.new_linkedin, Filterednew_nationalities.new_nation, Filterednew_nationalities.new_countryname, 
                         Filterednew_nationalities.new_countrynamename, Filterednew_nationalities.new_nationname, FilteredContact.new_passport, FilteredContact.new_passportexpiredon, FilteredContact.new_passportexpiredonutc, FilteredContact.new_passportname, 
                         FilteredContact.new_professionalfees, FilteredContact.new_professionalfees_base, FilteredContact.new_residencelocation, FilteredContact.new_residencelocationname, FilteredContact.new_yearsofexperience, 
                         FilteredContact.ownerid, FilteredContact.owneriddsc, FilteredContact.owneridname, FilteredContact.owneridtype, FilteredContact.owneridyominame, FilteredContact.owningbusinessunit, 
                         FilteredContact.owningteam, FilteredContact.owninguser, FilteredContact.statecode, FilteredContact.statecodename, FilteredContact.statuscode, FilteredContact.statuscodename, FilteredContact.suffix, 
                         FilteredContact.telephone1, FilteredContact.telephone2, FilteredContact.telephone3
FROM            FilteredContact RIGHT OUTER JOIN
                         Filterednew_nationalities ON FilteredContact.contactid = Filterednew_nationalities.new_contactname
WHERE        (FilteredContact.accountrolecode <> 2) AND (FilteredContact.new_firstspecialization IS NOT NULL) AND (FilteredContact.new_firstspecializationname = N'محلل نظم') AND
						 (Filterednew_nationalities.new_countryname IS NOT NULL) AND (Filterednew_nationalities.new_countrynamename IS NOT NULL)
union all
***/

/***** Look for original specialization and sub language and original nation *****/
SELECT        FilteredContact.accountid, FilteredContact.accountidname, FilteredContact.accountrolecode, FilteredContact.accountrolecodename, FilteredContact.address1_city, FilteredContact.address1_composite, 
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
                         FilteredContact.new_fristdepartment, FilteredContact.new_fristdepartmentname, Filterednew_ecturerlanguages.new_languages, Filterednew_ecturerlanguages.new_languagesname, FilteredContact.new_inbirthdate, 
                         FilteredContact.new_inbirthdateutc, FilteredContact.new_lecturerflag, FilteredContact.new_linkedin, FilteredContact.new_nation, FilteredContact.new_nationality, FilteredContact.new_nationalityname, 
                         FilteredContact.new_nationname, FilteredContact.new_passport, FilteredContact.new_passportexpiredon, FilteredContact.new_passportexpiredonutc, FilteredContact.new_passportname, 
                         FilteredContact.new_professionalfees, FilteredContact.new_professionalfees_base, FilteredContact.new_residencelocation, FilteredContact.new_residencelocationname, FilteredContact.new_yearsofexperience, 
                         FilteredContact.ownerid, FilteredContact.owneriddsc, FilteredContact.owneridname, FilteredContact.owneridtype, FilteredContact.owneridyominame, FilteredContact.owningbusinessunit, 
                         FilteredContact.owningteam, FilteredContact.owninguser, FilteredContact.statecode, FilteredContact.statecodename, FilteredContact.statuscode, FilteredContact.statuscodename, FilteredContact.suffix, 
                         FilteredContact.telephone1, FilteredContact.telephone2, FilteredContact.telephone3
FROM            FilteredContact FULL OUTER JOIN
                         Filterednew_ecturerlanguages ON FilteredContact.contactid = Filterednew_ecturerlanguages.new_lecturername
WHERE        (FilteredContact.accountrolecode <> 2) AND (FilteredContact.new_firstspecialization IS NOT NULL) 
AND  ((Filterednew_ecturerlanguages.new_languages IS NOT NULL) AND (Filterednew_ecturerlanguages.new_languagesname IS NOT NULL))

union all

/*****
/***** Look for original specialization and sub language and sub nation *****/
SELECT        FilteredContact.accountid, FilteredContact.accountidname, FilteredContact.accountrolecode, FilteredContact.accountrolecodename, FilteredContact.address1_city, FilteredContact.address1_composite, 
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
                         FilteredContact.new_inbirthdate, FilteredContact.new_inbirthdateutc, FilteredContact.new_lecturerflag, FilteredContact.new_linkedin, Filterednew_nationalities.new_nation, Filterednew_nationalities.new_countryname, 
                         Filterednew_nationalities.new_countrynamename, Filterednew_nationalities.new_nationname, FilteredContact.new_passport, FilteredContact.new_passportexpiredon, FilteredContact.new_passportexpiredonutc, 
                         FilteredContact.new_passportname, FilteredContact.new_professionalfees, FilteredContact.new_professionalfees_base, FilteredContact.new_residencelocation, FilteredContact.new_residencelocationname, 
                         FilteredContact.new_yearsofexperience, FilteredContact.ownerid, FilteredContact.owneriddsc, FilteredContact.owneridname, FilteredContact.owneridtype, FilteredContact.owneridyominame, 
                         FilteredContact.owningbusinessunit, FilteredContact.owningteam, FilteredContact.owninguser, FilteredContact.statecode, FilteredContact.statecodename, FilteredContact.statuscode, 
                         FilteredContact.statuscodename, FilteredContact.suffix, FilteredContact.telephone1, FilteredContact.telephone2, FilteredContact.telephone3
FROM            FilteredContact RIGHT OUTER JOIN
                         Filterednew_nationalities ON FilteredContact.contactid = Filterednew_nationalities.new_contactname FULL OUTER JOIN
                         Filterednew_ecturerlanguages ON FilteredContact.contactid = Filterednew_ecturerlanguages.new_lecturername
WHERE        (FilteredContact.accountrolecode <> 2) AND (FilteredContact.new_firstspecialization IS NOT NULL) AND (FilteredContact.new_firstspecializationname = N'محلل نظم') AND 
                         (Filterednew_ecturerlanguages.new_languages IS NOT NULL) AND (Filterednew_ecturerlanguages.new_languagesname IS NOT NULL)AND
						 (Filterednew_nationalities.new_countryname IS NOT NULL) AND (Filterednew_nationalities.new_countrynamename IS NOT NULL)
union all
*****/


/***** Look for sub specialization and original  language and original nation *****/
SELECT        FilteredContact.accountid, FilteredContact.accountidname, FilteredContact.accountrolecode, FilteredContact.accountrolecodename, FilteredContact.address1_city, FilteredContact.address1_composite, 
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
                         FilteredContact.new_nationname, FilteredContact.new_passport, FilteredContact.new_passportexpiredon, 
                         FilteredContact.new_passportexpiredonutc, FilteredContact.new_passportname, FilteredContact.new_professionalfees, FilteredContact.new_professionalfees_base, FilteredContact.new_residencelocation, 
                         FilteredContact.new_residencelocationname, FilteredContact.new_yearsofexperience, FilteredContact.ownerid, FilteredContact.owneriddsc, FilteredContact.owneridname, FilteredContact.owneridtype, 
                         FilteredContact.owneridyominame, FilteredContact.owningbusinessunit, FilteredContact.owningteam, FilteredContact.owninguser, FilteredContact.statecode, FilteredContact.statecodename, 
                         FilteredContact.statuscode, FilteredContact.statuscodename, FilteredContact.suffix, FilteredContact.telephone1, FilteredContact.telephone2, FilteredContact.telephone3
FROM            FilteredContact right OUTER JOIN
                         Filterednew_specializations ON FilteredContact.contactid = Filterednew_specializations.new_lecturername
WHERE        (FilteredContact.accountrolecode <> 2) AND (FilteredContact.new_firstspecialization IS NOT NULL) 

union all

/*****
/***** Look for sub specialization and original  language and sub nation *****/

SELECT        FilteredContact.accountid, FilteredContact.accountidname, FilteredContact.accountrolecode, FilteredContact.accountrolecodename, FilteredContact.address1_city, FilteredContact.address1_composite, 
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
                         FilteredContact.new_inbirthdateutc, FilteredContact.new_lecturerflag, FilteredContact.new_linkedin, Filterednew_nationalities.new_nation, Filterednew_nationalities.new_countryname, 
                         Filterednew_nationalities.new_countrynamename, Filterednew_nationalities.new_nationname, FilteredContact.new_passport, FilteredContact.new_passportexpiredon, FilteredContact.new_passportexpiredonutc, FilteredContact.new_passportname, 
                         FilteredContact.new_professionalfees, FilteredContact.new_professionalfees_base, FilteredContact.new_residencelocation, FilteredContact.new_residencelocationname, FilteredContact.new_yearsofexperience, 
                         FilteredContact.ownerid, FilteredContact.owneriddsc, FilteredContact.owneridname, FilteredContact.owneridtype, FilteredContact.owneridyominame, FilteredContact.owningbusinessunit, 
                         FilteredContact.owningteam, FilteredContact.owninguser, FilteredContact.statecode, FilteredContact.statecodename, FilteredContact.statuscode, FilteredContact.statuscodename, FilteredContact.suffix, 
                         FilteredContact.telephone1, FilteredContact.telephone2, FilteredContact.telephone3
FROM            FilteredContact RIGHT OUTER JOIN
                         Filterednew_nationalities ON FilteredContact.contactid = Filterednew_nationalities.new_contactname RIGHT OUTER JOIN
                         Filterednew_specializations ON FilteredContact.contactid = Filterednew_specializations.new_lecturername
WHERE        (FilteredContact.accountrolecode <> 2) AND (FilteredContact.new_firstspecialization IS NOT NULL) AND
						 (Filterednew_nationalities.new_countryname IS NOT NULL) AND (Filterednew_nationalities.new_countrynamename IS NOT NULL)


union all
****/

/***** Look for sub specialization and sub  language and original nation *****/
SELECT        FilteredContact.accountid, FilteredContact.accountidname, FilteredContact.accountrolecode, FilteredContact.accountrolecodename, FilteredContact.address1_city, FilteredContact.address1_composite, 
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
                         FilteredContact.new_fristdepartment, FilteredContact.new_fristdepartmentname, Filterednew_ecturerlanguages.new_languages, Filterednew_ecturerlanguages.new_languagesname, FilteredContact.new_inbirthdate, 
                         FilteredContact.new_inbirthdateutc, FilteredContact.new_lecturerflag, FilteredContact.new_linkedin, FilteredContact.new_nation, FilteredContact.new_nationality, FilteredContact.new_nationalityname, 
                         FilteredContact.new_nationname, FilteredContact.new_passport, FilteredContact.new_passportexpiredon, FilteredContact.new_passportexpiredonutc, FilteredContact.new_passportname, 
                         FilteredContact.new_professionalfees, FilteredContact.new_professionalfees_base, FilteredContact.new_residencelocation, FilteredContact.new_residencelocationname, FilteredContact.new_yearsofexperience, 
                         FilteredContact.ownerid, FilteredContact.owneriddsc, FilteredContact.owneridname, FilteredContact.owneridtype, FilteredContact.owneridyominame, FilteredContact.owningbusinessunit, 
                         FilteredContact.owningteam, FilteredContact.owninguser, FilteredContact.statecode, FilteredContact.statecodename, FilteredContact.statuscode, FilteredContact.statuscodename, FilteredContact.suffix, 
                         FilteredContact.telephone1, FilteredContact.telephone2, FilteredContact.telephone3
FROM            FilteredContact RIGHT OUTER JOIN
                         Filterednew_specializations ON FilteredContact.contactid = Filterednew_specializations.new_lecturername RIGHT OUTER JOIN
                         Filterednew_ecturerlanguages ON FilteredContact.contactid = Filterednew_ecturerlanguages.new_lecturername
WHERE        (FilteredContact.accountrolecode <> 2) AND (FilteredContact.new_firstspecialization IS NOT NULL) 
AND  ((Filterednew_ecturerlanguages.new_languages IS NOT NULL) AND (Filterednew_ecturerlanguages.new_languagesname IS NOT NULL))


/*****
union all
/***** Look for sub specialization and sub  language and sub nation *****/
SELECT        FilteredContact.accountid, FilteredContact.accountidname, FilteredContact.accountrolecode, FilteredContact.accountrolecodename, FilteredContact.address1_city, FilteredContact.address1_composite, 
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
                         FilteredContact.new_inbirthdate, FilteredContact.new_inbirthdateutc, FilteredContact.new_lecturerflag, FilteredContact.new_linkedin, Filterednew_nationalities.new_nation, Filterednew_nationalities.new_countryname, 
                         Filterednew_nationalities.new_countrynamename, Filterednew_nationalities.new_nationname, FilteredContact.new_passport, FilteredContact.new_passportexpiredon, FilteredContact.new_passportexpiredonutc, 
                         FilteredContact.new_passportname, FilteredContact.new_professionalfees, FilteredContact.new_professionalfees_base, FilteredContact.new_residencelocation, FilteredContact.new_residencelocationname, 
                         FilteredContact.new_yearsofexperience, FilteredContact.ownerid, FilteredContact.owneriddsc, FilteredContact.owneridname, FilteredContact.owneridtype, FilteredContact.owneridyominame, 
                         FilteredContact.owningbusinessunit, FilteredContact.owningteam, FilteredContact.owninguser, FilteredContact.statecode, FilteredContact.statecodename, FilteredContact.statuscode, 
                         FilteredContact.statuscodename, FilteredContact.suffix, FilteredContact.telephone1, FilteredContact.telephone2, FilteredContact.telephone3
FROM            FilteredContact RIGHT OUTER JOIN
                         Filterednew_nationalities ON FilteredContact.contactid = Filterednew_nationalities.new_contactname RIGHT OUTER JOIN
                         Filterednew_specializations ON FilteredContact.contactid = Filterednew_specializations.new_lecturername RIGHT OUTER JOIN
                         Filterednew_ecturerlanguages ON FilteredContact.contactid = Filterednew_ecturerlanguages.new_lecturername
WHERE        (FilteredContact.accountrolecode <> 2) AND (FilteredContact.new_firstspecialization IS NOT NULL) AND (Filterednew_specializations.new_specialtyarname = N'محلل نظم') AND 
                         (Filterednew_ecturerlanguages.new_languages IS NOT NULL) AND (Filterednew_ecturerlanguages.new_languagesname IS NOT NULL) AND
						 (Filterednew_nationalities.new_countryname IS NOT NULL) AND (Filterednew_nationalities.new_countrynamename IS NOT NULL)


****/
/***** Look for original specialization and original language and original nation *****/
SELECT DISTINCT 
FilteredContact.contactid,'PrimarySP' AS SP, 'PrimaryLN' AS LN, FilteredContact.new_firstspecialization, FilteredContact.new_firstspecializationname, FilteredContact.new_fristlanguage, FilteredContact.new_fristlanguagename
FROM            FilteredContact INNER JOIN
                         FilteredAccount ON FilteredContact.accountid = FilteredAccount.accountid
WHERE        (FilteredContact.accountrolecode <> 2) AND (FilteredContact.new_firstspecialization IS NOT NULL)
UNION ALL
/***** Look for original specialization and sub language and original nation *****/
SELECT DISTINCT 
FilteredContact.contactid, 'PrimarySP' AS SP, 'SubLN' AS LN, FilteredContact.new_firstspecialization, FilteredContact.new_firstspecializationname, Filterednew_ecturerlanguages.new_languages, Filterednew_ecturerlanguages.new_languagesname
FROM            FilteredContact INNER JOIN
                         FilteredAccount ON FilteredContact.accountid = FilteredAccount.accountid FULL OUTER JOIN
                         Filterednew_ecturerlanguages ON FilteredContact.contactid = Filterednew_ecturerlanguages.new_lecturername
WHERE        (FilteredContact.accountrolecode <> 2) AND (FilteredContact.new_firstspecialization IS NOT NULL) AND (Filterednew_ecturerlanguages.new_languages IS NOT NULL) AND 
                         (Filterednew_ecturerlanguages.new_languagesname IS NOT NULL)
UNION ALL
/***** Look for sub specialization and original  language and original nation *****/
SELECT DISTINCT 
 FilteredContact.contactid, 'SubSP' AS SP, 'PrimaryLN' AS LN, Filterednew_specializations.new_specialtyar, Filterednew_specializations.new_specialtyarname, FilteredContact.new_fristlanguage, FilteredContact.new_fristlanguagename
FROM            FilteredContact INNER JOIN
                         FilteredAccount ON FilteredContact.accountid = FilteredAccount.accountid RIGHT OUTER JOIN
                         Filterednew_specializations ON FilteredContact.contactid = Filterednew_specializations.new_lecturername
WHERE        (FilteredContact.accountrolecode <> 2) AND (Filterednew_specializations.new_specialtyar IS NOT NULL)
UNION ALL
/***** Look for sub specialization and sub  language and original nation *****/
SELECT DISTINCT 
 FilteredContact.contactid, 'SubSP' AS SP, 'SubLN' AS LN, Filterednew_specializations.new_specialtyar, Filterednew_specializations.new_specialtyarname, Filterednew_ecturerlanguages.new_languages, Filterednew_ecturerlanguages.new_languagesname
FROM            FilteredContact INNER JOIN
                         FilteredAccount ON FilteredContact.accountid = FilteredAccount.accountid RIGHT OUTER JOIN
                         Filterednew_specializations ON FilteredContact.contactid = Filterednew_specializations.new_lecturername RIGHT OUTER JOIN
                         Filterednew_ecturerlanguages ON FilteredContact.contactid = Filterednew_ecturerlanguages.new_lecturername
WHERE        (FilteredContact.accountrolecode <> 2) AND (Filterednew_specializations.new_specialtyar IS NOT NULL) AND (Filterednew_ecturerlanguages.new_languages IS NOT NULL) AND 
                         (Filterednew_ecturerlanguages.new_languagesname IS NOT NULL)
UNION ALL
/***** Look for certification specialization and original language and original nation *****/
SELECT DISTINCT 
 FilteredContact.contactid, 'CerSP' AS SP, 'PrimaryLN' AS LN, Filterednew_uniandprofdgre.new_specialization,Filterednew_uniandprofdgre.new_specializationname, FilteredContact.new_fristlanguage, FilteredContact.new_fristlanguagename
FROM            FilteredContact INNER JOIN
                         FilteredAccount ON FilteredContact.accountid = FilteredAccount.accountid RIGHT OUTER JOIN
                         Filterednew_uniandprofdgre ON FilteredContact.contactid = Filterednew_uniandprofdgre.new_lecturername
WHERE        (FilteredContact.accountrolecode <> 2) AND (Filterednew_uniandprofdgre.new_specialization IS NOT NULL)
UNION ALL
/***** Look for certification specialization and sub language and original nation *****/
SELECT DISTINCT 
 FilteredContact.contactid, 'CerSP' AS SP, 'SubLN' AS LN, Filterednew_uniandprofdgre.new_specialization, Filterednew_uniandprofdgre.new_specializationname, Filterednew_ecturerlanguages.new_languages, 
                         Filterednew_ecturerlanguages.new_languagesname
FROM            FilteredContact INNER JOIN
                         FilteredAccount ON FilteredContact.accountid = FilteredAccount.accountid RIGHT OUTER JOIN
                         Filterednew_uniandprofdgre ON FilteredContact.contactid = Filterednew_uniandprofdgre.new_lecturername RIGHT OUTER JOIN
                         Filterednew_ecturerlanguages ON FilteredContact.contactid = Filterednew_ecturerlanguages.new_lecturername
WHERE        (FilteredContact.accountrolecode <> 2) AND (Filterednew_ecturerlanguages.new_languages IS NOT NULL) AND (Filterednew_ecturerlanguages.new_languagesname IS NOT NULL) AND 
                         (Filterednew_uniandprofdgre.new_specialization IS NOT NULL)
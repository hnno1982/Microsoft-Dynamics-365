--ÚÏÏ ÇáÃİÑÇÏ ÈÇáäÓÈÉ ááÅÏÇÑÇÊ
SELECT          new_departmentsid, new_departmentdes,
(SELECT         ISNULL(count (condep.statecode), 0 )
FROM            FilteredContact condep
WHERE           (((condep.new_fristdepartment = dep.new_departmentsid) OR
                         (condep.new_seconddepartment = dep.new_departmentsid) OR
                         (condep.new_thirddepartment = dep.new_departmentsid)) AND (statecode = 0))) CountCont

FROM            Filterednew_departments dep



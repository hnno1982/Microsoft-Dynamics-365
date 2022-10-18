select AttributeValue, Value
from StringMap
where ObjectTypeCode = 10036
and AttributeName = 'statuscode'and Value NOT IN ('Renewed', 'Hold', 'Customer does not want to renew')




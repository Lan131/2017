


select *
from XBITBLSV.RptBBTScrcrdTechMth
WHERE HRNUM = '1533659'
AND CurrScrd = 1

select *
from XBITBLSV.DimEmployee
WHERE HRNUM = '1533659'


/* Tables
XBITBLSV.FctSysTechScrcrdMth
XBITBLSV.FctSupSysTechScrcrdMth */


SELECT TOP 10  *
FROM XBITBLSV.RptBBTScrcrdTechMth

WHERE CurrScrd = 1 AND HRNum = '1511686'

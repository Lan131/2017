--view data
SELECT TOP 10  *
FROM XBITBLSV.FctSysTechScrcrdConslMth AS A ;
--No duplicated rows
SELECT DISTINCT *
FROM XBITBLSV.FctSysTechScrcrdConslMth AS A 
MINUS 
SELECT  *
FROM XBITBLSV.FctSysTechScrcrdConslMth AS A ;
--Line escalation check
SELECT FctSysTechScrcrdMth.TeamLEComplByTech+
FctSysTechScrcrdMth.IndLECnt AS SM
FROM XBITBLSV.FctSysTechScrcrdConslMth
WHERE SM<FctSysTechScrcrdMth.TotLEWrkOrd;
--check KMATier precentiles
SELECT CAST(COUNT(KMATier)  AS DECIMAL(12,2))
/
(SELECT COUNT(KMATier)
FROM XBITBLSV.FctSysTechScrcrdConslMth
HAVING COUNT(KMATier) >0)
, KMATier
FROM XBITBLSV.FctSysTechScrcrdConslMth
GROUP BY KMATier  
HAVING COUNT(KMATier) >0 
ORDER BY KMATier ;

--check KMATier3Month precentiles
SELECT CAST(COUNT(KMATier3Mnth)  AS DECIMAL(12,2))
/
(SELECT COUNT(KMATier3Mnth)
FROM XBITBLSV.FctSysTechScrcrdConslMth
HAVING COUNT(KMATier3Mnth) >0)
, KMATier3Mnth
FROM XBITBLSV.FctSysTechScrcrdConslMth
GROUP BY KMATier3Mnth  
HAVING COUNT(KMATier3Mnth) >0 
ORDER BY KMATier3Mnth ;

--check KMATierYTD precentiles
SELECT CAST(COUNT(KMATierYTD)  AS DECIMAL(12,2))
/
(SELECT COUNT(KMATierYTD)
FROM XBITBLSV.FctSysTechScrcrdConslMth
HAVING COUNT(KMATierYTD) >0)
, KMATierYTD
FROM XBITBLSV.FctSysTechScrcrdConslMth
GROUP BY KMATierYTD  
HAVING COUNT(KMATierYTD) >0 
ORDER BY KMATierYTD ;
--Check roll ups
SELECT AVG(A.TotNdeHlthScr),AVG(A.TotATTRScr),AVG(A.TotLERptRateScr) ,B.Lvl1MgmtId
FROM XBITBLSV.FctSysTechScrcrdConslMth AS A INNER JOIN XBITBLSV.DimEmployee AS B
ON A.DimEmployeeSk=B.DimEmployeeSk
GROUP BY B.Lvl1MgmtId 
MINUS
SELECT B.TotGrnNdScr,B.TotATTRScr,B.TotReptRateScr,B.SupHrNum FROM XBITBLSV.FctSupSysTechScrcrdConslMth AS B;

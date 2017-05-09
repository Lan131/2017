
SELECT
Emp.HrNum AS H1, EMP.KMACntctCtrDesc AS KMA,--need KMA to get ranks later,
SUM(RwrkResPosCnt) RwrkResPosCnt,
SUM(RwrkResTCCnt) RwrkResTCCnt,
SUM(RwrkCBPosCnt) RwrkCBPosCnt,
SUM(RwrkCBTCCnt) RwrkCBTCCnt,
SUM(ResPos30DayRwrkCnt) ResPos30DayRwrkCnt,
SUM(ResTC30DayRwrkCnt) ResTC30DayRwrkCnt,
SUM(CBPos30DayRwrkCnt) CBPos30DayRwrkCnt,
SUM(CBTC30DayRwrkCnt) CBTC30DayRwrkCnt,
--SUM(VOCQ2YesCnt) VOCQ2YesCnt,
--SUM(VOCQ2NoCnt) VOCQ2NoCnt,
--SUM(TotalOTAYesCnt) TotalOTAYesCnt,
--SUM(TotalOTANoCnt) TotalOTANoCnt,
(SUM(TotalPnts)*5) Pnt_Mins,
SUM(job.PrdctivityMins) AS productive_minutes, --productivity
***
SUM(QuotaPts) Quota_Pts,
SUM(CASE WHEN WOJobResCd IN ('ND1','ND2','ND3','ND4','ND5', 'ND6', 'ND7') THEN 3 ELSE QuotaPts END) Quota_Pts_New,
SUM(QuotaMin) Quota_Mins,
SUM(CASE WHEN WOJobResCd IN ('ND1','ND2','ND3','ND4','ND5', 'ND6', 'ND7') THEN 15 ELSE QuotaMin END) Quota_Mins_New
FROM DLBIFO.FctWOJob WOJ
INNER JOIN  XBITBLSV.DimEmployee EMP ON (EMP.DimEmployeeSk = WOJ.WOJobTechDimEmployeeSk)
INNER JOIN XBITBLSV.FctBBTTechWOJobSumMth BBT ON (EMP.DimEmployeeSk = BBT.DimEmployeeSk) 
INNER JOIN XBITBLSV.FctBBTLbrTmMth AS job ON EMP.DimEmployeeSk=job.DimEmployeeSk AND  BBT.DimFsclMthSk=job.DimFsclMthSk
WHERE BBT.DimFsclMthSk BETWEEN 201701 AND 201703 AND job.DimFsclMthSk BETWEEN 201701 AND 201703
AND BBT.NewHireFl = 0
AND BBT.ScrcrdInd = 'BBT'
GROUP BY KMA,H1;

SELECT HrNum AS H2, 
SUM(QuotaPts) Quota_Pts,
SUM(CASE WHEN WOJobResCd IN ('ND1','ND2','ND3','ND4','ND5', 'ND6', 'ND7') THEN 3 ELSE QuotaPts END) Quota_Pts_New,
SUM(QuotaMin) Quota_Mins,
SUM(CASE WHEN WOJobResCd IN ('ND1','ND2','ND3','ND4','ND5', 'ND6', 'ND7') THEN 15 ELSE QuotaMin END) Quota_Mins_New
FROM DLBIFO.FctWOJob WOJ --getting from DLBIFO fct
JOIN XBITBLSV.DimEmployee EMP ON (EMP.DimEmployeeSk = WOJ.WOJobTechDimEmployeeSk)
JOIN XBITBLSV.DimWOJobStat STS ON (STS.DimWOJobStatSk = WOJ.DimWOJobStatSk)
JOIN XBITBLSV.DimWOJobResCd RES ON (RES.DimWOJobResCdSk = WOJ.ResCd1DimWOJobResCdSk)
WHERE WOJobCmpltDimFsclMthSk BETWEEN 201701 AND 201703
AND WOJobStatDesc = 'Completed'
AND TrkRollFl = 1
AND HRNUM IN (
SELECT HRNum
FROM XBITBLSV.RptBBTScrcrdTechMth
WHERE ThruFsclMthSk = 201703
AND MtrcTmPeriod = 'YTD';

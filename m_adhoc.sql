SELECT C.KMADesc AS KMA,A.HrNum,NULL AS ProdAct, NULL AS OTAAct 
,RANK() OVER (PARTITION BY KMA ORDER BY A.ResPosRwk+A.ResPosCnt DESC) AS ResPosRank,A.ResPosRwk+A.ResPosCnt


,A.ResPosRwk,A.ResPosCnt,A.ResTCCnt,
A.ResTCRwk,A.CBPosCnt,A.CBPosRwk,A.CBTCCnt,A.CBTCRwk,A.Quota_Mins Old_Q_min,A.Quota_Mins_New New_Q_min
,B.Prod_min Prod_Min,
(1.0000*Old_Q_min)/(1.0000*Prod_Min) OLD_PRODUCTIVITY,
(1.0000*New_Q_min)/(1.0000*Prod_Min) NEW_PRODUCTIVITY
,C.TechOTATotalPnts

FROM DLBIFO.ML_RWK_CNT AS A 
INNER JOIN

( SELECT SUM(job.PrdctivityMins) AS Prod_min,EMP.HrNum FROM XBITBLSV.FctBBTLbrTmMth AS job 
 INNER JOIN  XBITBLSV.DimEmployee EMP ON EMP.DimEmployeeSk=job.DimEmployeeSk
WHERE job.DimFsclMthSk BETWEEN 201701 AND 201703
GROUP BY EMP.HrNum) AS B ON A.HrNum=B.HrNum 

INNER JOIN
 XBITBLSV.RptBBTScrcrdTechMth AS C ON B.HrNum=C.HrNum
 WHERE C.MtrcTmPeriod='YTD' AND ThruFsclMthSk=201703


--DROP TABLE DLBIFO.mcl_adhoc;
/*CREATE MULTISET TABLE DLBIFO.mcl_adhoc AS
(		
		SELECT 
		C.KMADesc AS KMA,
		NULL AS ThruFsclMth, --placeholder
		A.HrNum,
		NULL AS ProdAct, --placeholder
		NULL AS OTAAct ,--placeholder
		RANK() OVER (PARTITION BY KMA ORDER BY A.ResPosRwk+A.ResPosCnt DESC) AS ResPosRank,
		RANK() OVER (PARTITION BY KMA ORDER BY A.ResTCRwk+A.ResTCCnt DESC) AS ResTCRank,
		RANK() OVER (PARTITION BY KMA ORDER BY A.CBPosRwk+A.CBPosCnt DESC) AS CBPosRank,
		RANK() OVER (PARTITION BY KMA ORDER BY A.CBTCRwk+A.CBTCCnt DESC) AS CBTCRank,
		RANK() OVER (PARTITION BY KMA ORDER BY (1.0000*Old_Q_min)/(1.0000*Prod_Min) DESC) AS Old_Prod_Rank,
		RANK() OVER (PARTITION BY KMA ORDER BY (1.0000*New_Q_min)/(1.0000*Prod_Min) DESC) AS New_Prod_Rank,

		A.ResPosRwk,A.ResPosCnt,A.ResTCCnt,
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
		 WHERE C.MtrcTmPeriod='YTD' AND ThruFsclMthSk=201703) WITH DATA;*/
		 
	 --SELECT * FROM  DLBIFO.mcl_adhoc;
		 
	 SELECT
	 'Mar-17' ThruFsclMth,
	 A.HrNum,
	 ProdAct,
	 OTAAct,
	 ResPosRank,
	 B2.mx AS ResPosTotalTech,
	 ResTCRank,
     B1.mx AS ResTCTotalTech ,
	 CBPosRank,
	 B3.mx AS CBPosTotalTech,
	 CBTCRank,
	 B4.mx AS CBTCToalTech,
	 Old_Prod_Rank,
	 B5.mx AS Old_Prod_Total_tech,
	 NULL AS OTARank,
	 NULL AS OTATot	 
	--New_Prod_Rank,
	 --B6.mx AS New_Prod_Total_tech
	 FROM DLBIFO.mcl_adhoc AS A 
	 
	 LEFT JOIN 
	 (SELECT MAX(ResTcRank) AS mx,KMA FROM DLBIFO.mcl_adhoc GROUP BY KMA) AS B1
	 ON A.KMA=B1.KMA
	 
     LEFT JOIN 
	 (SELECT MAX(ResPosRank) AS mx,KMA FROM DLBIFO.mcl_adhoc GROUP BY KMA) AS B2
	 ON A.KMA=B2.KMA
	 
	 LEFT JOIN 
	 (SELECT MAX(CBPosRank) AS mx,KMA FROM DLBIFO.mcl_adhoc GROUP BY KMA) AS B3
	 ON A.KMA=B3.KMA
	 
	  LEFT JOIN 
	 (SELECT MAX(CBTCRank) AS mx,KMA FROM DLBIFO.mcl_adhoc GROUP BY KMA) AS B4
	 ON A.KMA=B4.KMA
	 
	  LEFT JOIN 
	 (SELECT MAX(Old_Prod_Rank) AS mx,KMA FROM DLBIFO.mcl_adhoc GROUP BY KMA) AS B5
	 ON A.KMA=B5.KMA
	 
	 LEFT JOIN 
	 (SELECT MAX(New_Prod_Rank) AS mx,KMA FROM DLBIFO.mcl_adhoc GROUP BY KMA) AS B6
	 ON A.KMA=B6.KMA
	 
	 INNER JOIN
	 
	 
		 (
            SELECT EP.HrNum, 
			SUM(CASE WHEN WOJobClassDesc IN ('New Connect', 'Restart Service', 'Service Change') AND CBFl = 0 AND HOS.DwellTypeLocClassType <> 'Resi Bulk Master' AND ACT.AcctTypeEntCd <> 'CBBULK' THEN 1 ELSE 0 end) ResPosCnt,
			SUM(CASE WHEN WOJobClassDesc IN ('New Connect', 'Restart Service', 'Service Change') AND CBFl = 0 AND HOS.DwellTypeLocClassType <> 'Resi Bulk Master' AND ACT.AcctTypeEntCd <> 'CBBULK'  AND RWK.Day30Fl = 1 THEN 1 ELSE 0 end) ResPosRwk,
			SUM(CASE WHEN WOJobClassDesc IN ('Trouble Call') AND CBFl = 0 AND HOS.DwellTypeLocClassType <> 'Resi Bulk Master' AND ACT.AcctTypeEntCd <> 'CBBULK' THEN 1 ELSE 0 end) ResTCCnt,
			SUM(CASE WHEN WOJobClassDesc IN ('Trouble Call') AND CBFl = 0 AND HOS.DwellTypeLocClassType <> 'Resi Bulk Master' AND ACT.AcctTypeEntCd <> 'CBBULK'  AND RWK.Day30Fl = 1 THEN 1 ELSE 0 end) ResTCRwk,
			SUM(CASE WHEN WOJobClassDesc IN ('New Connect', 'Restart Service', 'Service Change') AND CBFl = 1 AND HOS.DwellTypeLocClassType <> 'Resi Bulk Master' AND ACT.AcctTypeEntCd <> 'CBBULK' THEN 1 ELSE 0 end) CBPosCnt,
			SUM(CASE WHEN WOJobClassDesc IN ('New Connect', 'Restart Service', 'Service Change') AND CBFl = 1 AND HOS.DwellTypeLocClassType <> 'Resi Bulk Master' AND ACT.AcctTypeEntCd <> 'CBBULK'  AND RWK.Day30Fl = 1 THEN 1 ELSE 0 end) CBPosRwk,
			SUM(CASE WHEN WOJobClassDesc IN ('Trouble Call') AND CBFl = 1 AND HOS.DwellTypeLocClassType <> 'Resi Bulk Master' AND ACT.AcctTypeEntCd <> 'CBBULK' THEN 1 ELSE 0 end) CBTCCnt,
			SUM(CASE WHEN WOJobClassDesc IN ('Trouble Call') AND CBFl = 1 AND HOS.DwellTypeLocClassType <> 'Resi Bulk Master' AND ACT.AcctTypeEntCd <> 'CBBULK'  AND RWK.Day30Fl = 1 THEN 1 ELSE 0 end) CBTCRwk,

			SUM(QuotaPts) Quota_Pts,
			SUM(CASE WHEN WOJobResCd IN ('ND1','ND2','ND3','ND4','ND5', 'ND6', 'ND7') THEN 3 ELSE QuotaPts END) Quota_Pts_New,
			SUM(QuotaMin) Quota_Mins,
			SUM(CASE WHEN WOJobResCd IN ('ND1','ND2','ND3','ND4','ND5', 'ND6', 'ND7') THEN 15 ELSE QuotaMin END) Quota_Mins_New
			FROM XBITBLSV.FctWOJob WOJ
			JOIN XBITBLSV.DimDate TIM ON (TIM.DimDateSk = WOJ.WOJobCmpltDimDtSk)
			JOIN XBITBLSV.DimEmployeeCV EP ON (EP.DimEmployeeSk = WOJ.WOJobTechDimEmployeeSk)
			JOIN XBITBLSV.DimEmployeeCV EMP ON (EMP.DimEmployeeSk = WOJ.WOJobTechDimEmployeeSk)
			JOIN XBITBLSV.DimWOJobStat STS ON (STS.DimWOJobStatSk = WOJ.DimWOJobStatSk)
			JOIN XBITBLSV.DimWOJobClass CLS ON (CLS.DimWOJobClassSk = WOJ.DimWOJobClassSk)
			JOIN XBITBLSV.DimWOJobResCd RES ON (RES.DimWOJobResCdSk = WOJ.ResCd1DimWOJobResCdSk)
			JOIN    XBITblsV.DimAcct    ATC ON     (ATC.DimAcctSk = WOJ.DimAcctSk)
			JOIN XBITBLSV.DimRwrkRng RWK ON (RWK.DimRwrkRngSk = WOJ.RwrkCmpltSubDimRwrkRngSk)
			JOIN    XBITblsV.DimAcctType    ACT ON     (ACT.DimAcctTypeSk = ATC.DimAcctTypeSk)
			JOIN    XBITblsV.DimSVCUnit    HOS ON     (HOS.DimSvcUnitSk = WOJ.DimSvcUnitSk)
			WHERE WOJobCmpltDimFsclMthSk BETWEEN 201701 AND 201703
			AND WOJobStatDesc = 'Completed'
			AND TrkRollFl = 1
			AND TIM.CalDt > EMP.EffectiveHireDt + 30

			AND EP.HRNUM IN (
			SELECT HRNum
			FROM XBITBLSV.RptBBTScrcrdTechMth
			WHERE ThruFsclMthSk = 201703
			AND MtrcTmPeriod = 'YTD')

			AND EP.TitlNm IN (SELECT TechTitle FROM  XBIMDMV.MdmTechOpsScrcdTitle)
			GROUP BY 1		 
		 ) AS CTS ON Cts.HrNum=A.HrNum
		 
	 
	 ORDER BY A.HrNum

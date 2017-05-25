		
DROP TABLE DLBIFO.ML_BBT ;
CREATE MULTISET TABLE DLBIFO.ML_BBT AS (SELECT TOP 5 * FROM 
XBIWrkv.LdSpFctBBTTechWOJobSumMth001) WITH DATA;

DELETE FROM DLBIFO.ML_BBT;


DROP TABLE DLBIFO.FctBBTTechWOJobSumMth ;
CREATE MULTISET TABLE DLBIFO.FctBBTTechWOJobSumMth AS (SELECT TOP 5 * FROM 
XBITblsv.FctBBTTechWOJobSumMth) WITH DATA;

DELETE FROM DLBIFO.FctBBTTechWOJobSumMth;
SELECT * FROM  DLBIFO.FctBBTTechWOJobSumMth;


INSERT INTO  DLBIFO.ML_BBT
	 (
		DimFsclMthSk,
		HrNum,
		AsscId,  --006
		DimEmployeeSk,
		NewHireFl,
		ScrcrdInd,
		DimMgmtAreaSk,
		ConnCnt,
		RwrkConnCnt,
		ConnPnts,
		ConnMins,
		ConnLbrMins,
		ConnEQADayofRunNeeded,
		ConnEQADayofRunTested,
		ConnEQADayofRunScr,
		ConnEQADayofRunWOJobCnt,
		ConnEQADayAfterPassNeeded,
		ConnEQADayAfterPassInSpec,
		ConnEQADayAfterPassOutSpec,
		ConnEQADayAfterPassScr,
		ConnEQADayAfterPassWOJobCnt,
		ConnTQATotalScr,
		ConnTQATotalQCCnt,
		Conn30DayRwrkCnt,
		RBConn30DayRwrkCnt,
		RestCnt,
		RwrkRestCnt,
		RestPnts,
		RestMins,
		RestLbrMins,
		RestEQADayofRunNeeded,
		RestEQADayofRunTested,
		RestEQADayofRunScr,
		RestEQADayofRunWOJobCnt,
		RestEQADayAfterPassNeeded,
		RestEQADayAfterPassInSpec,
		RestEQADayAfterPassOutSpec,
		RestEQADayAfterPassScr,
		RestEQADayAfterPassWOJobCnt,
		RestTQATotalScr,
		RestTQATotalQCCnt,
		Rest30DayRwrkCnt,
		RBRest30DayRwrkCnt,
		SvcChgCnt,
		RwrkSvcChgCnt,
		SvcChgPnts,
		SvcChgMins,
		SvcChgLbrMins,
		SvcChgEQADayofRunNeeded,
		SvcChgEQADayofRunTested,
		SvcChgEQADayofRunScr,
		SvcChgEQADayofRunWOJobCnt,
		SvcChgEQADayAfterPassNeeded,
		SvcChgEQADayAfterPassInSpec,
		SvcChgEQADayAfterPassOutSpec,
		SvcChgEQADayAfterPassScr,
		SvcChgEQADayAfterPassWOJobCnt,
		SvcChgTQATotalScr,
		SvcChgTQATotalQCCnt,
		SvcChg30DayRwrkCnt,
		RBSrvcChg30DayRwrkCnt,
		RwrkCBPosCnt,
	  	RwrkResPosCnt,
	  	CBPos30DayRwrkCnt,
	  	ResPos30DayRwrkCnt,
	  	CBPosCnt,
	  	ResPosCnt,
		TCCnt,
		CBTCCnt,
		ResTCCnt,
		RwrkTCCnt,
		RwrkCBTCCnt,
		RwrkResTCCnt,
		TCPnts,
		TCMins,
		TCLbrMins,
		TCEQADayofRunNeeded,
		TCEQADayofRunTested,
		TCEQADayofRunScr,
		TCEQADayofRunWOJobCnt,
		TCEQADayAfterPassNeeded,
		TCEQADayAfterPassInSpec,
		TCEQADayAfterPassOutSpec,
		TCEQADayAfterPassScr,
		TCEQADayAfterPassWOJobCnt,
		TCTQATotalScr,
		TCTQATotalQCCnt,
		TC30DayRwrkCnt,
		RBTC30DayRwrkCnt,
		CBTC30DayRwrkCnt,
		ResTC30DayRwrkCnt,
		TCNotDoneCnt,
		DiscoCnt,
		RwrkDiscoCnt,
		DiscoPnts,
		DiscoMins,
		DiscoLbrMins,
		DiscoEQADayofRunNeeded,
		DiscoEQADayofRunTested,
		DiscoEQADayofRunScr,
		DiscoEQADayofRunWOJobCnt,
		DiscoEQADayAfterPassNeeded,
		DiscoEQADayAfterPassInSpec,
		DiscoEQADayAfterPassOutSpec,
		DiscoEQADayAfterPassScr,
		DiscoEQADayAfterPassWOJobCnt,
		DiscoTQATotalScr,
		DiscoTQATotalQCCnt,
		Disco30DayRwrkCnt,
		RBDisco30DayRwrkCnt,
		DiscoOnlyWOJobFl,
		SROCnt,
		SROPnts,
		SROMins,
		SROLbrMins,
		AvgFrstJobStrtTm,
		AvgLstJobStopTm,
		StartDimTmSk,
		StopDimTmSk,
		TotalOTAYesCnt,
		TotalOTANoCnt,
		TotalWOJobCnt,
		TotalPnts,
		TotalMins,
		TotalLbrMins,
		PosWrkCnt,
		VOCQ1YesCnt,
		VOCQ1NoCnt,
		VOCQ1UnanswrCnt,
		VOCQ2YesCnt,
		VOCQ2NoCnt,
		VOCQ2UnanswrCnt,
		VOCQ3YesCnt,
		VOCQ3NoCnt,
		VOCQ3UnanswrCnt,
		VOCQ4YesCnt,
		VOCQ4NoCnt,
		VOCQ4UnanswrCnt,
		RwrkConnRankAct,
		RwrkConnRankTotal,
		RwrkRestRankAct,
		RwrkRestRankTotal,
		RwrkSvcChgRankAct,
		RwrkSvcChgRankTotal,
		RwrkTCRankAct,
		RwrkTCRankTotal,
		EQADayofConnRankAct,
		EQADayofConnRankTotal,
		EQADayofRestRankAct,
		EQADayofRestRankTotal,
		EQADayofSvcChgRankAct,
		EQADayofSvcChgRankTotal,
		EQADayofTCRankAct,
		EQADayofTCRankTotal,
		EQADayAfterConnRankAct,
		EQADayAfterConnRankTotal,
		EQADayAfterRestRankAct,
		EQADayAfterRestRankTotal,
		EQADayAfterSvcChgRankAct,
		EQADayAfterSvcChgRankTotal,
		EQADayAfterTCRankAct,
		EQADayAfterTCRankTotal,
		OTARankAct,
		OTARankTotal,
		TQATotalScr,
		TQATotalCnt,
		TQARankAct,
		TQARankTotal,
		VOCRankAct,
		VOCRankTotal,
		Tot30DayRwrkCnt,
		VOCMinFl,
		TQAMinFl
  	  )       
SELECT 
		DmFsclMth.DimFsclMthSk,
		DmEmp.HrNum,
		DmEmp.AsscId,  --006
		-1 AS DimEmployeeSk,
		NewHireFl,                              
		NULL AS ScrcrdInd,
		--CASE WHEN MAX(ScrcrdInd) = 'BBT' THEN 'BBT' ELSE NULL END AS ScrcrdInd,
		-1 AS DimMgmtAreaSk,  
		SUM(ConnCnt),
		SUM(RwrkConnCnt),
		SUM(ConnPnts),
		SUM(ConnMins),
		SUM(ConnLbrMins),
		SUM(ConnEQADayofRunNeeded),
		SUM(ConnEQADayofRunTested),
		SUM(ConnEQADayofRunScr),
		SUM(ConnEQADayofRunWOJobCnt),
		SUM(ConnEQADayAfterPassNeeded),
		SUM(ConnEQADayAfterPassInSpec),
		SUM(ConnEQADayAfterPassOutSpec),
		SUM(ConnEQADayAfterPassScr),
		SUM(ConnEQADayAfterPassWOJobCnt),
		SUM(ConnTQATotalScr),
		SUM(ConnTQATotalQCCnt),
		SUM(Conn30DayRwrkCnt),
		SUM(RBConn30DayRwrkCnt),
		SUM(RestCnt),
		SUM(RwrkRestCnt),
		SUM(RestPnts),
		SUM(RestMins),
		SUM(RestLbrMins),
		SUM(RestEQADayofRunNeeded),
		SUM(RestEQADayofRunTested),
		SUM(RestEQADayofRunScr),
		SUM(RestEQADayofRunWOJobCnt),
		SUM(RestEQADayAfterPassNeeded),
		SUM(RestEQADayAfterPassInSpec),
		SUM(RestEQADayAfterPassOutSpec),
		SUM(RestEQADayAfterPassScr),
		SUM(RestEQADayAfterPassWOJobCnt),
		SUM(RestTQATotalScr),
		SUM(RestTQATotalQCCnt),
		SUM(Rest30DayRwrkCnt),
		SUM(RBRest30DayRwrkCnt),
		SUM(SvcChgCnt),
		SUM(RwrkSvcChgCnt),
		SUM(SvcChgPnts),
		SUM(SvcChgMins),
		SUM(SvcChgLbrMins),
		SUM(SvcChgEQADayofRunNeeded),
		SUM(SvcChgEQADayofRunTested),
		SUM(SvcChgEQADayofRunScr),
		SUM(SvcChgEQADayofRunWOJobCnt),
		SUM(SvcChgEQADayAfterPassNeeded),
		SUM(SvcChgEQADayAfterPassInSpec),
		SUM(SvcChgEQADayAfterPassOutSpec),
		SUM(SvcChgEQADayAfterPassScr),
		SUM(SvcChgEQADayAfterPassWOJobCnt),
		SUM(SvcChgTQATotalScr),
		SUM(SvcChgTQATotalQCCnt),
		SUM(SvcChg30DayRwrkCnt),
		SUM(RBSrvcChg30DayRwrkCnt),
		SUM(RwrkCBPosCnt),
	  	SUM(RwrkResPosCnt),
	  	SUM(CBPos30DayRwrkCnt),
	  	SUM(ResPos30DayRwrkCnt),
	  	SUM(CBPosCnt),
	  	SUM(ResPosCnt),
		SUM(TCCnt),
		SUM(CBTCCnt),
		SUM(ResTCCnt),
		SUM(RwrkTCCnt),
		SUM(RwrkCBTCCnt),
		SUM(RwrkResTCCnt),
		SUM(TCPnts),
		SUM(TCMins),
		SUM(TCLbrMins),
		SUM(TCEQADayofRunNeeded),
		SUM(TCEQADayofRunTested),
		SUM(TCEQADayofRunScr),
		SUM(TCEQADayofRunWOJobCnt),
		SUM(TCEQADayAfterPassNeeded),
		SUM(TCEQADayAfterPassInSpec),
		SUM(TCEQADayAfterPassOutSpec),
		SUM(TCEQADayAfterPassScr),
		SUM(TCEQADayAfterPassWOJobCnt),
		SUM(TCTQATotalScr),
		SUM(TCTQATotalQCCnt),
		SUM(TC30DayRwrkCnt),
		SUM(RBTC30DayRwrkCnt),
		SUM(CBTC30DayRwrkCnt),
		SUM(ResTC30DayRwrkCnt),
		SUM(TCNotDoneCnt),
		SUM(DiscoCnt),
		SUM(RwrkDiscoCnt),
		SUM(DiscoPnts),
		SUM(DiscoMins),
		SUM(DiscoLbrMins),
		SUM(DiscoEQADayofRunNeeded),
		SUM(DiscoEQADayofRunTested),
		SUM(DiscoEQADayofRunScr),
		SUM(DiscoEQADayofRunWOJobCnt),
		SUM(DiscoEQADayAfterPassNeeded),
		SUM(DiscoEQADayAfterPassInSpec),
		SUM(DiscoEQADayAfterPassOutSpec),
		SUM(DiscoEQADayAfterPassScr),
		SUM(DiscoEQADayAfterPassWOJobCnt),
		SUM(DiscoTQATotalScr),
		SUM(DiscoTQATotalQCCnt),
		SUM(Disco30DayRwrkCnt),
		SUM(RBDisco30DayRwrkCnt),
		0 AS DiscoOnlyWOJobFl , --moved to last step
		--CASE WHEN SUM (DiscoOnlyWOJobFl) > 0 THEN 1 ELSE 0 END DiscoOnlyWOJobFl,
		SUM(SROCnt),
		SUM(SROPnts),
		SUM(SROMins),
		SUM(SROLbrMins),
		CAST(AVG(( EXTRACT(MINUTE FROM FrstJobStrtTm) * 60 + EXTRACT(HOUR FROM FrstJobStrtTm) * 3600) MOD 86400) AS DECIMAL(10, 4)) * 
							                                                              INTERVAL '00:00:01.00' HOUR TO SECOND AS AvgFrstJobStrtTm,
		CAST(AVG(( EXTRACT(MINUTE FROM LstJobStopTm) * 60 + EXTRACT(HOUR FROM LstJobStopTm) * 3600) MOD 86400) AS DECIMAL(10, 4)) * 
							                                                              INTERVAL '00:00:01.00' HOUR TO SECOND AS  AvgLstJobStopTm,
		-1 AS StartDimTmSk,
		-1 AS StopDimTmSk,       
		SUM(TotalOTAYesCnt),
		SUM(TotalOTANoCnt),
		SUM(TotalWOJobCnt),
		SUM(CAST(TotalPnts AS DECIMAL(10,0)) ), 
		SUM(TotalMins),
		SUM(TotalLbrMins),
		SUM(PosWrkCnt),
		SUM(VOCQ1YesCnt),
		SUM(VOCQ1NoCnt),
		SUM(VOCQ1UnanswrCnt),
		SUM(VOCQ2YesCnt),
		SUM(VOCQ2NoCnt),
		SUM(VOCQ2UnanswrCnt),
		SUM(VOCQ3YesCnt),
		SUM(VOCQ3NoCnt),
		SUM(VOCQ3UnanswrCnt),
		SUM(VOCQ4YesCnt),
		SUM(VOCQ4NoCnt),
		SUM(VOCQ4UnanswrCnt),
		NULL AS RwrkConnRankAct,
		NULL AS RwrkConnRankTotal,
		NULL AS RwrkRestRankAct,
		NULL AS RwrkRestRankTotal,
		NULL AS RwrkSvcChgRankAct,
		NULL AS RwrkSvcChgRankTotal,
		NULL AS RwrkTCRankAct,
		NULL AS RwrkTCRankTotal,
		NULL AS EQADayofConnRankAct,
		NULL AS EQADayofConnRankTotal,
		NULL AS EQADayofRestRankAct,
		NULL AS EQADayofRestRankTotal,
		NULL AS EQADayofSvcChgRankAct,
		NULL AS EQADayofSvcChgRankTotal,
		NULL AS EQADayofTCRankAct,
		NULL AS EQADayofTCRankTotal,
		NULL AS EQADayAfterConnRankAct,
		NULL AS EQADayAfterConnRankTotal,
		NULL AS EQADayAfterRestRankAct,
		NULL AS EQADayAfterRestRankTotal,
		NULL AS EQADayAfterSvcChgRankAct,
		NULL AS EQADayAfterSvcChgRankTotal,
		NULL AS EQADayAfterTCRankAct,
		NULL AS EQADayAfterTCRankTotal,
		NULL AS OTARankAct,
		NULL AS OTARankTotal,
		SUM(COALESCE(ConnTQATotalScr,0) + COALESCE(RestTQATotalScr,0) + COALESCE(SvcChgTQATotalScr,0) + COALESCE(TCTQATotalScr,0) + COALESCE(DiscoTQATotalScr,0)) AS TQATotalScr,
		SUM(COALESCE(ConnTQATotalQCCnt,0) + COALESCE(RestTQATotalQCCnt,0) + COALESCE(SvcChgTQATotalQCCnt,0) + COALESCE(TCTQATotalQCCnt,0) + COALESCE(DiscoTQATotalQCCnt,0)) AS TQATotalCnt,
		NULL AS TQARankAct,
		NULL AS TQARankTotal,
		NULL AS VOCRankAct,
		NULL AS VOCRankTotal,
		SUM(Tot30DayRwrkCnt),
		0 VOCMinFl,
		0 TQAMinFl

	FROM XBITblsV.FctTechWOJobSumDly WOJb
	
	INNER JOIN XBITblsV.DimDate DmDt
		ON WOJb.CmpltDimDtSk = DmDt.DimDateSk
	
	INNER JOIN XBITblsV.DimFsclMth DmFsclMth 
		ON DmDt.FsclMthSeqNum = DmFsclMth.FsclMthSeqNum    
	
	INNER JOIN XBITblsV.DimEmployee DmEmp
		ON WOJb.DimEmployeeSk = DmEmp.DimEmployeeSk 
		
	
	WHERE DmDt.CalDt >= DATE'2017-03-22'    
	AND WOJb.DimEmployeeSk <> -1          
	AND DmEmp.ContrInd <> 'Yes'     -- only employee techs reported on BBT scorecard
	AND WOJb.NewHireFl = 0			-- new hires excluded from BBT scorecard
	AND WOJb.ScrcrdInd = 'BBT'      --consider only BBT work
	AND DmEmp.HrNum IS NOT NULL   --006

	
	GROUP BY DmFsclMth.DimFsclMthSk, DmEmp.HrNum,  DmEmp.AsscId, WOJb.NewHireFl  ;   --006
	
	
	
	
	
	
	
	SELECT *
						FROM XBITBLSV.FctTechWOJobSumMth LBR
						JOIN XBITBLSV.DimEmployeeCV EP ON (EP.DimEmployeeSk = LBR.DimEmployeeSk)
						WHERE HRNUM = '1534371'
						AND DimFsclMthSk = 201703;

						SELECT *
						FROM XBITBLSV.FctBBTTechWOJobSumMth LBR
						JOIN XBITBLSV.DimEmployeeCV EP ON (EP.DimEmployeeSk = LBR.DimEmployeeSk)
						WHERE HRNUM = '1534371'
						AND DimFsclMthSk = 201703;
						
CALL DLBIFO.ML_SpFctBBTTechWOJobSumMth()	;			


SELECT *
						FROM XBITBLSV.FctTechWOJobSumMth LBR
						JOIN XBITBLSV.DimEmployeeCV EP ON (EP.DimEmployeeSk = LBR.DimEmployeeSk)
						WHERE HRNUM = '1534371'
						AND DimFsclMthSk = 201703;

						SELECT *
						FROM DLBIFO.FctBBTTechWOJobSumMth LBR
						JOIN XBITBLSV.DimEmployeeCV EP ON (EP.DimEmployeeSk = LBR.DimEmployeeSk)
						WHERE HRNUM = '1534371'
						AND DimFsclMthSk = 201703;
						
						
						
						
						
						
						
						
						
REPLACE	PROCEDURE DLBIFO.ML_SpFctBBTTechWOJobSumMth()
SQL SECURITY INVOKER											

/****************************************************************************
  Procedure name : SpFctBBTTechWOJobSumMth 

Parameters: 
  NONE

Process Overview:  Stored Procedure for loading all completed orders for BBT Technicians.
Grain for this fact is DimfsclMthSk,DimEmployeeSk,NewHireFl.
Reloads last two months data.

Restartability: Fully restartable 

Created By : Anisha Nemtur

Modification History : 
  ID		Change Date			  Developer	            Change Description/Purpose
001		2015-10-08			        AN                        Initial creation      
002     2015-10-27                  AN                        Adding condition ScrcrdInd = 'BBT'  in Step 1 to only consider BBT work
003 	2016-01-05		        Anisha N.                Adding new attributes RwrkConnCnt, , RwrkRestCnt, RwrkSvcChgCnt, RwrkTCCnt , RwrkDiscoCnt, 
RBConn30DayRwrkCnt, RBRest30DayRwrkCnt, RBSrvcChg30DayRwrkCnt, RBTC30DayRwrkCnt and 
RBDisco30DayRwrkCnt that holds counts after removing 'RB' bulk master accounts.
004     2016-02-05             Anisha N.                 Adding new attribures RwrkCBPosCnt, RwrkResPosCnt, CBPos30DayRwrkCnt, ResPos30DayRwrkCnt,
CBPosCnt, ResPosCnt, CBTCCnt, ResTCCnt, RwrkCBTCCnt, RwrkResTCCnt, CBTC30DayRwrkCnt,
ResTC30DayRwrkCnt, PosRwrkCBGoal, PosRwrkResGoal, TCRwrkCBGoal, TCRwrkResGoal
005     2016-06-05                  JJC                     Modified Step-1a CALL statement to call the correct SP & Table name
006    2016-12-09             Anisha N.               Updating joins to DimEmployee to be based on AsscId rather than HrNum as part of HRConversion project. 
007    2017-05-25          Michael Lanier            Looks at last 5 tech titles instead of most current tech title to determine what work is BBT
Special Note :  This procedure loads FctBBTTechWOJobSumMth which will contain all completed orders for BBT Technicians

********************************************************************************/ 											
  
  LABEL_MAIN:BEGIN	

-- REQUIRED TEMPLATE VARIABLES
DECLARE V_ES_ID INTEGER; -- this is a return parameter used in SpXBIExecutionStatus
DECLARE V_Step_Name VARCHAR(100);
DECLARE V_Insert_Cnt INTEGER;
DECLARE V_Row_Cnt INTEGER;

-- USER  VARIABLES
DECLARE V_MAX_DIM_SK INTEGER;
DECLARE V_RUN_TMSP TIMESTAMP(0);
DECLARE V_CURR_BUS_DT DATE;
DECLARE V_CURR_BUS_DT_DIM_SK INTEGER;
DECLARE V_RUN_FSCL_MTH INTEGER;
DECLARE  V_BATCH_ID BIGINT;
DECLARE V_MIN_RUN_DATE DATE;
DECLARE V_MIN_RUN_SK INTEGER;
DECLARE V_THRESHOLD_CNT INTEGER;
DECLARE V_Lp INTEGER; --loop counter


--------------- Exit Handler for  Exceptions -------DO NOT UPDATE--------
  DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN
DECLARE V_MySQLCode INTEGER;
DECLARE  V_STATUS_DESC  VARCHAR(100);

SET V_MySQLCode=SQLCODE;

-- Set status description based on SQL Code
SELECT 'SQLCode (' || CAST(V_MySQLCode AS VARCHAR(20)) || ')' || ErrorText INTO V_STATUS_DESC
FROM  DBC.ErrorMsgs
WHERE ERRORCODE = V_MySQLCode;

--CALL XBIETLLOG.SpXBIExecutionStatusFail (V_ES_ID, V_STATUS_DESC);
END;


/* *****************************   INSERT CODE BELOW ***************************** */
  -- Initiate SP status logging 
/*	CALL XBIETLLOG.SpXBIExecutionStatus ('R', V_ES_ID, 'SpFctBBTTechWOJobSumMth', 'ETLStart:FctBBTTechWOJobSumMth', 'XBITbls.FctBBTTechWOJobSumMth', 0);
CALL XBIETLLOG.SpXBIExecutionStatus ('C', V_ES_ID, 'SpFctBBTTechWOJobSumMth', 'ETLStart:FctBBTTechWOJobSumMth', 'XBITbls.FctBBTTechWOJobSumMth', 0);*/
  
  SET V_THRESHOLD_CNT = 10;

---- Get the current Business date 

SELECT 
FsclMthSeqNum - 2,--2,
COALESCE(BatchId, -1),
COALESCE(BatchBusinessDateXDW, DATE'9999-12-31'), 		
COALESCE(D.DimDateSk, -1),   
BatchBusinessDateXDW 

INTO 
V_RUN_FSCL_MTH,
V_BATCH_ID,
V_CURR_BUS_DT,
V_CURR_BUS_DT_DIM_SK, 
V_RUN_TMSP 

FROM XBIEtlLogV.XBIBatchCur B  
JOIN XBITblsV.DimDate D
ON D.CalDt = B.BatchBusinessDateXDW ; 


-- Get 3 fiscal months of data to reload		
SELECT 
MIN(CalDt), 
MIN(DimDateSk) 

INTO 
V_MIN_RUN_DATE, 
V_MIN_RUN_SK

FROM XBITblsV.DimDate  
WHERE FsclMthSeqNum = V_RUN_FSCL_MTH;


--------------- STEP 1 Begin --------------- 
  
  -- Initialize new Execution Status entry		
SET V_Step_Name = 'Step 1 - Load data  into the temp table';
--CALL XBIETLLOG.SpXBIExecutionStatus ('R', V_ES_ID, 'SpFctBBTTechWOJobSumMth' , V_Step_Name, 'DLBIFO.ML_BBT', 1);

----- Perform Select to populate Temporary Table with Completed  jobs/orders in the last 33 days -----
  
  DELETE  FROM DLBIFO.ML_BBT ALL;

INSERT INTO  DLBIFO.ML_BBT
(
  DimFsclMthSk,
  HrNum,
  AsscId,  --006
  DimEmployeeSk,
  NewHireFl,
  ScrcrdInd,
  DimMgmtAreaSk,
  ConnCnt,
  RwrkConnCnt,
  ConnPnts,
  ConnMins,
  ConnLbrMins,
  ConnEQADayofRunNeeded,
  ConnEQADayofRunTested,
  ConnEQADayofRunScr,
  ConnEQADayofRunWOJobCnt,
  ConnEQADayAfterPassNeeded,
  ConnEQADayAfterPassInSpec,
  ConnEQADayAfterPassOutSpec,
  ConnEQADayAfterPassScr,
  ConnEQADayAfterPassWOJobCnt,
  ConnTQATotalScr,
  ConnTQATotalQCCnt,
  Conn30DayRwrkCnt,
  RBConn30DayRwrkCnt,
  RestCnt,
  RwrkRestCnt,
  RestPnts,
  RestMins,
  RestLbrMins,
  RestEQADayofRunNeeded,
  RestEQADayofRunTested,
  RestEQADayofRunScr,
  RestEQADayofRunWOJobCnt,
  RestEQADayAfterPassNeeded,
  RestEQADayAfterPassInSpec,
  RestEQADayAfterPassOutSpec,
  RestEQADayAfterPassScr,
  RestEQADayAfterPassWOJobCnt,
  RestTQATotalScr,
  RestTQATotalQCCnt,
  Rest30DayRwrkCnt,
  RBRest30DayRwrkCnt,
  SvcChgCnt,
  RwrkSvcChgCnt,
  SvcChgPnts,
  SvcChgMins,
  SvcChgLbrMins,
  SvcChgEQADayofRunNeeded,
  SvcChgEQADayofRunTested,
  SvcChgEQADayofRunScr,
  SvcChgEQADayofRunWOJobCnt,
  SvcChgEQADayAfterPassNeeded,
  SvcChgEQADayAfterPassInSpec,
  SvcChgEQADayAfterPassOutSpec,
  SvcChgEQADayAfterPassScr,
  SvcChgEQADayAfterPassWOJobCnt,
  SvcChgTQATotalScr,
  SvcChgTQATotalQCCnt,
  SvcChg30DayRwrkCnt,
  RBSrvcChg30DayRwrkCnt,
  RwrkCBPosCnt,
  RwrkResPosCnt,
  CBPos30DayRwrkCnt,
  ResPos30DayRwrkCnt,
  CBPosCnt,
  ResPosCnt,
  TCCnt,
  CBTCCnt,
  ResTCCnt,
  RwrkTCCnt,
  RwrkCBTCCnt,
  RwrkResTCCnt,
  TCPnts,
  TCMins,
  TCLbrMins,
  TCEQADayofRunNeeded,
  TCEQADayofRunTested,
  TCEQADayofRunScr,
  TCEQADayofRunWOJobCnt,
  TCEQADayAfterPassNeeded,
  TCEQADayAfterPassInSpec,
  TCEQADayAfterPassOutSpec,
  TCEQADayAfterPassScr,
  TCEQADayAfterPassWOJobCnt,
  TCTQATotalScr,
  TCTQATotalQCCnt,
  TC30DayRwrkCnt,
  RBTC30DayRwrkCnt,
  CBTC30DayRwrkCnt,
  ResTC30DayRwrkCnt,
  TCNotDoneCnt,
  DiscoCnt,
  RwrkDiscoCnt,
  DiscoPnts,
  DiscoMins,
  DiscoLbrMins,
  DiscoEQADayofRunNeeded,
  DiscoEQADayofRunTested,
  DiscoEQADayofRunScr,
  DiscoEQADayofRunWOJobCnt,
  DiscoEQADayAfterPassNeeded,
  DiscoEQADayAfterPassInSpec,
  DiscoEQADayAfterPassOutSpec,
  DiscoEQADayAfterPassScr,
  DiscoEQADayAfterPassWOJobCnt,
  DiscoTQATotalScr,
  DiscoTQATotalQCCnt,
  Disco30DayRwrkCnt,
  RBDisco30DayRwrkCnt,
  DiscoOnlyWOJobFl,
  SROCnt,
  SROPnts,
  SROMins,
  SROLbrMins,
  AvgFrstJobStrtTm,
  AvgLstJobStopTm,
  StartDimTmSk,
  StopDimTmSk,
  TotalOTAYesCnt,
  TotalOTANoCnt,
  TotalWOJobCnt,
  TotalPnts,
  TotalMins,
  TotalLbrMins,
  PosWrkCnt,
  VOCQ1YesCnt,
  VOCQ1NoCnt,
  VOCQ1UnanswrCnt,
  VOCQ2YesCnt,
  VOCQ2NoCnt,
  VOCQ2UnanswrCnt,
  VOCQ3YesCnt,
  VOCQ3NoCnt,
  VOCQ3UnanswrCnt,
  VOCQ4YesCnt,
  VOCQ4NoCnt,
  VOCQ4UnanswrCnt,
  RwrkConnRankAct,
  RwrkConnRankTotal,
  RwrkRestRankAct,
  RwrkRestRankTotal,
  RwrkSvcChgRankAct,
  RwrkSvcChgRankTotal,
  RwrkTCRankAct,
  RwrkTCRankTotal,
  EQADayofConnRankAct,
  EQADayofConnRankTotal,
  EQADayofRestRankAct,
  EQADayofRestRankTotal,
  EQADayofSvcChgRankAct,
  EQADayofSvcChgRankTotal,
  EQADayofTCRankAct,
  EQADayofTCRankTotal,
  EQADayAfterConnRankAct,
  EQADayAfterConnRankTotal,
  EQADayAfterRestRankAct,
  EQADayAfterRestRankTotal,
  EQADayAfterSvcChgRankAct,
  EQADayAfterSvcChgRankTotal,
  EQADayAfterTCRankAct,
  EQADayAfterTCRankTotal,
  OTARankAct,
  OTARankTotal,
  TQATotalScr,
  TQATotalCnt,
  TQARankAct,
  TQARankTotal,
  VOCRankAct,
  VOCRankTotal,
  Tot30DayRwrkCnt,
  VOCMinFl,
  TQAMinFl
)       

SELECT 
DmFsclMth.DimFsclMthSk,
DmEmp.HrNum,
DmEmp.AsscId,  --006
-1 AS DimEmployeeSk,
NewHireFl,                              
NULL AS ScrcrdInd,
--CASE WHEN MAX(ScrcrdInd) = 'BBT' THEN 'BBT' ELSE NULL END AS ScrcrdInd,
-1 AS DimMgmtAreaSk,  
SUM(ConnCnt),
SUM(RwrkConnCnt),
SUM(ConnPnts),
SUM(ConnMins),
SUM(ConnLbrMins),
SUM(ConnEQADayofRunNeeded),
SUM(ConnEQADayofRunTested),
SUM(ConnEQADayofRunScr),
SUM(ConnEQADayofRunWOJobCnt),
SUM(ConnEQADayAfterPassNeeded),
SUM(ConnEQADayAfterPassInSpec),
SUM(ConnEQADayAfterPassOutSpec),
SUM(ConnEQADayAfterPassScr),
SUM(ConnEQADayAfterPassWOJobCnt),
SUM(ConnTQATotalScr),
SUM(ConnTQATotalQCCnt),
SUM(Conn30DayRwrkCnt),
SUM(RBConn30DayRwrkCnt),
SUM(RestCnt),
SUM(RwrkRestCnt),
SUM(RestPnts),
SUM(RestMins),
SUM(RestLbrMins),
SUM(RestEQADayofRunNeeded),
SUM(RestEQADayofRunTested),
SUM(RestEQADayofRunScr),
SUM(RestEQADayofRunWOJobCnt),
SUM(RestEQADayAfterPassNeeded),
SUM(RestEQADayAfterPassInSpec),
SUM(RestEQADayAfterPassOutSpec),
SUM(RestEQADayAfterPassScr),
SUM(RestEQADayAfterPassWOJobCnt),
SUM(RestTQATotalScr),
SUM(RestTQATotalQCCnt),
SUM(Rest30DayRwrkCnt),
SUM(RBRest30DayRwrkCnt),
SUM(SvcChgCnt),
SUM(RwrkSvcChgCnt),
SUM(SvcChgPnts),
SUM(SvcChgMins),
SUM(SvcChgLbrMins),
SUM(SvcChgEQADayofRunNeeded),
SUM(SvcChgEQADayofRunTested),
SUM(SvcChgEQADayofRunScr),
SUM(SvcChgEQADayofRunWOJobCnt),
SUM(SvcChgEQADayAfterPassNeeded),
SUM(SvcChgEQADayAfterPassInSpec),
SUM(SvcChgEQADayAfterPassOutSpec),
SUM(SvcChgEQADayAfterPassScr),
SUM(SvcChgEQADayAfterPassWOJobCnt),
SUM(SvcChgTQATotalScr),
SUM(SvcChgTQATotalQCCnt),
SUM(SvcChg30DayRwrkCnt),
SUM(RBSrvcChg30DayRwrkCnt),
SUM(RwrkCBPosCnt),
SUM(RwrkResPosCnt),
SUM(CBPos30DayRwrkCnt),
SUM(ResPos30DayRwrkCnt),
SUM(CBPosCnt),
SUM(ResPosCnt),
SUM(TCCnt),
SUM(CBTCCnt),
SUM(ResTCCnt),
SUM(RwrkTCCnt),
SUM(RwrkCBTCCnt),
SUM(RwrkResTCCnt),
SUM(TCPnts),
SUM(TCMins),
SUM(TCLbrMins),
SUM(TCEQADayofRunNeeded),
SUM(TCEQADayofRunTested),
SUM(TCEQADayofRunScr),
SUM(TCEQADayofRunWOJobCnt),
SUM(TCEQADayAfterPassNeeded),
SUM(TCEQADayAfterPassInSpec),
SUM(TCEQADayAfterPassOutSpec),
SUM(TCEQADayAfterPassScr),
SUM(TCEQADayAfterPassWOJobCnt),
SUM(TCTQATotalScr),
SUM(TCTQATotalQCCnt),
SUM(TC30DayRwrkCnt),
SUM(RBTC30DayRwrkCnt),
SUM(CBTC30DayRwrkCnt),
SUM(ResTC30DayRwrkCnt),
SUM(TCNotDoneCnt),
SUM(DiscoCnt),
SUM(RwrkDiscoCnt),
SUM(DiscoPnts),
SUM(DiscoMins),
SUM(DiscoLbrMins),
SUM(DiscoEQADayofRunNeeded),
SUM(DiscoEQADayofRunTested),
SUM(DiscoEQADayofRunScr),
SUM(DiscoEQADayofRunWOJobCnt),
SUM(DiscoEQADayAfterPassNeeded),
SUM(DiscoEQADayAfterPassInSpec),
SUM(DiscoEQADayAfterPassOutSpec),
SUM(DiscoEQADayAfterPassScr),
SUM(DiscoEQADayAfterPassWOJobCnt),
SUM(DiscoTQATotalScr),
SUM(DiscoTQATotalQCCnt),
SUM(Disco30DayRwrkCnt),
SUM(RBDisco30DayRwrkCnt),
0 AS DiscoOnlyWOJobFl , --moved to last step
--CASE WHEN SUM (DiscoOnlyWOJobFl) > 0 THEN 1 ELSE 0 END DiscoOnlyWOJobFl,
SUM(SROCnt),
SUM(SROPnts),
SUM(SROMins),
SUM(SROLbrMins),
CAST(AVG(( EXTRACT(MINUTE FROM FrstJobStrtTm) * 60 + EXTRACT(HOUR FROM FrstJobStrtTm) * 3600) MOD 86400) AS DECIMAL(10, 4)) * 
  INTERVAL '00:00:01.00' HOUR TO SECOND AS AvgFrstJobStrtTm,
CAST(AVG(( EXTRACT(MINUTE FROM LstJobStopTm) * 60 + EXTRACT(HOUR FROM LstJobStopTm) * 3600) MOD 86400) AS DECIMAL(10, 4)) * 
  INTERVAL '00:00:01.00' HOUR TO SECOND AS  AvgLstJobStopTm,
-1 AS StartDimTmSk,
-1 AS StopDimTmSk,       
SUM(TotalOTAYesCnt),
SUM(TotalOTANoCnt),
SUM(TotalWOJobCnt),
SUM(CAST(TotalPnts AS DECIMAL(10,0)) ), 
SUM(TotalMins),
SUM(TotalLbrMins),
SUM(PosWrkCnt),
SUM(VOCQ1YesCnt),
SUM(VOCQ1NoCnt),
SUM(VOCQ1UnanswrCnt),
SUM(VOCQ2YesCnt),
SUM(VOCQ2NoCnt),
SUM(VOCQ2UnanswrCnt),
SUM(VOCQ3YesCnt),
SUM(VOCQ3NoCnt),
SUM(VOCQ3UnanswrCnt),
SUM(VOCQ4YesCnt),
SUM(VOCQ4NoCnt),
SUM(VOCQ4UnanswrCnt),
NULL AS RwrkConnRankAct,
NULL AS RwrkConnRankTotal,
NULL AS RwrkRestRankAct,
NULL AS RwrkRestRankTotal,
NULL AS RwrkSvcChgRankAct,
NULL AS RwrkSvcChgRankTotal,
NULL AS RwrkTCRankAct,
NULL AS RwrkTCRankTotal,
NULL AS EQADayofConnRankAct,
NULL AS EQADayofConnRankTotal,
NULL AS EQADayofRestRankAct,
NULL AS EQADayofRestRankTotal,
NULL AS EQADayofSvcChgRankAct,
NULL AS EQADayofSvcChgRankTotal,
NULL AS EQADayofTCRankAct,
NULL AS EQADayofTCRankTotal,
NULL AS EQADayAfterConnRankAct,
NULL AS EQADayAfterConnRankTotal,
NULL AS EQADayAfterRestRankAct,
NULL AS EQADayAfterRestRankTotal,
NULL AS EQADayAfterSvcChgRankAct,
NULL AS EQADayAfterSvcChgRankTotal,
NULL AS EQADayAfterTCRankAct,
NULL AS EQADayAfterTCRankTotal,
NULL AS OTARankAct,
NULL AS OTARankTotal,
SUM(COALESCE(ConnTQATotalScr,0) + COALESCE(RestTQATotalScr,0) + COALESCE(SvcChgTQATotalScr,0) + COALESCE(TCTQATotalScr,0) + COALESCE(DiscoTQATotalScr,0)) AS TQATotalScr,
SUM(COALESCE(ConnTQATotalQCCnt,0) + COALESCE(RestTQATotalQCCnt,0) + COALESCE(SvcChgTQATotalQCCnt,0) + COALESCE(TCTQATotalQCCnt,0) + COALESCE(DiscoTQATotalQCCnt,0)) AS TQATotalCnt,
NULL AS TQARankAct,
NULL AS TQARankTotal,
NULL AS VOCRankAct,
NULL AS VOCRankTotal,
SUM(Tot30DayRwrkCnt),
0 VOCMinFl,
0 TQAMinFl

FROM XBITblsV.FctTechWOJobSumDly WOJb

INNER JOIN XBITblsV.DimDate DmDt
ON WOJb.CmpltDimDtSk = DmDt.DimDateSk

INNER JOIN XBITblsV.DimFsclMth DmFsclMth 
ON DmDt.FsclMthSeqNum = DmFsclMth.FsclMthSeqNum    

INNER JOIN XBITblsV.DimEmployee DmEmp
ON WOJb.DimEmployeeSk = DmEmp.DimEmployeeSk 


WHERE DmDt.CalDt >= V_MIN_RUN_DATE    
AND WOJb.DimEmployeeSk <> -1          
AND DmEmp.ContrInd <> 'Yes'     -- only employee techs reported on BBT scorecard
AND WOJb.NewHireFl = 0			-- new hires excluded from BBT scorecard
AND WOJb.ScrcrdInd = 'BBT'      --consider only BBT work
AND DmEmp.HrNum IS NOT NULL   --006


GROUP BY DmFsclMth.DimFsclMthSk, DmEmp.HrNum,  DmEmp.AsscId, WOJb.NewHireFl ;   --006


-- Update Execution Status with step results
--CALL XBIETLLOG.SpXBIExecutionStatus ('C', V_ES_ID, 'SpFctBBTTechWOJobSumMth' , V_Step_Name, 'DLBIFO.ML_BBT', 1);	    

--------------- STEP 1 End -------------------           
  --------------- STEP 1a Begin -------------------  	
  
  -- Initialize new Execution Status entry		
SET V_Step_Name = 'Step 1a - load records into 001 table';
--CALL XBIETLLOG.SpXBIExecutionStatus ('R', V_ES_ID, 'SpFctBBTTechWOJobSumMth' , V_Step_Name, 'DLBIFO.ML_BBT', 1);
-- note this only sets in-house..  contractors are later after the sk is found
SET V_Lp=1; --each update would only change some to BBT that were not already. We can cycle through the last  5 tech titles
WHILE V_Lp<6 DO --007
BEGIN
UPDATE a
FROM DLBIFO.ML_BBT a,
(SELECT DimFsclMthSk, hrnum, AsscId, TitlNm, caldt, 'BBT' AS ScrcrdInd   --006
 FROM (
   SELECT tech.*, ROW_NUMBER() OVER (PARTITION BY hrnum, DimFsclMthSk ORDER BY caldt DESC) AS num, DimFsclMthSk, caldt
   FROM XBITblsV.DimEmployee tech,
   (SELECT DimDateSk, DimFsclMthSk, caldt
    FROM XBITblsV.DimDate
    WHERE DimDateSk >= V_MIN_RUN_SK
    AND DimDateSk <= V_CURR_BUS_DT_DIM_SK) tdim
   WHERE tdim.caldt >= tech.effdttm
   AND tdim.caldt < expdttm
   AND DimEmployeeSk <> -1
   QUALIFY ROW_NUMBER() OVER (PARTITION BY hrnum, DimFsclMthSk ORDER BY effdttm DESC) = V_Lp
 ) a, 
 XBIMdmV.MdmTechOpsScrcdTitle b
 WHERE a.caldt >= busstartdt AND a.caldt < COALESCE(busenddt, DATE'2099-01-01') 
 AND TitlNm = b.techtitle) BBT 
SET ScrcrdInd = BBT.ScrcrdInd
WHERE a.DimFsclMthSk = bbt.DimFsclMthSk
AND a.AsscId = bbt.AsscId;	   --006
SET V_Lp=V_Lp+1;		

END;
end while;	

--CALL XBIETLLOG.SpXBIExecutionStatus ('C', V_ES_ID, 'SpFctBBTTechWOJobSumMth' , V_Step_Name, 'DLBIFO.ML_BBT', 1);
--------------- STEP 1 aEnd -------------------  
  
  --------------- STEP 1b Begin -------------------  	
  
  -- Initialize new Execution Status entry		
SET V_Step_Name = 'Step 1b - filter out non-BBT techs from 001 table';
--CALL XBIETLLOG.SpXBIExecutionStatus ('R', V_ES_ID, 'SpFctBBTTechWOJobSumMth' , V_Step_Name, 'DLBIFO.ML_BBT', 1);

DELETE FROM DLBIFO.ML_BBT 
WHERE COALESCE(ScrcrdInd, '')  <> 'BBT' ;

--	CALL XBIETLLOG.SpXBIExecutionStatus ('C', V_ES_ID, 'SpFctBBTTechWOJobSumMth' , V_Step_Name, 'DLBIFO.ML_BBT', 1);

--------------- STEP 1b End ------------------- 
  
  --------------- STEP 1c Begin --------------- 
  
  -- Initialize new Execution Status entry		
SET V_Step_Name = 'Step 1b - Collect statistics on temp table';
--CALL XBIETLLOG.SpXBIExecutionStatus ('R', V_ES_ID, 'SpFctBBTTechWOJobSumMth' , V_Step_Name, 'DLBIFO.ML_BBT', 0);

--	CALL XBIUtils.SpXBICollectStatistics('XBIWrk', 'LdSpFctBBTTechWOJobSumMth001', 0);

-- Update Execution Status with step results
--	CALL XBIETLLOG.SpXBIExecutionStatus ('C', V_ES_ID, 'SpFctBBTTechWOJobSumMth' , V_Step_Name, 'DLBIFO.ML_BBT', 0);	           

--------------- STEP 1c End -------------------   	
  
  --------------- STEP 2 Begin --------------- 
  
  -- Initialize new Execution Status entry		
SET V_Step_Name = 'Step 2 - Update table with the results of the EQA day of test';
--	CALL XBIETLLOG.SpXBIExecutionStatus ('R', V_ES_ID, 'SpFctBBTTechWOJobSumMth' , V_Step_Name, 'DLBIFO.ML_BBT', 1);

UPDATE  TGT 

FROM DLBIFO.ML_BBT TGT, 
(
  SELECT  DimFsclMthSk,
  AsscId,    --006
  NewHireFl,
  CASE WHEN ConnRwrkMeetFl = 1 THEN
  RANK() OVER (PARTITION BY  rnk.KMADescr, rnk.DimFsclMthSk, rnk.TitlNm ORDER BY ConnRwrkAct DESC ) 
  ELSE NULL
  END AS RwrkConnRankAct ,
  CASE WHEN RestRwrkMeetFl = 1 THEN
  RANK() OVER (PARTITION BY  rnk.KMADescr, rnk.DimFsclMthSk, rnk.TitlNm ORDER BY RestRwrkAct DESC ) 
  ELSE NULL
  END  AS RwrkRestRankAct,
  CASE WHEN SvcChgRwrkMeetFl = 1 THEN 
  RANK() OVER (PARTITION BY  rnk.KMADescr, rnk.DimFsclMthSk, rnk.TitlNm ORDER BY SvcChgRwrkAct DESC ) 
  ELSE NULL
  END  AS RwrkSvcChgRankAct,
  CASE WHEN TCRwrkMeetFl = 1 THEN 
  RANK() OVER (PARTITION BY  rnk.KMADescr, rnk.DimFsclMthSk, rnk.TitlNm ORDER BY TCRwrkAct DESC ) 
  ELSE NULL
  END AS RwrkTCRankAct,
  RANK() OVER (PARTITION BY  rnk.KMADescr, rnk.DimFsclMthSk, rnk.TitlNm ORDER BY ConnEQADayofAct DESC) AS EQADayofConnRankAct,
  RANK() OVER (PARTITION BY  rnk.KMADescr, rnk.DimFsclMthSk, rnk.TitlNm ORDER BY RestEQADayofAct  DESC) AS EQADayofRestRankAct,
  RANK() OVER (PARTITION BY  rnk.KMADescr, rnk.DimFsclMthSk, rnk.TitlNm ORDER BY SvcChgEQADayofAct DESC ) AS EQADayofSvcChgRankAct,
  RANK() OVER (PARTITION BY  rnk.KMADescr, rnk.DimFsclMthSk, rnk.TitlNm ORDER BY TCEQADayofAct DESC) AS EQADayofTCRankAct,
  CASE WHEN ConnEQADayAfterMeetFl = 1 THEN 
  RANK() OVER (PARTITION BY  rnk.KMADescr, rnk.DimFsclMthSk, rnk.TitlNm ORDER BY ConnEQADayAfterAct  DESC) 
  ELSE NULL 
  END AS EQADayAfterConnRankAct,
  CASE WHEN RestEQADayAfterMeetFl = 1 THEN
  RANK() OVER (PARTITION BY  rnk.KMADescr, rnk.DimFsclMthSk, rnk.TitlNm ORDER BY RestEQADayAfterAct DESC ) 
  ELSE NULL 
  END AS EQADayAfterRestRankAct,
  CASE WHEN SvcChgEQADayAfterMeetFl = 1 THEN
  RANK() OVER (PARTITION BY  rnk.KMADescr, rnk.DimFsclMthSk, rnk.TitlNm ORDER BY SvcChgEQADayAfterAct DESC ) 
  ELSE NULL 
  END AS EQADayAfterSvcChgRankAct,
  CASE WHEN TCEQADayAfterMeetFl = 1 THEN 
  RANK() OVER (PARTITION BY  rnk.KMADescr, rnk.DimFsclMthSk, rnk.TitlNm ORDER BY TCEQADayAfterAct DESC ) 
  ELSE NULL 
  END AS EQADayAfterTCRankAct,
  CASE WHEN OTAMeetFl = 1 THEN
  RANK() OVER (PARTITION BY  rnk.KMADescr, rnk.DimFsclMthSk, rnk.TitlNm ORDER BY OTAAct DESC ) 
  ELSE NULL
  END  AS OTARankAct,
  CASE WHEN VOCMeetFl = 1 THEN   
  RANK() OVER (PARTITION BY  rnk.KMADescr, rnk.DimFsclMthSk, rnk.TitlNm ORDER BY VOCAct  DESC)
  ELSE NULL
  END  AS VOCRankAct,
  CASE WHEN TQAMeetFl = 1 THEN   
  RANK() OVER (PARTITION BY  rnk.KMADescr, rnk.DimFsclMthSk, rnk.TitlNm ORDER BY TQAAct  DESC) 
  ELSE NULL           
  END  AS TQARankAct,
  CASE WHEN ConnRwrkMeetFl = 1 THEN
  COUNT(1) OVER (PARTITION BY  rnk.KMADescr, rnk.DimFsclMthSk, rnk.TitlNm)
  ELSE  NULL
  END RwrkConnRankTotal,
  CASE WHEN RestRwrkMeetFl = 1 THEN
  COUNT(1) OVER (PARTITION BY  rnk.KMADescr, rnk.DimFsclMthSk, rnk.TitlNm)
  ELSE  NULL
  END RwrkRestRankTotal,
  CASE WHEN SvcChgRwrkMeetFl = 1 THEN
  COUNT(1) OVER (PARTITION BY  rnk.KMADescr, rnk.DimFsclMthSk, rnk.TitlNm)
  ELSE  NULL
  END RwrkSvcChgRankTotal,
  CASE WHEN TCRwrkMeetFl = 1 THEN
  COUNT(1) OVER (PARTITION BY  rnk.KMADescr, rnk.DimFsclMthSk, rnk.TitlNm)
  ELSE  NULL
  END RwrkTCRankTotal,
  CASE WHEN ConnEQADayofMeetFl = 1 THEN
  COUNT(1) OVER (PARTITION BY  rnk.KMADescr, rnk.DimFsclMthSk, rnk.TitlNm)
  ELSE  NULL
  END EQADayofConnRankTotal,  
  CASE WHEN RestEQADayofMeetFl = 1 THEN
  COUNT(1) OVER (PARTITION BY  rnk.KMADescr, rnk.DimFsclMthSk, rnk.TitlNm)
  ELSE  NULL
  END EQADayofRestRankTotal,
  CASE WHEN SvcChgEQADayofMeetFl = 1 THEN
  COUNT(1) OVER (PARTITION BY  rnk.KMADescr, rnk.DimFsclMthSk, rnk.TitlNm)
  ELSE  NULL
  END EQADayofSvcChgRankTotal,  
  CASE WHEN TCEQADayofMeetFl = 1 THEN
  COUNT(1) OVER (PARTITION BY  rnk.KMADescr, rnk.DimFsclMthSk, rnk.TitlNm)
  ELSE  NULL
  END EQADayofTCRankTotal,  
  CASE WHEN ConnEQADayAfterMeetFl = 1 THEN
  COUNT(1) OVER (PARTITION BY  rnk.KMADescr, rnk.DimFsclMthSk, rnk.TitlNm)
  ELSE  NULL
  END EQADayAfterConnRankTotal,           
  CASE WHEN RestEQADayAfterMeetFl = 1 THEN
  COUNT(1) OVER (PARTITION BY  rnk.KMADescr, rnk.DimFsclMthSk, rnk.TitlNm)
  ELSE  NULL
  END EQADayAfterRestRankTotal,
  CASE WHEN SvcChgEQADayAfterMeetFl = 1 THEN
  COUNT(1) OVER (PARTITION BY  rnk.KMADescr, rnk.DimFsclMthSk, rnk.TitlNm)
  ELSE  NULL
  END EQADayAfterSvcChgRankTotal,
  CASE WHEN TCEQADayAfterMeetFl = 1 THEN
  COUNT(1) OVER (PARTITION BY  rnk.KMADescr, rnk.DimFsclMthSk, rnk.TitlNm)
  ELSE  NULL
  END EQADayAfterTCRankTotal,  
  CASE WHEN OTAMeetFl = 1 THEN
  COUNT(1) OVER (PARTITION BY  rnk.KMADescr, rnk.DimFsclMthSk, rnk.TitlNm)
  ELSE  NULL
  END OTARankTotal, 
  CASE WHEN VOCMeetFl = 1 THEN
  COUNT(1) OVER (PARTITION BY  rnk.KMADescr, rnk.DimFsclMthSk, rnk.TitlNm)
  ELSE  NULL
  END VOCRankTotal, 
  CASE WHEN TQAMeetFl = 1 THEN
  COUNT(1) OVER (PARTITION BY  rnk.KMADescr, rnk.DimFsclMthSk, rnk.TitlNm)
  ELSE  NULL
  END TQARankTotal,
  TQATotalScr,
  TQATotalCnt                                                  
  
  FROM                        
  (
    SELECT   DISTINCT
    TmpTbl.DimFsclMthSk,
    TmpTbl.AsscId,  --006
    TmpTbl.NewHireFl,
    KmaDesc AS KMADescr,
    TitlNm,
    CASE WHEN ConnCnt >= V_THRESHOLD_CNT THEN 1 
    ELSE 0 
    END AS ConnRwrkMeetFl,
    CASE WHEN ConnRwrkMeetFl = 1 THEN CAST(Conn30DayRwrkCnt AS DECIMAL(15,4)) / ConnCnt 
    ELSE NULL 
    END AS ConnRwrkAct,
    CASE WHEN RestCnt >= V_THRESHOLD_CNT THEN 1 ELSE 0 END AS RestRwrkMeetFl,
    CASE WHEN RestRwrkMeetFl = 1 THEN  CAST(Rest30DayRwrkCnt AS DECIMAL(15,4)) / RestCnt 
    ELSE NULL 
    END  AS RestRwrkAct,
    CASE WHEN SvcChgCnt >= V_THRESHOLD_CNT THEN 1 ELSE 0 END AS SvcChgRwrkMeetFl,
    CASE WHEN SvcChgRwrkMeetFl = 1 THEN CAST(SvcChg30DayRwrkCnt AS DECIMAL(15,4)) / SvcChgCnt 
    ELSE NULL 
    END  AS SvcChgRwrkAct,
    CASE  WHEN TCCnt >= V_THRESHOLD_CNT THEN 1 ELSE 0 END AS TCRwrkMeetFl,
    CASE  WHEN TCRwrkMeetFl = 1 THEN CAST(TC30DayRwrkCnt AS DECIMAL(15,4)) / TCCnt 
    ELSE NULL
    END  AS TCRwrkAct,   
    CASE WHEN ConnEQADayofRunWOJobCnt >= V_THRESHOLD_CNT THEN 1 ELSE 0 END AS ConnEQADayofMeetFl,
    CASE WHEN ConnEQADayofMeetFl = 1 THEN  CAST(ConnEQADayofRunScr AS DECIMAL(15,4)) / ConnEQADayofRunWOJobCnt 
    ELSE NULL
    END  AS ConnEQADayofAct,
    CASE WHEN RestEQADayofRunWOJobCnt >= V_THRESHOLD_CNT THEN 1 ELSE 0 END AS RestEQADayofMeetFl,
    CASE WHEN RestEQADayofMeetFl = 1 THEN CAST(RestEQADayofRunScr AS DECIMAL(15,4)) / RestEQADayofRunWOJobCnt 
    ELSE NULL 
    END  AS RestEQADayofAct,
    CASE WHEN SvcChgEQADayofRunWOJobCnt >= V_THRESHOLD_CNT THEN 1 ELSE 0 END AS SvcChgEQADayofMeetFl,
    CASE WHEN SvcChgEQADayofMeetFl = 1 THEN CAST(SvcChgEQADayofRunScr AS DECIMAL(15,4)) / SvcChgEQADayofRunWOJobCnt
    ELSE NULL 
    END  AS SvcChgEQADayofAct ,    
    CASE WHEN TCEQADayofRunWOJobCnt >= V_THRESHOLD_CNT THEN 1 
    ELSE 0 
    END AS TCEQADayofMeetFl,
    CASE WHEN TCEQADayofMeetFl = 1 THEN CAST(TCEQADayofRunScr AS DECIMAL(15,4)) / TCEQADayofRunWOJobCnt 
    ELSE NULL 
    END  AS TCEQADayofAct,    
    CASE WHEN ConnEQADayAfterPassWOJobCnt >= V_THRESHOLD_CNT THEN 1  
    ELSE 0 
    END AS ConnEQADayAfterMeetFl,
    CASE WHEN ConnEQADayAfterMeetFl = 1 THEN CAST(ConnEQADayAfterPassScr AS DECIMAL(15,4)) / ConnEQADayAfterPassWOJobCnt 
    ELSE NULL 
    END  AS ConnEQADayAfterAct,  
    CASE WHEN RestEQADayAfterPassWOJobCnt >= V_THRESHOLD_CNT THEN 1
    ELSE 0 
    END AS RestEQADayAfterMeetFl,
    CASE WHEN RestEQADayAfterMeetFl = 1 THEN CAST(RestEQADayAfterPassScr AS DECIMAL(15,4)) / RestEQADayAfterPassWOJobCnt 
    ELSE NULL 
    END  AS RestEQADayAfterAct,
    CASE WHEN SvcChgEQADayAfterPassWOJobCnt >= V_THRESHOLD_CNT THEN 1 ELSE 0 END AS SvcChgEQADayAfterMeetFl,
    CASE WHEN SvcChgEQADayAfterMeetFl = 1 THEN CAST(SvcChgEQADayAfterPassScr AS DECIMAL(15,4)) / SvcChgEQADayAfterPassWOJobCnt 
    ELSE NULL 
    END  AS SvcChgEQADayAfterAct,      
    CASE WHEN TCEQADayAfterPassWOJobCnt >= V_THRESHOLD_CNT THEN 1 
    ELSE 0 
    END AS TCEQADayAfterMeetFl,
    CASE WHEN TCEQADayAfterMeetFl = 1 THEN CAST(TCEQADayAfterPassScr AS DECIMAL(15,4)) / TCEQADayAfterPassWOJobCnt 
    ELSE NULL 
    END  AS TCEQADayAfterAct,
    ConnTQATotalScr + RestTQATotalScr + SvcChgTQATotalScr + TCTQATotalScr + DiscoTQATotalScr AS TQATotalScr,
    ConnTQATotalQCCnt + RestTQATotalQCCnt + SvcChgTQATotalQCCnt + TCTQATotalQCCnt + DiscoTQATotalQCCnt AS TQATotalCnt,
    CASE WHEN TQATotalCnt >= 3 THEN 1 
    ELSE 0 
    END AS TQAMeetFl,
    CASE WHEN TQAMeetFl = 1 THEN CAST(TQATotalScr AS DECIMAL(15,4)) / TQATotalCnt 
    ELSE NULL 
    END  AS TQAAct,
    TotalOTAYesCnt + TotalOTANoCnt AS TotalOTACnt,
    CASE WHEN TotalOTACnt >= V_THRESHOLD_CNT THEN 1 
    ELSE 0 
    END AS OTAMeetFl,
    CASE WHEN OTAMeetFl = 1 THEN  CAST(TotalOTAYesCnt AS DECIMAL(15,4)) / TotalOTACnt 
    ELSE NULL 
    END  AS OTAAct,
    VOCQ2YesCnt + VOCQ2NoCnt AS VOCTotalCnt,
    CASE WHEN VOCTotalCnt >= 3 THEN 1 
    ELSE 0 
    END AS VOCMeetFl,
    CASE WHEN VOCMeetFl = 1 THEN CAST(VOCQ1YesCnt AS DECIMAL(15,4)) / VOCTotalCnt 
    ELSE NULL 
    END  AS VOCAct
    
    FROM  DLBIFO.ML_BBT TmpTbl
    
    JOIN XBITblsV.DimFsclMth DmFsclMth 
    ON TmpTbl.DimFsclMthSk = DmFsclMth.DimFsclMthSk    
    
    JOIN  XBITblsV.DimDate DmDt
    ON  DmFsclMth.FsclMthSeqNum = DmDt.FsclMthSeqNum
    
    JOIN  XBITblsV.DimEmployee DmEmp
    ON  TmpTbl.AsscId = DmEmp.AsscId    --006 
    
    JOIN  XBITblsV.DimTechnician DmTech
    ON  DmEmp.AsscId = DmTech.AsscId AND
    DmDt.CalDt >=  CAST(ValidFromDttm AS DATE)  AND
    DmDt.CalDt  < CAST(ValidToDttm AS DATE) 
    
    WHERE  TmpTbl.ScrcrdInd = 'BBT'       
    
  ) rnk
  
  QUALIFY ROW_NUMBER() OVER(PARTITION BY  DimFsclMthSk,AsscId,NewHireFl 
                            ORDER BY  DimFsclMthSk,AsscId,NewHireFl) =1    --006       
  
) SRC 

SET RwrkConnRankAct               =  SRC.RwrkConnRankAct,
RwrkConnRankTotal            =  SRC.RwrkConnRankTotal,
RwrkRestRankAct                =  SRC.RwrkRestRankAct,
RwrkRestRankTotal             =  SRC.RwrkRestRankTotal,
RwrkSvcChgRankAct           =  SRC.RwrkSvcChgRankAct,
RwrkSvcChgRankTotal         =  SRC.RwrkSvcChgRankTotal,
RwrkTCRankAct                    =  SRC.RwrkTCRankAct,
RwrkTCRankTotal                  =  SRC.RwrkTCRankTotal,
EQADayofConnRankAct         =  SRC.EQADayofConnRankAct,
EQADayofConnRankTotal       =  SRC.EQADayofConnRankTotal,
EQADayofRestRankAct           =  SRC.EQADayofRestRankAct,
EQADayofRestRankTotal         =  SRC.EQADayofRestRankTotal,
EQADayofSvcChgRankAct      =  SRC.EQADayofSvcChgRankAct,
EQADayofSvcChgRankTotal    =  SRC.EQADayofSvcChgRankTotal,
EQADayofTCRankAct               =  SRC.EQADayofTCRankAct,
EQADayofTCRankTotal            =  SRC.EQADayofTCRankTotal,
EQADayAfterConnRankAct       =  SRC.EQADayAfterConnRankAct,
EQADayAfterConnRankTotal    =  SRC.EQADayAfterConnRankTotal,
EQADayAfterRestRankAct        =  SRC.EQADayAfterRestRankAct,
EQADayAfterRestRankTotal      =  SRC.EQADayAfterRestRankTotal,
EQADayAfterSvcChgRankAct    =  SRC.EQADayAfterSvcChgRankAct,
EQADayAfterSvcChgRankTotal =  SRC.EQADayAfterSvcChgRankTotal,
EQADayAfterTCRankAct            =  SRC.EQADayAfterTCRankAct,
EQADayAfterTCRankTotal         =  SRC.EQADayAfterTCRankTotal,
OTARankAct      =  SRC.OTARankAct,
OTARankTotal    =  SRC.OTARankTotal,
--TQATotalScr       =  SRC.TQATotalScr,
--TQATotalCnt       =  SRC.TQATotalCnt,
TQARankAct       =  SRC.TQARankAct,
TQARankTotal     =  SRC.TQARankTotal,
VOCRankAct        =  SRC.VOCRankAct,
VOCRankTotal      =  SRC.VOCRankTotal

WHERE TGT.DimFsclMthSk   = SRC.DimFsclMthSk AND
TGT.AsscId               = SRC.AsscId AND    --006
TGT.NewHireFl             = SRC.NewHireFl  ;

-- Update Execution Status with step results
--CALL XBIETLLOG.SpXBIExecutionStatus ('C', V_ES_ID, 'SpFctBBTTechWOJobSumMth' , V_Step_Name, 'DLBIFO.ML_BBT', 1);	          

--------------- STEP 2 End -------------------   
  
  --------------- STEP 2-1 Begin --------------- 
  
  -- Initialize new Execution Status entry		
SET V_Step_Name = 'Step 2-1 - Update table with DimMgmtSk';
--CALL XBIETLLOG.SpXBIExecutionStatus ('R', V_ES_ID, 'SpFctBBTTechWOJobSumMth' , V_Step_Name, 'DLBIFO.ML_BBT', 1);

UPDATE  TGT 

FROM DLBIFO.ML_BBT TGT, 
(
  SELECT 
  HrNum,
  NewHireFl, 
  DimFsclMthSk, 
  DimMgmtAreaSk
  
  FROM 
  ( 
    SELECT 
    E.HrNum, 
    FctTchWOJb.WOJobCmpltDimFsclMthSk AS DimFsclMthSk, 
    FctTchWOJb.NewHireFl,
    MGMT.DimMgmtAreaSk,
    CAST(CAST(SUM(QuotaMin) AS DECIMAL(10,2))/60 AS DECIMAL(10,2)) QuotaHrs
    
    FROM XBITblsV.FctTechWOJob FctTchWOJb
    
    INNER JOIN XBITblsV.DimSVCUnit SVC 
    ON FctTchWOJb.DimSVCUnitSk = SVC.DimSVCUnitSk
    
    INNER JOIN XBITblsV.DimEmployee E 
    ON FctTchWOJb.WOJobTechDimEmployeeSk = E.DimEmployeeSk
    
    INNER JOIN XBITblsV.DimMgmtArea MGMT 
    ON SVC.MgmtArea = MGMT.MgmtArea 
    AND SVC.BlgStnId = MGMT.BlgStnId 
    AND MGMT.DimMgmtAreaSk > 0
    
    INNER JOIN XBITblsV.DimFsclMth DimDt 
    ON FctTchWOJb.WOJobCmpltDimFsclMthSk = DimDt.DimFsclMthSk 
    
    WHERE DimDt.FsclMthSeqNum >= V_RUN_FSCL_MTH 
    
    GROUP BY FctTchWOJb.WOJobCmpltDimFsclMthSk, E.HrNum, FctTchWOJb.NewHireFl, MGMT.DimMgmtAreaSk
  ) SUB
  
  QUALIFY ROW_NUMBER() OVER (PARTITION BY DimFsclMthSk, HrNum, NewHireFl ORDER BY QuotaHrs DESC, DimMgmtAreaSk) = 1
) SRC 

SET DimMgmtAreaSk = SRC.DimMgmtAreaSk

WHERE TGT.DimFsclMthSk   = SRC.DimFsclMthSk AND
TGT.HrNum               = SRC.HrNum  AND
TGT.NewHireFl          = SRC.NewHireFl  ;

-- Update Execution Status with step results
--CALL XBIETLLOG.SpXBIExecutionStatus ('C', V_ES_ID, 'SpFctBBTTechWOJobSumMth' , V_Step_Name, 'DLBIFO.ML_BBT', 1);	          

--------------- STEP 2 -1 End -------------------   
  
  
  --------------- STEP 2-2 Begin --------------- 
  
  -- Initialize new Execution Status entry		
SET V_Step_Name = 'Step 2-2 - Update table with EmployeeSks';
--	CALL XBIETLLOG.SpXBIExecutionStatus ('R', V_ES_ID, 'SpFctBBTTechWOJobSumMth' , V_Step_Name, 'DLBIFO.ML_BBT', 1);

UPDATE  TGT 

FROM DLBIFO.ML_BBT TGT, 
(
  SELECT  
  TmpTbl.DimFsclMthSk,
  TmpTbl.AsscId,   --006
  TmpTbl.NewHireFl,
  E.DimEmployeeSk											             
  
  FROM DLBIFO.ML_BBT TmpTbl
  
  INNER JOIN   
  ( 
    SELECT 
    DimEmployeeSk, 
    AsscId,    --006
    TDIM.DimFsclMthSk
    
    FROM XBITblsV.DimEmployee TECH,
    ( 
      SELECT 
      CalDt, 
      DimDt.DimFsclMthSk 
      
      FROM XBITblsV.DimDate  DT 
      
      INNER JOIN XBITblsV.DimFsclMth DimDt 
      ON DT.FsclMthSeqNum = DimDt.FsclMthSeqNum 
      
      WHERE Dt.FsclMthSeqNum >= V_RUN_FSCL_MTH 
      AND Dt.FsclMthSeqNum <= (SELECT FsclMthSeqNum 
                               FROM XBIEtlLogV.XBIBatchCur  
                               INNER JOIN XBITblsV.DimDate 
                               ON BatchBusinessDateXDW = CalDt)    
    ) TDIM  
    
    WHERE TDIM.CalDt >= CAST(TECH.EffDttm AS DATE) 
    AND (TDIM.CalDt < CAST(TECH.ExpDttm AS DATE) OR TECH.ExpDttm IS NULL) 
    
    QUALIFY ROW_NUMBER() OVER (PARTITION BY TECH.AsscId, TDIM.DimFsclMthSk ORDER BY DimEmployeeSk DESC) = 1   --006
    
  ) E 
  ON TmpTbl.DimFsclMthSk = E.DimFsclMthSk 
  AND TmpTbl.AsscId = E.AsscId      --006
) SRC 

SET DimEmployeeSk = SRC.DimEmployeeSk	                 

WHERE TGT.DimFsclMthSk   = SRC.DimFsclMthSk AND
TGT.AsscId               = SRC.AsscId AND    --006
TGT.NewHireFl          = SRC.NewHireFl  ;

-- Update Execution Status with step results
--CALL XBIETLLOG.SpXBIExecutionStatus ('C', V_ES_ID, 'SpFctBBTTechWOJobSumMth' , V_Step_Name, 'DLBIFO.ML_BBT', 1);	          

--------------- STEP 2 -2 End -------------------   
  
  --------------- STEP 2-3 Begin --------------- 
  
  -- Initialize new Execution Status entry		
SET V_Step_Name = 'Step 2-3 - Update table with KMARefs';
--CALL XBIETLLOG.SpXBIExecutionStatus ('R', V_ES_ID, 'SpFctBBTTechWOJobSumMth' , V_Step_Name, 'DLBIFO.ML_BBT', 0);

UPDATE  TGT 

FROM  DLBIFO.ML_BBT TGT, 
(
  SELECT  
  TmpTbl.DimFsclMthSk,
  TmpTbl.DimEmployeeSk,
  TmpTbl.NewHireFl,
  E.TechSrcKMARef 
  
  FROM  DLBIFO.ML_BBT TmpTbl
  
  INNER JOIN XBITblsV.DimEmployee E 
  ON E.DimEmployeeSk = TmpTbl.DimEmployeeSk		                
) SRC 

SET TechSrcKMARef = SRC.TechSrcKMARef

WHERE  TGT.DimFsclMthSk =  SRC.DimFsclMthSk AND
TGT.DimEmployeeSk = SRC.DimEmployeeSk AND
TGT.NewHireFl = SRC.NewHireFl 
AND SRC.DimEmployeeSk <> -1  ;   ----- /* Temp Fix put by ssugumar    on  July 29th 2015    field ops team to review this* /
  
  
  -- Update Execution Status with step results
--CALL XBIETLLOG.SpXBIExecutionStatus ('C', V_ES_ID, 'SpFctBBTTechWOJobSumMth' , V_Step_Name, 'DLBIFO.ML_BBT', 0);        

--------------- STEP 2-3 End -------------------   	
  
  --------------- STEP 3 Begin --------------- 
  
  -- Initialize new Execution Status entry		
SET V_Step_Name = 'Step 3  - Update table with NotDone PCT goal';
--CALL XBIETLLOG.SpXBIExecutionStatus ('R', V_ES_ID, 'SpFctBBTTechWOJobSumMth' , V_Step_Name, 'DLBIFO.ML_BBT', 0);

UPDATE  TGT 

FROM  DLBIFO.ML_BBT TGT, 
(
  SELECT 
  W.DimEmployeeSk, 
  W.TechSrcKMARef, 
  G.MetricGoal, 
  G.ThrshCnt  
  
  FROM  DLBIFO.ML_BBT  W 
  
  INNER JOIN XBIMdmV.MdmMobileTechInsightsGoal G 
  ON G.KMARef = W.TechSrcKMARef
  
  INNER JOIN XBITblsV.DimDate D 
  ON D.DimFsclMthSk = W.DimFsclMthSk 
  
  WHERE G.MetricNm = 'Not Done %' AND 
  D.CalDt >= G.ValidBusDtFr AND 
  D.CalDt < G.ValidBusDtTo  
  
  QUALIFY ROW_NUMBER() OVER ( PARTITION BY  W.DimEmployeeSk, W.TechSrcKMARef   ORDER BY  ValidBusDtFr DESC ) = 1                	                                 
) SRC 

SET NotDonePctGoal = SRC.MetricGoal, 
NotDonePctThrsh = SRC.ThrshCnt 

WHERE  TGT.DimEmployeeSk =  SRC.DimEmployeeSk AND
TGT.TechSrcKMARef = SRC.TechSrcKMARef  ;


-- Update Execution Status with step results
--CALL XBIETLLOG.SpXBIExecutionStatus ('C', V_ES_ID, 'SpFctBBTTechWOJobSumMth' , V_Step_Name, 'DLBIFO.ML_BBT', 0);        

--------------- STEP 3 End -------------------   	
  
  --------------- STEP 4 Begin --------------- 
  
  -- Initialize new Execution Status entry		
SET V_Step_Name = 'Step 4 - Update table with  OT to Points';
--	CALL XBIETLLOG.SpXBIExecutionStatus ('R', V_ES_ID, 'SpFctBBTTechWOJobSumMth' , V_Step_Name, 'DLBIFO.ML_BBT', 0);

UPDATE  TGT 

FROM  DLBIFO.ML_BBT TGT, 
(
  SELECT 
  W.DimEmployeeSk, 
  W.TechSrcKMARef, 
  G.MetricGoal, 
  G.ThrshCnt   
  
  FROM DLBIFO.ML_BBT  W 
  
  INNER JOIN XBIMdmV.MdmMobileTechInsightsGoal G 
  ON G.KMARef = W.TechSrcKMARef
  
  INNER JOIN XBITblsV.DimDate D 
  ON D.DimFsclMthSk = W.DimFsclMthSk 
  
  WHERE G.MetricNm =  'OT% to Points' AND 
  D.CalDt >= G.ValidBusDtFr AND 
  D.CalDt < G.ValidBusDtTo                  
  
  QUALIFY ROW_NUMBER() OVER (PARTITION BY W.DimEmployeeSk, W.TechSrcKMARef ORDER BY ValidBusDtFr DESC) = 1		
) SRC 

SET OvrTmPctToPntsGoal = SRC.MetricGoal,
OvrTmPctToPntsThrsh = SRC.ThrshCnt 

WHERE  TGT.DimEmployeeSk =  SRC.DimEmployeeSk AND
TGT.TechSrcKMARef = SRC.TechSrcKMARef  ;


-- Update Execution Status with step results
--CALL XBIETLLOG.SpXBIExecutionStatus ('C', V_ES_ID, 'SpFctBBTTechWOJobSumMth' , V_Step_Name, 'DLBIFO.ML_BBT', 0);        

--------------- STEP 4 End -------------------   			
  
  --------------- STEP 5 Begin --------------- 
  
  -- Initialize new Execution Status entry		
SET V_Step_Name = 'Step  5 - Update table with  OTA goals';
--CALL XBIETLLOG.SpXBIExecutionStatus ('R', V_ES_ID, 'SpFctBBTTechWOJobSumMth' , V_Step_Name, 'DLBIFO.ML_BBT', 0);

UPDATE  TGT 

FROM DLBIFO.ML_BBT TGT, 
(
  SELECT 
  W.DimEmployeeSk, 
  W.TechSrcKMARef, 
  G.MetricGoal, 
  G.ThrshCnt   
  
  FROM DLBIFO.ML_BBT  W 
  
  INNER JOIN XBIMdmV.MdmMobileTechInsightsGoal G 
  ON G.KMARef = W.TechSrcKMARef
  
  INNER JOIN XBITblsV.DimDate D 
  ON D.DimFsclMthSk = W.DimFsclMthSk 
  
  WHERE  G.MetricNm =  'OTA' AND 
  D.CalDt >= G.ValidBusDtFr AND 
  D.CalDt < G.ValidBusDtTo                  
  
  QUALIFY ROW_NUMBER() OVER (PARTITION BY W.DimEmployeeSk, W.TechSrcKMARef ORDER BY ValidBusDtFr DESC ) = 1	
) SRC 

SET OTAGoal = SRC.MetricGoal, 
OTAThrsh = SRC.ThrshCnt 

WHERE  TGT.DimEmployeeSk =  SRC.DimEmployeeSk AND
TGT.TechSrcKMARef = SRC.TechSrcKMARef  ;


-- Update Execution Status with step results
--CALL XBIETLLOG.SpXBIExecutionStatus ('C', V_ES_ID, 'SpFctBBTTechWOJobSumMth' , V_Step_Name, 'DLBIFO.ML_BBT', 0);        

--------------- STEP 5 End -------------------   			
  
  --------------- STEP 6 Begin --------------- 
  
  -- Initialize new Execution Status entry		
SET V_Step_Name = 'Step 6 - Update table with  productivity goals';
--CALL XBIETLLOG.SpXBIExecutionStatus ('R', V_ES_ID, 'SpFctBBTTechWOJobSumMth' , V_Step_Name, 'DLBIFO.ML_BBT', 0);

UPDATE  TGT 

FROM DLBIFO.ML_BBT TGT, 
(
  SELECT 
  W.DimEmployeeSk, 
  W.TechSrcKMARef, 
  G.MetricGoal, 
  G.ThrshCnt   
  
  FROM DLBIFO.ML_BBT  W 
  
  INNER JOIN XBIMdmV.MdmMobileTechInsightsGoal G 
  ON G.KMARef = W.TechSrcKMARef
  
  INNER JOIN XBITblsV.DimDate D 
  ON D.DimFsclMthSk = W.DimFsclMthSk 
  
  WHERE G.MetricNm =  'Productivity' AND 
  D.CalDt >= G.ValidBusDtFr AND 
  D.CalDt < G.ValidBusDtTo                  
  
  QUALIFY ROW_NUMBER() OVER (PARTITION BY W.DimEmployeeSk, W.TechSrcKMARef ORDER BY ValidBusDtFr DESC ) = 1	
) SRC 

SET PrdctivityGoal = SRC.MetricGoal, 
PrdctivityThrsh = SRC.ThrshCnt 

WHERE  TGT.DimEmployeeSk =  SRC.DimEmployeeSk AND
TGT.TechSrcKMARef = SRC.TechSrcKMARef  ;


-- Update Execution Status with step results
--	CALL XBIETLLOG.SpXBIExecutionStatus ('C', V_ES_ID, 'SpFctBBTTechWOJobSumMth' , V_Step_Name, 'DLBIFO.ML_BBT', 0);        

--------------- STEP 6 End -------------------   	
  
  --------------- STEP 7 Begin --------------- 
  
  -- Initialize new Execution Status entry		
SET V_Step_Name = 'Step 7 - Update table with  Conn Rwrk goals';
--	CALL XBIETLLOG.SpXBIExecutionStatus ('R', V_ES_ID, 'SpFctBBTTechWOJobSumMth' , V_Step_Name, 'DLBIFO.ML_BBT', 0);

UPDATE  TGT 

FROM  DLBIFO.ML_BBT TGT, 
(
  SELECT 
  W.DimEmployeeSk, 
  W.TechSrcKMARef, 
  G.MetricGoal, 
  G.ThrshCnt   
  
  FROM DLBIFO.ML_BBT  W 
  
  INNER JOIN XBIMdmV.MdmMobileTechInsightsGoal G 
  ON G.KMARef = W.TechSrcKMARef
  
  INNER JOIN XBITblsV.DimDate D 
  ON D.DimFsclMthSk = W.DimFsclMthSk 
  
  WHERE G.MetricNm = 'REWORK' AND 
  G.WOClDesc = 'Install' AND
  D.CalDt >= G.ValidBusDtFr AND 
  D.CalDt < G.ValidBusDtTo                  
  
  QUALIFY ROW_NUMBER() OVER (PARTITION BY W.DimEmployeeSk, W.TechSrcKMARef ORDER BY ValidBusDtFr DESC ) = 1	
) SRC 

SET ConnRwrkGoal = SRC.MetricGoal, 
ConnRwrkThrsh = SRC.ThrshCnt 

WHERE  TGT.DimEmployeeSk =  SRC.DimEmployeeSk AND
TGT.TechSrcKMARef = SRC.TechSrcKMARef  ;


-- Update Execution Status with step results
--	CALL XBIETLLOG.SpXBIExecutionStatus ('C', V_ES_ID, 'SpFctBBTTechWOJobSumMth' , V_Step_Name, 'DLBIFO.ML_BBT', 0);        

--------------- STEP 7 End -------------------   	
  
  --------------- STEP 8 Begin --------------- 
  
  -- Initialize new Execution Status entry		
SET V_Step_Name = 'Step 8 - Update table with  Rest Rwrk goals';
--	CALL XBIETLLOG.SpXBIExecutionStatus ('R', V_ES_ID, 'SpFctBBTTechWOJobSumMth' , V_Step_Name, 'DLBIFO.ML_BBT', 0);

UPDATE  TGT 

FROM DLBIFO.ML_BBT TGT, 
(
  SELECT  
  W.DimEmployeeSk, 
  W.TechSrcKMARef, 
  G.MetricGoal, 
  G.ThrshCnt   
  
  FROM DLBIFO.ML_BBT  W 
  
  INNER JOIN XBIMdmV.MdmMobileTechInsightsGoal G 
  ON G.KMARef = W.TechSrcKMARef
  
  INNER JOIN XBITblsV.DimDate D 
  ON D.DimFsclMthSk = W.DimFsclMthSk 
  
  WHERE G.MetricNm = 'REWORK' AND 
  G.WOClDesc = 'Restart' AND
  D.CalDt >= G.ValidBusDtFr AND 
  D.CalDt < G.ValidBusDtTo       
  
  QUALIFY ROW_NUMBER() OVER (PARTITION BY  W.DimEmployeeSk, W.TechSrcKMARef ORDER BY ValidBusDtFr DESC) = 1	
) SRC 

SET RestRwrkGoal  = SRC.MetricGoal, 
RestRwrkThrsh = SRC.ThrshCnt 

WHERE  TGT.DimEmployeeSk =  SRC.DimEmployeeSk AND
TGT.TechSrcKMARef = SRC.TechSrcKMARef  ;


-- Update Execution Status with step results
--	CALL XBIETLLOG.SpXBIExecutionStatus ('C', V_ES_ID, 'SpFctBBTTechWOJobSumMth' , V_Step_Name, 'DLBIFO.ML_BBT', 0);        

--------------- STEP 8 End -------------------   	
  
  --------------- STEP 9 Begin --------------- 
  
  -- Initialize new Execution Status entry		
SET V_Step_Name = 'Step 9 - Update table with  Rest Rwrk goals';
--	CALL XBIETLLOG.SpXBIExecutionStatus ('R', V_ES_ID, 'SpFctBBTTechWOJobSumMth' , V_Step_Name, 'DLBIFO.ML_BBT', 0);

UPDATE  TGT 

FROM  DLBIFO.ML_BBT TGT, 
(
  SELECT 
  W.DimEmployeeSk, 
  W.TechSrcKMARef, 
  G.MetricGoal, 
  G.ThrshCnt   
  
  FROM DLBIFO.ML_BBT  W 
  
  INNER JOIN XBIMdmV.MdmMobileTechInsightsGoal G 
  ON G.KMARef = W.TechSrcKMARef
  
  INNER JOIN XBITblsV.DimDate D 
  ON D.DimFsclMthSk = W.DimFsclMthSk 
  
  WHERE  G.MetricNm = 'REWORK' AND 
  G.WOClDesc =  'Change of Service' AND
  D.CalDt >= G.ValidBusDtFr AND 
  D.CalDt < G.ValidBusDtTo   
  
  QUALIFY ROW_NUMBER() OVER (PARTITION BY W.DimEmployeeSk, W.TechSrcKMARef ORDER BY ValidBusDtFr DESC) = 1	
) SRC 

SET SvcChgRwrkGoal   = SRC.MetricGoal, 
SvcChgRwrkThrsh = SRC.ThrshCnt 

WHERE  TGT.DimEmployeeSk =  SRC.DimEmployeeSk AND
TGT.TechSrcKMARef = SRC.TechSrcKMARef  ;


-- Update Execution Status with step results
--	CALL XBIETLLOG.SpXBIExecutionStatus ('C', V_ES_ID, 'SpFctBBTTechWOJobSumMth' , V_Step_Name, 'DLBIFO.ML_BBT', 0);        

--------------- STEP 9 End -------------------   	
  
  --------------- STEP 10 Begin --------------- 
  
  -- Initialize new Execution Status entry		
SET V_Step_Name = 'Step 10 - Update table with  TC Rwrk goals';
--	CALL XBIETLLOG.SpXBIExecutionStatus ('R', V_ES_ID, 'SpFctBBTTechWOJobSumMth' , V_Step_Name, 'DLBIFO.ML_BBT', 0);

UPDATE  TGT 

FROM  DLBIFO.ML_BBT TGT, 
(
  SELECT 
  W.DimEmployeeSk, 
  W.TechSrcKMARef, 
  G.MetricGoal, 
  G.ThrshCnt   
  
  FROM DLBIFO.ML_BBT  W 
  
  INNER JOIN XBIMdmV.MdmMobileTechInsightsGoal G 
  ON G.KMARef = W.TechSrcKMARef
  
  INNER JOIN XBITblsV.DimDate D 
  ON D.DimFsclMthSk = W.DimFsclMthSk 
  
  WHERE  G.MetricNm = 'REWORK' AND 
  G.WOClDesc =  'Trouble Call' AND
  D.CalDt >= G.ValidBusDtFr AND 
  D.CalDt < G.ValidBusDtTo   
  
  QUALIFY ROW_NUMBER() OVER (PARTITION BY W.DimEmployeeSk, W.TechSrcKMARef ORDER BY ValidBusDtFr DESC) = 1	                                                 
) SRC 

SET TCRwrkGoal  = SRC.MetricGoal, 
TCRwrkThrsh = SRC.ThrshCnt 

WHERE  TGT.DimEmployeeSk =  SRC.DimEmployeeSk AND
TGT.TechSrcKMARef = SRC.TechSrcKMARef  ;


-- Update Execution Status with step results
--	CALL XBIETLLOG.SpXBIExecutionStatus ('C', V_ES_ID, 'SpFctBBTTechWOJobSumMth' , V_Step_Name, 'DLBIFO.ML_BBT', 0);        

--------------- STEP 10 End -------------------   	
  
  --------------- STEP 11 Begin --------------- 
  
  -- Initialize new Execution Status entry		
SET V_Step_Name = 'Step 11 - Update table with  Positive Rwrk CB goals';
--	CALL XBIETLLOG.SpXBIExecutionStatus ('R', V_ES_ID, 'SpFctBBTTechWOJobSumMth' , V_Step_Name, 'DLBIFO.ML_BBT', 0);

UPDATE  TGT 

FROM  DLBIFO.ML_BBT TGT, 
(
  SELECT 
  W.DimEmployeeSk, 
  W.TechSrcKMARef, 
  G.MetricGoal, 
  G.ThrshCnt   
  
  FROM DLBIFO.ML_BBT  W 
  
  INNER JOIN XBIMdmV.MdmMobileTechInsightsGoal G 
  ON G.KMARef = W.TechSrcKMARef
  
  INNER JOIN XBITblsV.DimDate D 
  ON D.DimFsclMthSk = W.DimFsclMthSk 
  
  WHERE  G.MetricNm = 'REWORK-CB' AND 
  G.WOClDesc =  'Positive' AND
  D.CalDt >= G.ValidBusDtFr AND 
  D.CalDt < G.ValidBusDtTo   
  
  QUALIFY ROW_NUMBER() OVER (PARTITION BY W.DimEmployeeSk, W.TechSrcKMARef ORDER BY ValidBusDtFr DESC) = 1	                                                 
) SRC 

SET PosRwrkCBGoal  = SRC.MetricGoal

WHERE  TGT.DimEmployeeSk =  SRC.DimEmployeeSk AND
TGT.TechSrcKMARef = SRC.TechSrcKMARef  ;


-- Update Execution Status with step results
--CALL XBIETLLOG.SpXBIExecutionStatus ('C', V_ES_ID, 'SpFctBBTTechWOJobSumMth' , V_Step_Name, 'DLBIFO.ML_BBT', 0);        

--------------- STEP 11 End -------------------  
  
  --------------- STEP 12 Begin --------------- 
  
  -- Initialize new Execution Status entry		
SET V_Step_Name = 'Step 12 - Update table with  Positive Rwrk Residential goals';
--CALL XBIETLLOG.SpXBIExecutionStatus ('R', V_ES_ID, 'SpFctBBTTechWOJobSumMth' , V_Step_Name, 'DLBIFO.ML_BBT', 0);

UPDATE  TGT 

FROM  DLBIFO.ML_BBT TGT, 
(
  SELECT 
  W.DimEmployeeSk, 
  W.TechSrcKMARef, 
  G.MetricGoal, 
  G.ThrshCnt   
  
  FROM DLBIFO.ML_BBT  W 
  
  INNER JOIN XBIMdmV.MdmMobileTechInsightsGoal G 
  ON G.KMARef = W.TechSrcKMARef
  
  INNER JOIN XBITblsV.DimDate D 
  ON D.DimFsclMthSk = W.DimFsclMthSk 
  
  WHERE  G.MetricNm = 'Rework-Res' AND 
  G.WOClDesc =  'Positive' AND
  D.CalDt >= G.ValidBusDtFr AND 
  D.CalDt < G.ValidBusDtTo   
  
  QUALIFY ROW_NUMBER() OVER (PARTITION BY W.DimEmployeeSk, W.TechSrcKMARef ORDER BY ValidBusDtFr DESC) = 1	                                                 
) SRC 

SET PosRwrkResGoal  = SRC.MetricGoal

WHERE  TGT.DimEmployeeSk =  SRC.DimEmployeeSk AND
TGT.TechSrcKMARef = SRC.TechSrcKMARef  ;


-- Update Execution Status with step results
--	CALL XBIETLLOG.SpXBIExecutionStatus ('C', V_ES_ID, 'SpFctBBTTechWOJobSumMth' , V_Step_Name, 'DLBIFO.ML_BBT', 0);        

--------------- STEP 12 End -------------------  
  
  --------------- STEP 13 Begin --------------- 
  
  -- Initialize new Execution Status entry		
SET V_Step_Name = 'Step 13 - Update table with  TC Rwrk CB goals';
--CALL XBIETLLOG.SpXBIExecutionStatus ('R', V_ES_ID, 'SpFctBBTTechWOJobSumMth' , V_Step_Name, 'DLBIFO.ML_BBT', 0);

UPDATE  TGT 

FROM  DLBIFO.ML_BBT TGT, 
(
  SELECT 
  W.DimEmployeeSk, 
  W.TechSrcKMARef, 
  G.MetricGoal, 
  G.ThrshCnt   
  
  FROM DLBIFO.ML_BBT  W 
  
  INNER JOIN XBIMdmV.MdmMobileTechInsightsGoal G 
  ON G.KMARef = W.TechSrcKMARef
  
  INNER JOIN XBITblsV.DimDate D 
  ON D.DimFsclMthSk = W.DimFsclMthSk 
  
  WHERE  G.MetricNm = 'REWORK-CB' AND 
  G.WOClDesc =  'Trouble Call' AND
  D.CalDt >= G.ValidBusDtFr AND 
  D.CalDt < G.ValidBusDtTo   
  
  QUALIFY ROW_NUMBER() OVER (PARTITION BY W.DimEmployeeSk, W.TechSrcKMARef ORDER BY ValidBusDtFr DESC) = 1	                                                 
) SRC 

SET TCRwrkCBGoal  = SRC.MetricGoal

WHERE  TGT.DimEmployeeSk =  SRC.DimEmployeeSk AND
TGT.TechSrcKMARef = SRC.TechSrcKMARef  ;


-- Update Execution Status with step results
--CALL XBIETLLOG.SpXBIExecutionStatus ('C', V_ES_ID, 'SpFctBBTTechWOJobSumMth' , V_Step_Name, 'DLBIFO.ML_BBT', 0);        

--------------- STEP 13 End -------------------  
  
  --------------- STEP 14 Begin --------------- 
  
  -- Initialize new Execution Status entry		
SET V_Step_Name = 'Step 14 - Update table with  TC Rwrk Residential goals';
--CALL XBIETLLOG.SpXBIExecutionStatus ('R', V_ES_ID, 'SpFctBBTTechWOJobSumMth' , V_Step_Name, 'DLBIFO.ML_BBT', 0);

UPDATE  TGT 

FROM  DLBIFO.ML_BBT TGT, 
(
  SELECT 
  W.DimEmployeeSk, 
  W.TechSrcKMARef, 
  G.MetricGoal, 
  G.ThrshCnt   
  
  FROM DLBIFO.ML_BBT  W 
  
  INNER JOIN XBIMdmV.MdmMobileTechInsightsGoal G 
  ON G.KMARef = W.TechSrcKMARef
  
  INNER JOIN XBITblsV.DimDate D 
  ON D.DimFsclMthSk = W.DimFsclMthSk 
  
  WHERE  G.MetricNm = 'Rework-Res' AND 
  G.WOClDesc =  'Trouble Call' AND
  D.CalDt >= G.ValidBusDtFr AND 
  D.CalDt < G.ValidBusDtTo   
  
  QUALIFY ROW_NUMBER() OVER (PARTITION BY W.DimEmployeeSk, W.TechSrcKMARef ORDER BY ValidBusDtFr DESC) = 1	                                                 
) SRC 

SET TCRwrkResGoal  = SRC.MetricGoal

WHERE  TGT.DimEmployeeSk =  SRC.DimEmployeeSk AND
TGT.TechSrcKMARef = SRC.TechSrcKMARef  ;


-- Update Execution Status with step results
--CALL XBIETLLOG.SpXBIExecutionStatus ('C', V_ES_ID, 'SpFctBBTTechWOJobSumMth' , V_Step_Name, 'DLBIFO.ML_BBT', 0);        

--------------- STEP 14 End -------------------  
  
  --------------- STEP 15 Begin --------------- 
  
  -- Initialize new Execution Status entry		
SET V_Step_Name = 'Step 15 - Update table with  TQA goals';
--CALL XBIETLLOG.SpXBIExecutionStatus ('R', V_ES_ID, 'SpFctBBTTechWOJobSumMth' , V_Step_Name, 'DLBIFO.ML_BBT', 0);

UPDATE  TGT 

FROM  DLBIFO.ML_BBT TGT, 
(
  SELECT 
  W.DimEmployeeSk, 
  W.TechSrcKMARef, 
  G.MetricGoal, 
  G.ThrshCnt   
  
  FROM DLBIFO.ML_BBT  W 
  
  INNER JOIN XBIMdmV.MdmMobileTechInsightsGoal G 
  ON G.KMARef = W.TechSrcKMARef
  
  INNER JOIN XBITblsV.DimDate D 
  ON D.DimFsclMthSk = W.DimFsclMthSk 
  
  WHERE  G.MetricNm = 'TQA' AND
  D.CalDt >= G.ValidBusDtFr AND 
  D.CalDt < G.ValidBusDtTo   
  
  QUALIFY ROW_NUMBER() OVER (PARTITION BY W.DimEmployeeSk, W.TechSrcKMARef ORDER BY ValidBusDtFr DESC) = 1	              	                                   
) SRC 

SET TQAGoal  = SRC.MetricGoal,
TQAThrsh = SRC.ThrshCnt 

WHERE  TGT.DimEmployeeSk =  SRC.DimEmployeeSk AND
TGT.TechSrcKMARef = SRC.TechSrcKMARef  ;


-- Update Execution Status with step results
--CALL XBIETLLOG.SpXBIExecutionStatus ('C', V_ES_ID, 'SpFctBBTTechWOJobSumMth' , V_Step_Name, 'DLBIFO.ML_BBT', 0);        

--------------- STEP 15 End -------------------   	
  
  --------------- STEP 16 Begin --------------- 
  
  -- Initialize new Execution Status entry		
SET V_Step_Name = 'Step 16 - Update table with Utiization goals';
--CALL XBIETLLOG.SpXBIExecutionStatus ('R', V_ES_ID, 'SpFctBBTTechWOJobSumMth' , V_Step_Name, 'DLBIFO.ML_BBT', 0);

UPDATE  TGT 

FROM  DLBIFO.ML_BBT TGT, 
(
  SELECT 
  W.DimEmployeeSk, 
  W.TechSrcKMARef, 
  G.MetricGoal, 
  G.ThrshCnt   
  
  FROM DLBIFO.ML_BBT  W 
  
  INNER JOIN XBIMdmV.MdmMobileTechInsightsGoal G 
  ON G.KMARef = W.TechSrcKMARef
  
  INNER JOIN XBITblsV.DimDate D 
  ON D.DimFsclMthSk = W.DimFsclMthSk 
  
  WHERE  G.MetricNm = 'Utilization' AND
  D.CalDt >= G.ValidBusDtFr AND 
  D.CalDt < G.ValidBusDtTo                  
  
  QUALIFY ROW_NUMBER() OVER (PARTITION BY W.DimEmployeeSk, W.TechSrcKMARef ORDER BY ValidBusDtFr DESC ) = 1	              
) SRC 

SET UtlzGoal  = SRC.MetricGoal,
UtlzThrsh = SRC.ThrshCnt 

WHERE  TGT.DimEmployeeSk =  SRC.DimEmployeeSk AND
TGT.TechSrcKMARef = SRC.TechSrcKMARef  ;


-- Update Execution Status with step results
--CALL XBIETLLOG.SpXBIExecutionStatus ('C', V_ES_ID, 'SpFctBBTTechWOJobSumMth' , V_Step_Name, 'DLBIFO.ML_BBT', 0);        

--------------- STEP 16 End -------------------   	
  
  --------------- STEP 17 Begin --------------- 
  
  -- Initialize new Execution Status entry		
SET V_Step_Name = 'Step 17 - Update table with  VOC  goals';
--	CALL XBIETLLOG.SpXBIExecutionStatus ('R', V_ES_ID, 'SpFctBBTTechWOJobSumMth' , V_Step_Name, 'DLBIFO.ML_BBT', 0);

UPDATE  TGT 

FROM  DLBIFO.ML_BBT TGT, 
(
  SELECT 
  W.DimEmployeeSk, 
  W.TechSrcKMARef, 
  G.MetricGoal, 
  G.ThrshCnt   
  
  FROM DLBIFO.ML_BBT  W 
  
  INNER JOIN XBIMdmV.MdmMobileTechInsightsGoal G 
  ON G.KMARef = W.TechSrcKMARef
  
  INNER JOIN XBITblsV.DimDate D 
  ON D.DimFsclMthSk = W.DimFsclMthSk 
  
  WHERE  G.MetricNm = 'VOC' AND
  D.CalDt >= G.ValidBusDtFr AND 
  D.CalDt < G.ValidBusDtTo                 
  
  QUALIFY ROW_NUMBER() OVER (PARTITION BY W.DimEmployeeSk, W.TechSrcKMARef ORDER BY ValidBusDtFr DESC) = 1	              
) SRC 

SET VOCGoal  = SRC.MetricGoal, 
VOCThrsh = SRC.ThrshCnt 

WHERE  TGT.DimEmployeeSk =  SRC.DimEmployeeSk AND
TGT.TechSrcKMARef = SRC.TechSrcKMARef  ;


-- Update Execution Status with step results
--	CALL XBIETLLOG.SpXBIExecutionStatus ('C', V_ES_ID, 'SpFctBBTTechWOJobSumMth' , V_Step_Name, 'DLBIFO.ML_BBT', 0);        

--------------- STEP 17 End -------------------   
  
  --------------- STEP 18 Begin --------------- 
  
  -- Initialize new Execution Status entry		
SET V_Step_Name = 'Step 18 - Update table with  Points per day  goals';
--	CALL XBIETLLOG.SpXBIExecutionStatus ('R', V_ES_ID, 'SpFctBBTTechWOJobSumMth' , V_Step_Name, 'DLBIFO.ML_BBT', 0);

UPDATE  TGT 

FROM  DLBIFO.ML_BBT TGT, 
(
  SELECT 
  W.DimEmployeeSk, 
  W.TechSrcKMARef, 
  G.MetricGoal, 
  G.ThrshCnt   
  
  FROM DLBIFO.ML_BBT  W 
  
  INNER JOIN XBIMdmV.MdmMobileTechInsightsGoal G 
  ON G.KMARef = W.TechSrcKMARef
  
  INNER JOIN XBITblsV.DimDate D 
  ON D.DimFsclMthSk = W.DimFsclMthSk 
  
  WHERE  G.MetricNm = 'Points Per Day' AND
  D.CalDt >= G.ValidBusDtFr AND 
  D.CalDt < G.ValidBusDtTo                  
  
  QUALIFY ROW_NUMBER() OVER (PARTITION BY W.DimEmployeeSk, W.TechSrcKMARef ORDER BY ValidBusDtFr DESC ) = 1	              
) SRC 

SET PntsPerDayGoal  = SRC.MetricGoal, 
PntsPerDayThrsh = SRC.ThrshCnt 

WHERE  TGT.DimEmployeeSk =  SRC.DimEmployeeSk AND
TGT.TechSrcKMARef = SRC.TechSrcKMARef  ;


-- Update Execution Status with step results
--	CALL XBIETLLOG.SpXBIExecutionStatus ('C', V_ES_ID, 'SpFctBBTTechWOJobSumMth' , V_Step_Name, 'DLBIFO.ML_BBT', 0);        

--------------- STEP 18 End -------------------   
  
  /*--------------------------------------Below step not required as no Contractors are considered in LdSpFctBBTTechWOJobSumMth001 --------------------------*/
  /*
  --------------- STEP 1a1 Begin -------------------  	
  
  -- Initialize new Execution Status entry		
SET V_Step_Name = 'Step 1a1 - load records into 001 table';
CALL XBIETLLOG.SpXBIExecutionStatus ('R', V_ES_ID, 'SpFctBBTTechWOJobSumMth' , V_Step_Name, 'DLBIFO.ML_BBT', 1);


update a 
from DLBIFO.ML_BBT  a,
XBITbls.DimEmployee b
set  ScrcrdInd = 'BBT'
where a.DimEmployeeSk = b.DimEmployeeSk
and contrInd = 'Yes';

CALL XBIETLLOG.SpXBIExecutionStatus ('C', V_ES_ID, 'SpFctBBTTechWOJobSumMth' , V_Step_Name, 'DLBIFO.ML_BBT', 1);
--------------- STEP 1 a1 End -------------------  
  */
  
  -- Initialize new Execution Status entry		
SET V_Step_Name = 'Step 1a2 - update min flags 001 table';
--	CALL XBIETLLOG.SpXBIExecutionStatus ('R', V_ES_ID, 'SpFctBBTTechWOJobSumMth' , V_Step_Name, 'DLBIFO.ML_BBT', 1);


UPDATE a
FROM DLBIFO.ML_BBT a,
(
  SELECT a.hrnum, a.DimFsclMthSk, b.DimEmployeeSk, NewHireFl,
  CASE WHEN VOCCnt >= 3 THEN 1 ELSE 0 END AS VOCMinFl,
  CASE WHEN TQATotalCnt >= 3 THEN 1 ELSE 0 END AS TQAMinFl
  FROM (SELECT  hrnum, DimFsclMthSk,
        SUM(COALESCE(VOCQ2YesCnt,0) + COALESCE(VOCQ2NoCnt,0)) AS VOCCnt,
        SUM(TQATotalCnt) AS TQATotalCnt	
        FROM DLBIFO.ML_BBT
        WHERE hrnum IS NOT NULL
        GROUP BY hrnum, DimFsclMthSk) a
  JOIN (SELECT DISTINCT hrnum, DimFsclMthSk, DimEmployeeSk, NewHireFl
        FROM DLBIFO.ML_BBT
        WHERE hrnum IS NOT NULL
        QUALIFY  RANK () OVER (PARTITION BY hrnum, DimFsclMthSk ORDER BY NewHireFl ) = 1) b
  ON a.hrnum = b.hrnum AND a.DimFsclMthSk = b.DimFsclMthSk) b
SET VOCMinFl = b.VOCMinFl,
TQAMinFl = b.TQAMinFl
WHERE a.DimEmployeeSk = b.DimEmployeeSk
AND a.DimFsclMthSk = b.DimFsclMthSk
AND a.NewHireFl = b.NewHireFl
AND b.DimEmployeeSk <> -1;

--	CALL XBIETLLOG.SpXBIExecutionStatus ('C', V_ES_ID, 'SpFctBBTTechWOJobSumMth' , V_Step_Name, 'DLBIFO.ML_BBT', 1);
--------------- STEP 1 a2 End -------------------  
  
  /*--------------------------------------Below step not required as no new hires are considered in LdSpFctBBTTechWOJobSumMth001 --------------------------*/
  /*
  
  --------------- STEP 1a2Begin -------------------  	
  
  -- Initialize new Execution Status entry		
SET V_Step_Name = 'Step 1a2 - update new hire flag 001 table';
CALL XBIETLLOG.SpXBIExecutionStatus ('R', V_ES_ID, 'SpFctBBTTechWOJobSumMth' , V_Step_Name, 'DLBIFO.ML_BBT', 1);

update a 
from DLBIFO.ML_BBT  a,
(
  select a.DimEmployeeSk, a.DimFsclMthSk, 1 as newhirefl
  from  DLBIFO.ML_BBT a
  join XBITblsV.DimEmployee b on a.DimEmployeeSk = b.DimEmployeeSk
  join XBITblsV.Dimdate c on effectivehiredt+29 = caldt
  where a.DimFsclMthSk >= (select MIN(DimFsclMthSk) from XBITblsV.DimDate where FsclMthSeqNum = V_RUN_FSCL_MTH)
  and newhirefl = 0
  and c.DimFsclMthSk >= a.DimFsclMthSk) b
set newhirefl = b.newhirefl
where a.DimEmployeeSk = b.DimEmployeeSk
and a.DimFsclMthSk = b.DimFsclMthSk
and a.NewHireFl = 0;

CALL XBIETLLOG.SpXBIExecutionStatus ('C', V_ES_ID, 'SpFctBBTTechWOJobSumMth' , V_Step_Name, 'DLBIFO.ML_BBT', 1);
--------------- STEP 1 a2 End -------------------  
  */
  
  --------------- STEP 1a3Begin -------------------  	
  
  -- Initialize new Execution Status entry		
SET V_Step_Name = 'Step 1a3 - update average start and stop time 001 table';
--	CALL XBIETLLOG.SpXBIExecutionStatus ('R', V_ES_ID, 'SpFctBBTTechWOJobSumMth' , V_Step_Name, 'DLBIFO.ML_BBT', 1);

UPDATE a 
FROM DLBIFO.ML_BBT  a,
(
  SELECT 
  DmEmp.AsscId,    --006
  DmFsclMth.DimFsclMthSk,  
  CAST(AVG(( EXTRACT(MINUTE FROM FrstJobStrtTm) * 60 + EXTRACT(HOUR FROM FrstJobStrtTm) * 3600) MOD 86400) AS DECIMAL(10, 4)) * 
    INTERVAL '00:00:01.00' HOUR TO SECOND AS AvgFrstJobStrtTm,
  CAST(AVG(( EXTRACT(MINUTE FROM LstJobStopTm) * 60 + EXTRACT(HOUR FROM LstJobStopTm) * 3600) MOD 86400) AS DECIMAL(10, 4)) * 
    INTERVAL '00:00:01.00' HOUR TO SECOND AS  AvgLstJobStopTm 
  
  FROM XBITblsV.FctTechWOJobSumDly WOJb
  
  INNER JOIN XBITblsV.DimDate DmDt
  ON WOJb.CmpltDimDtSk = DmDt.DimDateSk
  
  INNER JOIN XBITblsV.DimFsclMth DmFsclMth 
  ON DmDt.FsclMthSeqNum = DmFsclMth.FsclMthSeqNum    
  
  INNER JOIN XBITblsV.DimEmployee DmEmp
  ON WOJb.DimEmployeeSk = DmEmp.DimEmployeeSk 
  
  WHERE DmDt.CalDt >= V_MIN_RUN_DATE    
  AND WOJb.DimEmployeeSk <> -1               
  
  GROUP BY DmFsclMth.DimFsclMthSk, DmEmp.AsscId  --006 
) b

SET 
AvgFrstJobStrtTm = b.AvgFrstJobStrtTm, 
AvgLstJobStopTm = b.AvgLstJobStopTm 

WHERE a.AsscId = b.AsscId   --006
AND a.DimFsclMthSk = b.DimFsclMthSk;

--CALL XBIETLLOG.SpXBIExecutionStatus ('C', V_ES_ID, 'SpFctBBTTechWOJobSumMth' , V_Step_Name, 'DLBIFO.ML_BBT', 1);
--------------- STEP 1 a3 End -------------------  
  
  --------------- STEP 19 Begin --------------- 
  
  -- Initialize new Execution Status entry		
SET V_Step_Name = 'Step 19 - Delete data from the target table for 2 months  from current data, if exists';
--CALL XBIETLLOG.SpXBIExecutionStatus ('R', V_ES_ID, 'SpFctBBTTechWOJobSumMth' , V_Step_Name, 'XBITbls.FctBBTTechWOJobSumMth', 1);


DELETE FROM DLBIFO.FctBBTTechWOJobSumMth
WHERE DimFsclMthSk >= ( SELECT DimFsclMthSk
                        FROM XBITblsV.DimFsclMth
                        WHERE  FsclMthSeqNum =  V_RUN_FSCL_MTH
) ; 	

-- Update Execution Status with step results
--CALL XBIETLLOG.SpXBIExecutionStatus ('C', V_ES_ID, 'SpFctBBTTechWOJobSumMth' , V_Step_Name, 'XBITbls.FctBBTTechWOJobSumMth', 1);	           

--------------- STEP 19 End -------------------   
  
  --------------- STEP 20 Begin --------------- 
  
  -- Initialize new Execution Status entry		
SET V_Step_Name = 'Step 20 - Load Data into the target table';
--CALL XBIETLLOG.SpXBIExecutionStatus ('R', V_ES_ID, 'SpFctBBTTechWOJobSumMth' , V_Step_Name, 'XBITbls.FctBBTTechWOJobSumMth', 1);

INSERT INTO  DLBIFO.FctBBTTechWOJobSumMth
(
  DimFsclMthSk,
  DimEmployeeSk,
  NewHireFl,
  ScrcrdInd,
  DimMgmtAreaSk,
  ConnCnt,
  RwrkConnCnt,
  ConnPnts,
  ConnMins,
  ConnLbrMins,
  ConnEQADayofRunNeeded,
  ConnEQADayofRunTested,
  ConnEQADayofRunScr,
  ConnEQADayofRunWOJobCnt,
  ConnEQADayAfterPassNeeded,
  ConnEQADayAfterPassInSpec,
  ConnEQADayAfterPassOutSpec,
  ConnEQADayAfterPassScr,
  ConnEQADayAfterPassWOJobCnt,
  ConnTQATotalScr,
  ConnTQATotalQCCnt,
  Conn30DayRwrkCnt,
  RBConn30DayRwrkCnt,
  RestCnt,
  RwrkRestCnt,
  RestPnts,
  RestMins,
  RestLbrMins,
  RestEQADayofRunNeeded,
  RestEQADayofRunTested,
  RestEQADayofRunScr,
  RestEQADayofRunWOJobCnt,
  RestEQADayAfterPassNeeded,
  RestEQADayAfterPassInSpec,
  RestEQADayAfterPassOutSpec,
  RestEQADayAfterPassScr,
  RestEQADayAfterPassWOJobCnt,
  RestTQATotalScr,
  RestTQATotalQCCnt,
  Rest30DayRwrkCnt,
  RBRest30DayRwrkCnt,
  SvcChgCnt,
  RwrkSvcChgCnt,
  SvcChgPnts,
  SvcChgMins,
  SvcChgLbrMins,
  SvcChgEQADayofRunNeeded,
  SvcChgEQADayofRunTested,
  SvcChgEQADayofRunScr,
  SvcChgEQADayofRunWOJobCnt,
  SvcChgEQADayAfterPassNeeded,
  SvcChgEQADayAfterPassInSpec,
  SvcChgEQADayAfterPassOutSpec,
  SvcChgEQADayAfterPassScr,
  SvcChgEQADayAfterPassWOJobCnt,
  SvcChgTQATotalScr,
  SvcChgTQATotalQCCnt,
  SvcChg30DayRwrkCnt,
  RBSrvcChg30DayRwrkCnt,
  RwrkCBPosCnt,
  RwrkResPosCnt,
  CBPos30DayRwrkCnt,
  ResPos30DayRwrkCnt,
  CBPosCnt,
  ResPosCnt,
  TCCnt,
  CBTCCnt,
  ResTCCnt,
  RwrkTCCnt,
  RwrkCBTCCnt,
  RwrkResTCCnt,
  TCPnts,
  TCMins,
  TCLbrMins,
  TCEQADayofRunNeeded,
  TCEQADayofRunTested,
  TCEQADayofRunScr,
  TCEQADayofRunWOJobCnt,
  TCEQADayAfterPassNeeded,
  TCEQADayAfterPassInSpec,
  TCEQADayAfterPassOutSpec,
  TCEQADayAfterPassScr,
  TCEQADayAfterPassWOJobCnt,
  TCTQATotalScr,
  TCTQATotalQCCnt,
  TC30DayRwrkCnt,
  RBTC30DayRwrkCnt,
  CBTC30DayRwrkCnt,
  ResTC30DayRwrkCnt,
  TCNotDoneCnt,
  DiscoCnt,
  RwrkDiscoCnt,
  DiscoPnts,
  DiscoMins,
  DiscoLbrMins,
  DiscoEQADayofRunNeeded,
  DiscoEQADayofRunTested,
  DiscoEQADayofRunScr,
  DiscoEQADayofRunWOJobCnt,
  DiscoEQADayAfterPassNeeded,
  DiscoEQADayAfterPassInSpec,
  DiscoEQADayAfterPassOutSpec,
  DiscoEQADayAfterPassScr,
  DiscoEQADayAfterPassWOJobCnt,
  DiscoTQATotalScr,
  DiscoTQATotalQCCnt,
  Disco30DayRwrkCnt,
  RBDisco30DayRwrkCnt,
  DiscoOnlyWOJobFl,
  SROCnt,
  SROPnts,
  SROMins,
  SROLbrMins,
  AvgFrstJobStrtTm,
  AvgLstJobStopTm,
  StartDimTmSk,
  StopDimTmSk,
  TotalOTAYesCnt,
  TotalOTANoCnt,
  TotalWOJobCnt,
  TotalPnts,
  TotalMins,
  TotalLbrMins,
  PosWrkCnt,
  VOCQ1YesCnt,
  VOCQ1NoCnt,
  VOCQ1UnanswrCnt,
  VOCQ2YesCnt,
  VOCQ2NoCnt,
  VOCQ2UnanswrCnt,
  VOCQ3YesCnt,
  VOCQ3NoCnt,
  VOCQ3UnanswrCnt,
  VOCQ4YesCnt,
  VOCQ4NoCnt,
  VOCQ4UnanswrCnt,
  RwrkConnRankAct,
  RwrkConnRankTotal,
  RwrkRestRankAct,
  RwrkRestRankTotal,
  RwrkSvcChgRankAct,
  RwrkSvcChgRankTotal,
  RwrkTCRankAct,
  RwrkTCRankTotal,
  EQADayofConnRankAct,
  EQADayofConnRankTotal,
  EQADayofRestRankAct,
  EQADayofRestRankTotal,
  EQADayofSvcChgRankAct,
  EQADayofSvcChgRankTotal,
  EQADayofTCRankAct,
  EQADayofTCRankTotal,
  EQADayAfterConnRankAct,
  EQADayAfterConnRankTotal,
  EQADayAfterRestRankAct,
  EQADayAfterRestRankTotal,
  EQADayAfterSvcChgRankAct,
  EQADayAfterSvcChgRankTotal,
  EQADayAfterTCRankAct,
  EQADayAfterTCRankTotal,
  OTARankAct,
  OTARankTotal,
  TQATotalScr,
  TQATotalCnt,
  TQARankAct,
  TQARankTotal,
  VOCRankAct,
  VOCRankTotal,
  Tot30DayRwrkCnt,
  NotDonePctGoal,
  OvrTmPctToPntsGoal,
  OTAGoal,
  PntsPerDayGoal,
  PrdctivityGoal,
  ConnRwrkGoal,
  RestRwrkGoal,
  SvcChgRwrkGoal,
  PosRwrkCBGoal,
  PosRwrkResGoal,
  TCRwrkGoal,
  TCRwrkCBGoal,
  TCRwrkResGoal,
  TQAGoal,
  UtlzGoal,
  VOCGoal,
  NotDonePctThrsh, 
  OvrTmPctToPntsThrsh, 
  OTAThrsh, 
  PntsPerDayThrsh, 
  PrdctivityThrsh, 
  ConnRwrkThrsh, 
  RestRwrkThrsh, 
  SvcChgRwrkThrsh, 
  TCRwrkThrsh, 
  TQAThrsh, 
  UtlzThrsh, 
  VOCThrsh, 
  VOCMinFl,
  TQAMinFl,
  ExecStatId,
  SnapDttm,
  ExecBatchId,
  InsDttm		
)  

SELECT 
DimFsclMthSk,
DimEmployeeSk,
NewHireFl,
MAX(ScrcrdInd),
MAX(DimMgmtAreaSk),
SUM(ConnCnt),
SUM(RwrkConnCnt),
SUM(ConnPnts),
SUM(ConnMins),
SUM(ConnLbrMins),
SUM(COALESCE(ConnEQADayofRunNeeded,0)),
SUM(COALESCE(ConnEQADayofRunTested,0)), 
SUM(COALESCE(ConnEQADayofRunScr,0)),
SUM(COALESCE(ConnEQADayofRunWOJobCnt,0)),
SUM(COALESCE(ConnEQADayAfterPassNeeded,0)),
SUM(COALESCE(ConnEQADayAfterPassInSpec,0)),
SUM(COALESCE(ConnEQADayAfterPassOutSpec,0)),
SUM(COALESCE(ConnEQADayAfterPassScr,0)),
SUM(COALESCE(ConnEQADayAfterPassWOJobCnt,0)),
CASE WHEN SUM(COALESCE(ConnTQATotalScr,0)) = 0 THEN NULL ELSE SUM(COALESCE(ConnTQATotalScr,0)) END,
CASE WHEN SUM(COALESCE(ConnTQATotalQCCnt,0)) = 0 THEN NULL ELSE SUM(COALESCE(ConnTQATotalQCCnt,0)) END, 
SUM(Conn30DayRwrkCnt),
SUM(RBConn30DayRwrkCnt),
SUM(RestCnt),
SUM(RwrkRestCnt),
SUM(RestPnts),
SUM(RestMins),
SUM(RestLbrMins),
SUM(COALESCE(RestEQADayofRunNeeded,0)),
SUM(COALESCE(RestEQADayofRunTested,0)),
SUM(COALESCE(RestEQADayofRunScr,0)),
SUM(COALESCE(RestEQADayofRunWOJobCnt,0)),
SUM(COALESCE(RestEQADayAfterPassNeeded,0)),
SUM(COALESCE(RestEQADayAfterPassInSpec,0)),
SUM(COALESCE(RestEQADayAfterPassOutSpec,0)),
SUM(COALESCE(RestEQADayAfterPassScr,0)),
SUM(COALESCE(RestEQADayAfterPassWOJobCnt,0)),
CASE WHEN SUM(COALESCE(RestTQATotalScr,0)) = 0 THEN NULL ELSE SUM(COALESCE(RestTQATotalScr,0)) END, 
CASE WHEN SUM(COALESCE(RestTQATotalQCCnt,0)) = 0 THEN NULL ELSE SUM(COALESCE(RestTQATotalQCCnt,0)) END,
SUM(Rest30DayRwrkCnt),
SUM(RBRest30DayRwrkCnt),
SUM(SvcChgCnt),
SUM(RwrkSvcChgCnt),
SUM(SvcChgPnts),
SUM(SvcChgMins),
SUM(SvcChgLbrMins),
SUM(COALESCE(SvcChgEQADayofRunNeeded,0)),
SUM(COALESCE(SvcChgEQADayofRunTested,0)),
SUM(COALESCE(SvcChgEQADayofRunScr,0)),
SUM(COALESCE(SvcChgEQADayofRunWOJobCnt,0)),
SUM(COALESCE(SvcChgEQADayAfterPassNeeded,0)),
SUM(COALESCE(SvcChgEQADayAfterPassInSpec,0)),
SUM(COALESCE(SvcChgEQADayAfterPassOutSpec,0)),
SUM(COALESCE(SvcChgEQADayAfterPassScr,0)),
SUM(COALESCE(SvcChgEQADayAfterPassWOJobCnt,0)),
CASE WHEN SUM(COALESCE(SvcChgTQATotalScr,0)) = 0 THEN NULL ELSE SUM(COALESCE(SvcChgTQATotalScr,0)) END,
CASE WHEN SUM(COALESCE(SvcChgTQATotalQCCnt,0)) = 0 THEN NULL ELSE SUM(COALESCE(SvcChgTQATotalQCCnt,0)) END,
SUM(SvcChg30DayRwrkCnt),
SUM(RBSrvcChg30DayRwrkCnt),
SUM(RwrkCBPosCnt),
SUM(RwrkResPosCnt),
SUM(CBPos30DayRwrkCnt),
SUM(ResPos30DayRwrkCnt),
SUM(CBPosCnt),
SUM(ResPosCnt),
SUM(TCCnt),
SUM(CBTCCnt),
SUM(ResTCCnt),
SUM(RwrkTCCnt),
SUM(RwrkCBTCCnt),
SUM(RwrkResTCCnt),
SUM(TCPnts),
SUM(TCMins),
SUM(TCLbrMins),
SUM(COALESCE(TCEQADayofRunNeeded,0)),
SUM(COALESCE(TCEQADayofRunTested,0)),
SUM(COALESCE(TCEQADayofRunScr,0)),
SUM(COALESCE(TCEQADayofRunWOJobCnt,0)),
SUM(COALESCE(TCEQADayAfterPassNeeded,0)),
SUM(COALESCE(TCEQADayAfterPassInSpec,0)),
SUM(COALESCE(TCEQADayAfterPassOutSpec,0)),
SUM(COALESCE(TCEQADayAfterPassScr,0)),
SUM(COALESCE(TCEQADayAfterPassWOJobCnt,0)),
CASE WHEN SUM(COALESCE(TCTQATotalScr,0)) = 0 THEN NULL ELSE SUM(COALESCE(TCTQATotalScr,0)) END,
CASE WHEN SUM(COALESCE(TCTQATotalQCCnt,0)) = 0 THEN NULL ELSE SUM(COALESCE(TCTQATotalQCCnt,0)) END,
SUM(TC30DayRwrkCnt),
SUM(RBTC30DayRwrkCnt),
SUM(CBTC30DayRwrkCnt),
SUM(ResTC30DayRwrkCnt),
SUM(TCNotDoneCnt),
SUM(DiscoCnt),
SUM(RwrkDiscoCnt),
SUM(DiscoPnts),
SUM(DiscoMins),
SUM(DiscoLbrMins),
SUM(COALESCE(DiscoEQADayofRunNeeded,0)),
SUM(COALESCE(DiscoEQADayofRunTested,0)),
SUM(COALESCE(DiscoEQADayofRunScr,0)),
SUM(COALESCE(DiscoEQADayofRunWOJobCnt,0)),
SUM(COALESCE(DiscoEQADayAfterPassNeeded,0)),
SUM(COALESCE(DiscoEQADayAfterPassInSpec,0)),
SUM(COALESCE(DiscoEQADayAfterPassOutSpec,0)),
SUM(COALESCE(DiscoEQADayAfterPassScr,0)),
SUM(COALESCE(DiscoEQADayAfterPassWOJobCnt,0)),
CASE WHEN SUM(COALESCE(DiscoTQATotalScr,0)) = 0 THEN NULL ELSE SUM(COALESCE(DiscoTQATotalScr,0)) END,
CASE WHEN SUM(COALESCE(DiscoTQATotalQCCnt,0)) = 0 THEN NULL ELSE SUM(COALESCE(DiscoTQATotalQCCnt,0)) END,
SUM(Disco30DayRwrkCnt),
SUM(RBDisco30DayRwrkCnt),
CASE WHEN SUM(COALESCE(ConnCnt,0)) + SUM(COALESCE(RestCnt, 0)) + SUM(COALESCE(SvcChgCnt,0)) + SUM(COALESCE(TCCnt,0)) > 0 THEN 0 ELSE 1 END AS DiscoOnlyWOJobFl,
SUM(SROCnt),
SUM(SROPnts),
SUM(SROMins),
SUM(SROLbrMins),
MAX(AvgFrstJobStrtTm),
MAX(AvgLstJobStopTm),
MAX(StartDimTmSk),
MAX(StopDimTmSk),
SUM(TotalOTAYesCnt),
SUM(TotalOTANoCnt),
SUM(TotalWOJobCnt),
SUM(TotalPnts),
SUM(TotalMins),
SUM(TotalLbrMins),
SUM(PosWrkCnt),
SUM(VOCQ1YesCnt),
SUM(VOCQ1NoCnt),
SUM(VOCQ1UnanswrCnt),
SUM(VOCQ2YesCnt),
SUM(VOCQ2NoCnt),
SUM(VOCQ2UnanswrCnt),
SUM(VOCQ3YesCnt),
SUM(VOCQ3NoCnt),
SUM(VOCQ3UnanswrCnt),
SUM(VOCQ4YesCnt),
SUM(VOCQ4NoCnt),
SUM(VOCQ4UnanswrCnt),
MAX(RwrkConnRankAct),
MAX(RwrkConnRankTotal),
MAX(RwrkRestRankAct),
MAX(RwrkRestRankTotal),
MAX(RwrkSvcChgRankAct),
MAX(RwrkSvcChgRankTotal),
MAX(RwrkTCRankAct),
MAX(RwrkTCRankTotal),
MAX(EQADayofConnRankAct),
MAX(EQADayofConnRankTotal),
MAX(EQADayofRestRankAct),
MAX(EQADayofRestRankTotal),
MAX(EQADayofSvcChgRankAct),
MAX(EQADayofSvcChgRankTotal),
MAX(EQADayofTCRankAct),
MAX(EQADayofTCRankTotal),
MAX(EQADayAfterConnRankAct),
MAX(EQADayAfterConnRankTotal),
MAX(EQADayAfterRestRankAct),
MAX(EQADayAfterRestRankTotal),
MAX(EQADayAfterSvcChgRankAct),
MAX(EQADayAfterSvcChgRankTotal),
MAX(EQADayAfterTCRankAct),
MAX(EQADayAfterTCRankTotal),
MAX(OTARankAct),
MAX(OTARankTotal),
CASE WHEN SUM(COALESCE(TQATotalCnt,0)) = 0 THEN NULL ELSE SUM(COALESCE(TQATotalScr,0)) END AS TQATotalScr,
CASE WHEN SUM(COALESCE(TQATotalCnt,0)) = 0 THEN NULL ELSE SUM(COALESCE(TQATotalCnt,0)) END AS TQATotalCnt,
MAX(TQARankAct),
MAX(TQARankTotal),
MAX(VOCRankAct),
MAX(VOCRankTotal),
SUM(Tot30DayRwrkCnt),
MAX(NotDonePctGoal),
MAX(OvrTmPctToPntsGoal),
MAX(OTAGoal),
MAX(PntsPerDayGoal),
MAX(PrdctivityGoal),
MAX(ConnRwrkGoal),
MAX(RestRwrkGoal),
MAX(SvcChgRwrkGoal),
MAX(PosRwrkCBGoal),
MAX(PosRwrkResGoal),
MAX(TCRwrkGoal),
MAX(TCRwrkCBGoal),
MAX(TCRwrkResGoal),
MAX(TQAGoal),
MAX(UtlzGoal),
MAX(VOCGoal),
MAX(NotDonePctThrsh), 
MAX(OvrTmPctToPntsThrsh), 
MAX(OTAThrsh), 
MAX(PntsPerDayThrsh), 
MAX(PrdctivityThrsh), 
MAX(ConnRwrkThrsh), 
MAX(RestRwrkThrsh), 
MAX(SvcChgRwrkThrsh), 
MAX(TCRwrkThrsh), 
MAX(TQAThrsh), 
MAX(UtlzThrsh), 
MAX(VOCThrsh), 
MAX(VOCMinFl),
MAX(TQAMinFl),
V_ES_ID,
V_CURR_BUS_DT,
V_BATCH_ID,
V_RUN_TMSP			 

FROM  DLBIFO.ML_BBT
GROUP BY DimFsclMthSk, DimEmployeeSk, NewHireFl ; 


-- Update Execution Status with step results
--	CALL XBIETLLOG.SpXBIExecutionStatus ('C', V_ES_ID, 'SpFctBBTTechWOJobSumMth' , V_Step_Name, 'XBITbls.FctBBTTechWOJobSumMth', 1);	         	 

--------------- STEP 20 End -------------------   
  
  
  --------------- STEP 21 Begin --------------- 
  
  -- Initialize new Execution Status entry		
SET V_Step_Name = 'Step 21 - Collect statistics on target table';
--	CALL XBIETLLOG.SpXBIExecutionStatus ('R', V_ES_ID, 'SpFctBBTTechWOJobSumMth' , V_Step_Name, 'XBITbls.FctBBTTechWOJobSumMth', 0);

--	CALL XBIUtils.SpXBICollectStatistics('XBITbls', 'FctBBTTechWOJobSumMth', 0);

-- Update Execution Status with step results
--	CALL XBIETLLOG.SpXBIExecutionStatus ('C', V_ES_ID, 'SpFctBBTTechWOJobSumMth' , V_Step_Name,'XBITbls.FctBBTTechWOJobSumMth', 0);	           

--------------- STEP 21 End -------------------   	 
  
  
  --------------- STEP 22 Begin --------------- 
  
  -- Initialize new Execution Status entry		
SET V_Step_Name = 'Step 22 - Delete data from temp table';
--CALL XBIETLLOG.SpXBIExecutionStatus ('R', V_ES_ID, 'SpFctBBTTechWOJobSumMth' , V_Step_Name, 'DLBIFO.ML_BBT', 1);

--	DELETE  FROM DLBIFO.ML_BBT ALL;

-- Update Execution Status with step results
--	CALL XBIETLLOG.SpXBIExecutionStatus ('C', V_ES_ID, 'SpFctBBTTechWOJobSumMth' , V_Step_Name,'DLBIFO.ML_BBT', 1);	           

--------------- STEP 22 End -------------------   	 
  
  -- Complete SP status logging
--	CALL XBIETLLOG.SpXBIExecutionStatus ('R', V_ES_ID, 'SpFctBBTTechWOJobSumMth', 'ETLComplete:FctBBTTechWOJobSumMth', 'XBITbls.FctBBTTechWOJobSumMth', 0);
--CALL XBIETLLOG.SpXBIExecutionStatus ('C', V_ES_ID, 'SpFctBBTTechWOJobSumMth', 'ETLComplete:FctBBTTechWOJobSumMth', 'XBITbls.FctBBTTechWOJobSumMth', 0);

END LABEL_MAIN;						

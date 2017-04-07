
SELECT ThruFsclMth , HrNum,ProdAct, OTAAct,ResPosRank,ResPosTotalTech,ResTCRank,ResTCTotalTech,CBPosRank,CBPosTotalTech,
CBTCRank,CBTCTotalTech,ProdRank,ProdTotalTech,OTARank,OTATotalTech,ResPosAct,ResTCAct,CBPosAct,CBTCAct,
ResPosPnts,ResTcPnts,CBPosPnts,CBTCPnts,ProdPnts,OTAPnts
FROM 
XBITBLSV.RPTBBTScrcrdTechMthLgcy


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



SELECT ColumnName
FROM DBC.COLUMNS
WHERE DatabaseName='XBITBLSv' 
AND TABLENAME='FctSysTechWOJobMthMbl ';


SELECT	TOP 5 A.ThruFsclMth AS D, A.HrNum AS ID,  A.ProdAct AS Actual_Productivity,
		A.OTAAct AS Actual_OTA,A.ResPosRank AS Rank_resi_pos,
A.ResPosTotalTech AS Total_tech_resi_pos, A.ResTCRank AS RANK_Resi_Trouble,
		A.ResTCTotalTech AS Total_techs_Resi_Trouble,
A.CBPosRank AS RANK_SB_positive,A.CBPosTotalTech AS Total_Techs_SB_positive,
A.CBTCRank AS RANK_SB_trouble,A.CBTCTotalTech AS Total_Techs_SB_negative,
		A.ProdRank AS Rank_Productivity ,

A.ProdTotalTech AS Total_Productivity,A.OTARank,A.OTATotalTech,
		A.ResPosAct,A.ResTCAct,A.CBPosAct,A.CBTCAct,
A.ResPosPnts,A.ResTcPnts,A.CBPosPnts,A.CBTCPnts,A.ProdPnts,A.OTAPnts,
		A.ResPosCnt,
		A.ResTCCnt  ,  A.CBPosCnt , A.CBTCCnt, A.QuotaPnts, A.MtrcTmPeriod,
		A.TotalPnts AS Total,B.*
		
		

FROM

(
SELECT	BusDt, ThruFsclMth, ThruFsclMthSk, HrNum, DimFsclMthSk,
		TechNm, TechTitle, TechSrcKMARef, KMADesc, DivisionDesc, SupHrNum,
		SupNm, SupTitle, LOADays, TmInPosition, MtrcTmPeriod, ScrcdGrp,
		ResPosCnt, ResTCCnt, CBPosCnt, CBTCCnt, TotalQualWOCnt, RwrkResPosCnt,
		RwrkResTCCnt, RwrkCBPosCnt, RwrkCBTCCnt, ResPosAct, ResTCAct,
		CBPosAct, CBTCAct, SupQual, SupThrs, ResPosTotalTech, ResTCTotalTech,
		CBPosTotalTech, CBTCTotalTech, ResPosRank, ResTCRank, CBPosRank,
		CBTCRank, ResPosPnts, ResTcPnts, CBPosPnts, CBTCPnts, WghtRwrkPnts,
		ResPosPerc, ResTCPerc, CBPosPerc, CBTCPerc, WghtResPosPnts, WghtResTcPnts,
		WghtCBPosPnts, WghtCBTCPnts, QuotaPnts, ProdMins, ProdAct, ProdTotalTech,
		ProdRank, ProdPnts, OTAYes, OTANo, OTAAct, OTATotalTech, OTARank,
		OTAPnts, RwrkScrcrdPnts, ProdScrcrdPnts, OTAScrcrdPnts, TotalTechs,
		TotalPnts, ScrcrdRank, TechScrcrdCurrTier, ExecStatId, SnapDttm,
		ExecBatchId, InsDttm
FROM XBIAQINTRPTV.RptBBTScrcrdSupMthLgcy)  AS A INNER JOIN 

XBIAQINTRPTV.RptBBTScrcrdSupMthLgcy AS B 
	ON A.HrNum=B.HrNum
WHERE  A.MtrcTmPeriod=B.MtrcTmPeriod 
ORDER BY A.HrNum 


SELECT HrNum,  resPosCnt, restccnt, cbposcnt, cbtccnt FROM  XBIAQINTRPTV.RptBBTScrcrdSupMthLgcy  
where 1=1
--and HrNum = 1000022
and MTRCTMPeriod = 'Month'

minus

Select Lvl1mgmtID, SUM(ResPosCnt), sum(restccnt), SUM(cbposcnt), SUM(cbtccnt) FROM XBIAQINTRPTV.FctBBTScrcrdTechSumDlyLgcy 
where 1=1
--and Lvl1mgmtID = 1000022
and scmonthyear = 201702
group by 1
;

SELECT ColumnName, 'FctWOJob'
			FROM DBC.COLUMNS
			WHERE DatabaseName='XBITBLSv' 
			AND TABLENAME='FctWOJob'

			UNION 
			SELECT ColumnName, 'DimWOJobStat'
			FROM DBC.COLUMNS
			WHERE DatabaseName='XBITBLSv' 
			AND TABLENAME='DimWOJobStat'
			

			UNION 
			SELECT ColumnName, 'DimWOJobClass'
			FROM DBC.COLUMNS
			WHERE DatabaseName='XBITBLSv' 
			AND TABLENAME='DimWOJobClass'

			UNION 
			SELECT ColumnName, 'DimDate'
			FROM DBC.COLUMNS
			WHERE DatabaseName='XBITBLSv' 
			AND TABLENAME='DimDate'

			UNION 
			SELECT ColumnName, 'DimSVCUnit'
			FROM DBC.COLUMNS
			WHERE DatabaseName='XBITBLSv' 
			AND TABLENAME='DimSVCUnit'

			UNION 
			SELECT ColumnName, 'DimWOJob'
			FROM DBC.COLUMNS
			WHERE DatabaseName='XBITBLSv' 
			AND TABLENAME='DimWOJob'

			UNION 
			SELECT ColumnName, 'DimAcct'
			FROM DBC.COLUMNS
			WHERE DatabaseName='XBITBLSv' 
			AND TABLENAME='DimAcct'

			UNION 
			SELECT ColumnName, 'DimEmployee'
			FROM DBC.COLUMNS
			WHERE DatabaseName='XBITBLSv' 
			AND TABLENAME='DimEmployee'
		


SELECT  G.FullNm AS Customer_N,F.ComplDttm AS Comp_Date,
F.OrdNum AS OrdN,E.AddrLine1 AS AddLine, 
D.CalDt  AS SCH_Date,C.WOJobClassDesc AS Work_order_status , H.LastNm||', '|| H.FirstNm 
AS Tech_N,H.TitlNm AS TitlN
FROM
XBITBLSV.FctWOJob AS A 
INNER JOIN XBITBLSV.DimWOJobClass AS C ON A.DimWOJobClassSk=C.DimWOJobClassSk
INNER JOIN XBITBLSV.DimDate AS D ON D.DimDateSk=A.WOJobCmpltDimDtSk
INNER JOIN XBITBLSV.DimSVCUnit AS E  ON E.DimSvcUnitSk=A.DimSVCUnitSk
INNER JOIN XBITBLSV.DimEmployee AS H ON A.WOJobTechDimEmployeeSk=H.DimEmployeeSk 
INNER JOIN XBITBLSV.DimAcct AS G ON A.DimAcctSk=G.DimAcctSk 
INNER JOIN XBITBLSV.DimWOJob AS F ON A.DimWOJobSk=F.DimWOJobSk



SELECT  G.FullNm AS Customer_N,D.CALDT AS Comp_Date,
F.OrdNum AS OrdN,E.AddrLine1 AS AddLine, 
T.CalDt  AS SCH_Date,C.WOJobClassDesc AS Work_order_status , H.LastNm||', '|| H.FirstNm 
AS Tech_N,H.TitlNm AS TitlN
FROM
XBITBLSV.FctWOJob AS A 
INNER JOIN XBITBLSV.DimWOJobClass AS C ON A.DimWOJobClassSk=C.DimWOJobClassSk
INNER JOIN XBITBLSV.DimDate AS D ON D.DimDateSk=A.WOJobCmpltDimDtSk
INNER JOIN XBITBLSV.DimDate AS T on T.DimDateSk = A.WOJobCurrSchedDimDtSk
INNER JOIN XBITBLSV.DimSVCUnit AS E  ON E.DimSvcUnitSk=A.DimSVCUnitSk
INNER JOIN XBITBLSV.DimEmployee AS H ON A.WOJobTechDimEmployeeSk=H.DimEmployeeSk 
INNER JOIN XBITBLSV.DimAcct AS G ON A.DimAcctSk=G.DimAcctSk 
INNER JOIN XBITBLSV.DimWOJob AS F ON A.DimWOJobSk=F.DimWOJobSk
WHERE OrdNum = '10006634205710391'


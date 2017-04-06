
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

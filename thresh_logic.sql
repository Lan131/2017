SELECT TOP 20  ResPosCnt AS Resi_pos_YTD ,TotalPnts AS Total_YTD,MtrcTmPeriod 
FROM 

XBITBLSV.RptBBTScrcrdTechMthLgcy
WHERE  MtrcTmPeriod LIKE 'YTD' AND Total_YTD>0 AND  Resi_pos_YTD <120 

SELECT TOP 20   ResPosCnt AS Resi_pos_QTD ,TotalPnts AS Total_QTD,MtrcTmPeriod 
FROM 

XBITBLSV.RptBBTScrcrdTechMthLgcy
WHERE  MtrcTmPeriod LIKE 'QTD' AND Total_QTD>0 AND  Resi_pos_QTD <30

SELECT TOP 20   ResPosCnt AS Resi_pos_MTD ,TotalPnts AS Total_MTD,MtrcTmPeriod 
FROM 

XBITBLSV.RptBBTScrcrdTechMthLgcy
WHERE  MtrcTmPeriod LIKE '%M%' AND Total_MTD>0 AND  Resi_pos_MTD <10

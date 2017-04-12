
SELECT * FROM 
XBIMdmV.MdmPsftEmpMgmtArea WHERE HrNum IN

(SELECT Main1.HR AS H
FROM
(SELECT  b.EMP_NUM AS HR,B.SYS ,B.PRIN,B.FIBR_NODE AS F1 ,a.KMADesc AS KMA FROM 
XBIMdmV.MdmSysPrinNodeMgmtArea  AS a 
INNER JOIN XDW_V.NOP_TECH_MAP_PRIM AS b ON a.FIBRNODE=b.FIBR_NODE 
WHERE a.DimFsclMthSk=201703 
AND DATE '2017-03-01' < COALESCE(b.VLD_TO_DT, CURRENT_DATE) 
MINUS
SELECT b.EMP_NUM, B.SYS ,B.PRIN,B.FIBR_NODE ,a.MgmtArea AS MGMT FROM 
XBIMdmV.MdmPsftEmpMgmtArea  AS a 
INNER JOIN XDW_V.NOP_TECH_MAP_PRIM AS b ON a.HrNum=b.EMP_NUM 
WHERE a.DimFsclMthSk=201703) AS MAIN1

INNER JOIN 

(SELECT  b.EMP_NUM,B.SYS ,B.PRIN,B.FIBR_NODE AS F2 ,a.MgmtArea AS MGMT FROM 
XBIMdmV.MdmPsftEmpMgmtArea  AS a 
INNER JOIN XDW_V.NOP_TECH_MAP_PRIM AS b ON a.HrNum=b.EMP_NUM
WHERE a.DimFsclMthSk=201703 
AND DATE '2017-03-01' < COALESCE(b.VLD_TO_DT, CURRENT_DATE) 
MINUS 
SELECT  b.EMP_NUM,B.SYS ,B.PRIN,B.FIBR_NODE ,a.KMADesc AS KMA FROM 
XBIMdmV.MdmSysPrinNodeMgmtArea  AS a 
INNER JOIN XDW_V.NOP_TECH_MAP_PRIM AS b ON a.FIBRNODE=b.FIBR_NODE 
WHERE a.DimFsclMthSk=201703) AS MAIN2 

ON MAIN1.SYS=MAIN2.SYS AND MAIN1.PRIN=MAIN2.PRIN AND MAIN1.F1=MAIN2.F2)

;

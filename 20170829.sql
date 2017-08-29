/*drop table DLBIFO.Dummy_data;
create multiset table DLBIFO.Dummy_data as (select * from XbiTblsV.FctSysTechScrcrdMth where DimFsclMthSk=201706 SAMPLE  .05 ) with data;
select * from DLBIFO.Dummy_data;

update DLBIFO.Dummy_data
set KMARnk=null,
KMATier=null,
KMATier3Mnth=null,
KMATierYTD=null,
KMATierPrevYr=null,
FsclMthSeqNum=211,
DimFsclMthSk='201707';*/


drop table DLBIFO.FctSysTechScrcrdMth_rnk;

CREATE MULTISET TABLE DLBIFO.FctSysTechScrcrdMth_rnk ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      HrNum VARCHAR(100) CHARACTER SET LATIN NOT CASESPECIFIC,
      FsclMthSeqNum INTEGER,
      DimEmployeeSk INTEGER,
      PrimNodeCnt INTEGER,
      PrimNodeScr DECIMAL(10,4),
      SecNodeCnt INTEGER,
      SecNodeScr DECIMAL(10,4),
      PrimNodeWght DECIMAL(5,2),
      SecNodeWght DECIMAL(5,2),
      TotWghtNodeScr DECIMAL(14,6),
      IndLECnt INTEGER,
      IndLECntOnPMA INTEGER,
      IndLEAttr DECIMAL(8,4),
      IndLEAttrScr DECIMAL(5,2),
      IndLEAttrScrWght DECIMAL(3,2),
      TeamLEComplByTech INTEGER,
      TeamLECnt INTEGER,
      TeamLEAttr DECIMAL(8,4),
      TeamLEAttrScr DECIMAL(5,2),
      TeamLEAttrWght DECIMAL(3,2),
      TotWghtLEAttrScr DECIMAL(16,8),
      TotLEWrkOrd INTEGER,
      TotRptLEWrkOrd INTEGER,
      TotNonRptRte DECIMAL(7,4),
      TotNdeHlthScr DECIMAL(14,8),
      TotAttrScr DECIMAL(9,5),
      TotLERptRateScr DECIMAL(9,6),
      TotScr DECIMAL(14,8),
      KMARnk INTEGER,
      KMATier VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC,
      KMATier3Mnth VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC,
      KMATierYTD VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC,
      KMATierPrevYr VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC,
      DaysOff INTEGER,
      TimeInPosition VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC,
      KMATechCnt INTEGER,
      ExecStatId BIGINT,
      SnapDttm TIMESTAMP(6),
      ExecBatchId BIGINT,
      InsDttm TIMESTAMP(6),
      UpdDttm TIMESTAMP(6),
      RecOpInd CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC,
      DimFsclMthSk INTEGER)
PRIMARY INDEX ( HrNum ,FsclMthSeqNum ,DimEmployeeSk );

drop table DLBIFO.FctSysTechScrcrdMth;

CREATE MULTISET TABLE DLBIFO.FctSysTechScrcrdMth ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      HrNum VARCHAR(100) CHARACTER SET LATIN NOT CASESPECIFIC,
      FsclMthSeqNum INTEGER,
      DimEmployeeSk INTEGER,
      PrimNodeCnt INTEGER,
      PrimNodeScr DECIMAL(10,4),
      SecNodeCnt INTEGER,
      SecNodeScr DECIMAL(10,4),
      PrimNodeWght DECIMAL(5,2),
      SecNodeWght DECIMAL(5,2),
      TotWghtNodeScr DECIMAL(14,6),
      IndLECnt INTEGER,
      IndLECntOnPMA INTEGER,
      IndLEAttr DECIMAL(8,4),
      IndLEAttrScr DECIMAL(5,2),
      IndLEAttrScrWght DECIMAL(3,2),
      TeamLEComplByTech INTEGER,
      TeamLECnt INTEGER,
      TeamLEAttr DECIMAL(8,4),
      TeamLEAttrScr DECIMAL(5,2),
      TeamLEAttrWght DECIMAL(3,2),
      TotWghtLEAttrScr DECIMAL(16,8),
      TotLEWrkOrd INTEGER,
      TotRptLEWrkOrd INTEGER,
      TotNonRptRte DECIMAL(7,4),
      TotNdeHlthScr DECIMAL(14,8),
      TotAttrScr DECIMAL(9,5),
      TotLERptRateScr DECIMAL(9,6),
      TotScr DECIMAL(14,8),
      KMARnk INTEGER,
      KMATier VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC,
      KMATier3Mnth VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC,
      KMATierYTD VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC,
      KMATierPrevYr VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC,
      DaysOff INTEGER,
      TimeInPosition VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC,
      KMATechCnt INTEGER,
      ExecStatId BIGINT,
      SnapDttm TIMESTAMP(6),
      ExecBatchId BIGINT,
      InsDttm TIMESTAMP(6),
      UpdDttm TIMESTAMP(6),
      RecOpInd CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC,
      DimFsclMthSk INTEGER)
PRIMARY INDEX ( HrNum ,FsclMthSeqNum ,DimEmployeeSk );




insert into DLBIFO.FctSysTechScrcrdMth_rnk
select * from XbiTblsV.FctSysTechScrcrdMth where DimFsclMthSk=201707;

--insert into DLBIFO.FctSysTechScrcrdMth_rnk
--select * from DLBIFO.Dummy_data;


update DLBIFO.FctSysTechScrcrdMth_rnk
set KMARnk=null,
KMATier=null,
KMATier3Mnth=null,
KMATierYTD=null,
KMATierPrevYr=null;

insert into DLBIFO.FctSysTechScrcrdMth
select * from XbiTblsV.FctSysTechScrcrdMth where DimFsclMthSk=201707;

delete DLBIFO.LDSpFctSysTechScrcrdMth001;

	INSERT INTO DLBIFO.LDSpFctSysTechScrcrdMth001
			(	HrNum,
				KMADesc,
				TotScr,
				KMARnk,
				KMAPctRnk,
				KMAPctRnk3Mnth,
				KMAPctRnkYTD,
				KMATechCnt
				)
        
        SELECT     
        FCT.HrNum,
        MA.OldTechKMADesc,  
        FCT.TOTSCR,
        RANK() OVER (
        PARTITION BY  MA.OldTechKMADesc ORDER BY YTD.AVG_TOTAL_SCORE DESC 
        ) KMA_RANK,
        PERCENT_RANK() OVER (
        PARTITION BY  MA.OldTechKMADesc ORDER BY FCT.TOTSCR ASC 
        ) KMA_PCT_RANK,
        PERCENT_RANK() OVER (
        PARTITION BY  MA.OldTechKMADesc ORDER BY RNK3.AVG_TOTAL_SCORE ASC 
        ) KMA_PCT_RANK_3_MNTH,
        PERCENT_RANK() OVER (
        PARTITION BY  MA.OldTechKMADesc ORDER BY YTD.AVG_TOTAL_SCORE ASC 
        ) KMA_PCT_RANK_YTD,
        CNT.TECH_COUNT

        FROM     
        DLBIFO.FctSysTechScrcrdMth_rnk FCT
        LEFT JOIN (SELECT HrNum, OldTechKmaDesc, MAX(DimEmployeeSk) MaxSk FROM XBITblsV.DimEmployeeCV GROUP BY 1,2) MA ON (FCT.HrNum=MA.HrNum) -- CID 005
        LEFT JOIN 
        (
        SELECT
        HrNum,
        AVG(TotScr) AVG_TOTAL_SCORE
        FROM     DLBIFO.FctSysTechScrcrdMth_rnk
        WHERE FsclMthSeqNum BETWEEN 211 AND COALESCE(211 ,211 - 2)
        GROUP BY HrNum
        ) RNK3
        ON RNK3.HrNum = FCT.HrNum
        LEFT JOIN 
        (
        SELECT
        HrNum,
        AVG(TotScr) AVG_TOTAL_SCORE
        FROM     DLBIFO.FctSysTechScrcrdMth_rnk
        WHERE     FsclMthSeqNum BETWEEN 205 AND COALESCE(211 ,211 - 2)
        GROUP BY     HrNum
        ) YTD
        ON YTD.HrNum = FCT.HrNum
        LEFT JOIN 
        (
        SELECT 
        MA.OldTechKMADesc, 
        COUNT(*) TECH_COUNT
        FROM     DLBIFO.FctSysTechScrcrdMth_rnk TSC
        LEFT JOIN (SELECT HrNum, OldTechKmaDesc, MAX(DimEmployeeSk) MaxSk FROM XBITblsV.DimEmployeeCV GROUP BY 1,2) MA ON (TSC.HrNum=MA.HrNum) -- CID 005
        WHERE     FsclMthSeqNum = COALESCE(211 ,211 - 2)
        GROUP BY   OldTechKMADesc 
        ) CNT
        ON CNT.OldTechKMADesc =  MA.OldTechKMADesc 
        WHERE FCT.FsclMthSeqNum = COALESCE(211 ,211 - 2);
		
	--	'Tier 5 (Consistently Exceeds)','Tier 4 (Sometimes Exceeds)','Tier 3 (Consistently Meets)','Tier 2 (Sometimes Meets)','Tier 1 (Does Not Meet)'
		UPDATE 	FCT
	FROM	DLBIFO.FctSysTechScrcrdMth	FCT,
			        DLBIFO.LDSpFctSysTechScrcrdMth001 RNK
	SET KMARnk = RNK.KMARnk,
		KMATier = 	CASE 
						WHEN RNK.KMAPctRnk BETWEEN 0 AND .05
							THEN 'Tier 1 (Does Not Meet)'
						WHEN RNK.KMAPctRnk > .05
							AND RNK.KMAPctRnk <= .25
							THEN 'Tier 2 (Sometimes Meets)'
						WHEN RNK.KMAPctRnk > .25
							AND RNK.KMAPctRnk <= .75
							THEN 'Tier 3 (Consistently Meets)'
						WHEN RNK.KMAPctRnk > .75
							AND RNK.KMAPctRnk <= .95
							THEN 'Tier 4 (Sometimes Exceeds)'
						ELSE 'Tier 5 (Consistently Exceeds)'
					END,
		KMATier3Mnth = 	CASE
							WHEN RNK.KMAPctRnk3Mnth BETWEEN 0 AND .05
									THEN 'Tier 1 (Does Not Meet)'
							WHEN RNK.KMAPctRnk3Mnth > .05
								AND RNK.KMAPctRnk3Mnth <= .25
								THEN 'Tier 2 (Sometimes Meets)'
							WHEN RNK.KMAPctRnk3Mnth > .25
								AND RNK.KMAPctRnk3Mnth <= .75
								THEN 'Tier 3 (Consistently Meets)'
							WHEN RNK.KMAPctRnk3Mnth > .75
								AND RNK.KMAPctRnk3Mnth <= .95
								THEN 'Tier 4 (Sometimes Exceeds)'
							ELSE 'Tier 5 (Consistently Exceeds)'
						END,
		KMATierYTD = 	CASE
							WHEN RNK.KMAPctRnkYTD BETWEEN 0 AND .05
								THEN 'Tier 1 (Does Not Meet)'
							WHEN RNK.KMAPctRnkYTD > .05
								AND RNK.KMAPctRnkYTD <= .25
								THEN  'Tier 2 (Sometimes Meets)'
							WHEN RNK.KMAPctRnkYTD > .25
								AND RNK.KMAPctRnkYTD <= .75
								THEN 'Tier 3 (Consistently Meets)'
							WHEN RNK.KMAPctRnkYTD > .75
								AND RNK.KMAPctRnkYTD <= .95
								THEN  'Tier 4 (Sometimes Exceeds)'
							ELSE 'Tier 5 (Consistently Exceeds)'
						END,
		KMATechCnt = RNK.KMATechCnt
	WHERE FCT.HrNum = RNK.HrNum
	AND FCT.FsclMthSeqNum = COALESCE(211 ,211 - 2);
	
	
	  	UPDATE TGT
  FROM DLBIFO.FctSysTechScrcrdMth TGT,
  	(SELECT a.HrNum, a.FsclMthSeqNum, a.DimEmployeeSk, d.KMATierYTD KMATierPrevYr
 	FROM DLBIFO.FctSysTechScrcrdMth a
    	JOIN XBITblsV.DimCalMth b ON (a.DimFsclMthSk=b.DimCalMthSk)
       	 JOIN (SELECT YearNum, MAX(DimCalMthSk) MaxMthSk FROM XBITblsV.DimCalMth GROUP BY 1) c ON (b.YearNum-1=c.YearNum)
            	LEFT OUTER JOIN DLBIFO.FctSysTechScrcrdMth d ON (a.HrNum=d.HrNum AND c.MaxMthSk=d.DimFsclMthSk)
  	WHERE a.FsclMthSeqNum = COALESCE(211 ,211 - 2) )SRC
  	SET
 	 KMATierPrevYr = SRC.KMATierPrevYr
 	 WHERE
  	TGT.HrNum = SRC.HrNum
 	 AND TGT.FsclMthSeqNum = SRC.FsclMthSeqNum
  	AND TGT.DimEmployeeSk = SRC.DimEmployeeSk
  	;
	
	select A.*,B.* from
		(select HrNum,KMARnk,KMATier from XbiTblsV.FctSysTechScrcrdMth where FsclMthSeqNum=211) as A
	
	inner join
	
		(select HrNum,KMARnk,KMATier  from DLBIFO.FctSysTechScrcrdMth) as B on A.HrNum=B.Hrnum;
		
		select HrNum,KMARnk,KMATier from XbiTblsV.FctSysTechScrcrdMth where FsclMthSeqNum=211
	minus
		select HrNum,KMARnk,KMATier  from DLBIFO.FctSysTechScrcrdMth

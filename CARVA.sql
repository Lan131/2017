
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


delete from DLBIFO.FctSysTechScrcrdMth_rnk;
delete from DLBIFO.FctSysTechScrcrdMth;


insert into DLBIFO.FctSysTechScrcrdMth_rnk
select * from dlbifo.CARVA
where
hrnum in ('1512119', '1512631', '1507698', '1507785', '1507816', '1507891', '1510116', '1510845', '1512003', '1507630', '1507690', '1515136', '1510565', '1507804', '1515135', '1507649', '1515184', '1507908', '1515733', '1517835', '1510844', '1519590', '1511834', '1516617', '1517147', '1514990', '1507744', '1514512', '1507700', '1512748', '1512085', '1507788', '1514311', '1513051', '1522324', '1515046', '1507818')

;


insert into DLBIFO.FctSysTechScrcrdMth_rnk
select * from XbiTblsV.FctSysTechScrcrdMth where HrNum not in ('1512119', '1512631', '1507698', '1507785', '1507816', '1507891', '1510116', '1510845', '1512003', '1507630', '1507690', '1515136', '1510565', '1507804', '1515135', '1507649', '1515184', '1507908', '1515733', '1517835', '1510844', '1519590', '1511834', '1516617', '1517147', '1514990', '1507744', '1514512', '1507700', '1512748', '1512085', '1507788', '1514311', '1513051', '1522324', '1515046', '1507818')
and      FsclMthSeqNum BETWEEN 205 AND COALESCE(211 ,211 - 2);


insert into DLBIFO.FctSysTechScrcrdMth_rnk
select * from XbiTblsV.FctSysTechScrcrdMth where HrNum  in ('1512119', '1512631', '1507698', '1507785', '1507816', '1507891', '1510116', '1510845', '1512003', '1507630', '1507690', '1515136', '1510565', '1507804', '1515135', '1507649', '1515184', '1507908', '1515733', '1517835', '1510844', '1519590', '1511834', '1516617', '1517147', '1514990', '1507744', '1514512', '1507700', '1512748', '1512085', '1507788', '1514311', '1513051', '1522324', '1515046', '1507818')
and      FsclMthSeqNum BETWEEN 205 AND 207;




update DLBIFO.FctSysTechScrcrdMth_rnk
set KMARnk=null,
KMATier=null,
KMATier3Mnth=null,
KMATierYTD=null,
KMATierPrevYr=null;


insert into DLBIFO.FctSysTechScrcrdMth
select * from DLBIFO.FctSysTechScrcrdMth_rnk;




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
        WHERE FsclMthSeqNum BETWEEN 209 AND COALESCE(211 ,211 - 2)
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
            	LEFT OUTER JOIN XbiTblsV.FctSysTechScrcrdMth d ON (a.HrNum=d.HrNum AND c.MaxMthSk=d.DimFsclMthSk)
  	WHERE a.FsclMthSeqNum = COALESCE(211 ,211 - 2) )SRC
  	SET
 	 KMATierPrevYr = SRC.KMATierPrevYr
 	 WHERE
  	TGT.HrNum = SRC.HrNum
 	 AND TGT.FsclMthSeqNum = SRC.FsclMthSeqNum
  	AND TGT.DimEmployeeSk = SRC.DimEmployeeSk
  	;
	
	
	select * from DLBIFO.FctSysTechScrcrdMth ;
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	--check
	
	select A.*,B.* from
		(select HrNum,KMARnk,KMATier from XbiTblsV.FctSysTechScrcrdMth where FsclMthSeqNum=211) as A
	
	inner join
	
		(select HrNum,KMARnk,KMATier  from DLBIFO.FctSysTechScrcrdMth) as B on A.HrNum=B.Hrnum;
		
		select HrNum,KMARnk,KMATier from XbiTblsV.FctSysTechScrcrdMth where FsclMthSeqNum=211
	minus
		select HrNum,KMARnk,KMATier  from DLBIFO.FctSysTechScrcrdMth



/*drop table DLBIFO.Dummy_data;
create multiset table DLBIFO.Dummy_data as (select * from XbiTblsV.FctSupSysTechScrcrdMth where DimFsclMthSk=201706 SAMPLE  .05 ) with data;
select * from DLBIFO.Dummy_data;
update DLBIFO.Dummy_data
set KMARnk=null,
KMATier=null,
KMATier3Mnth=null,
KMATierYTD=null,
KMATierPrevYr=null,
FsclMthSeqNum=211,
DimFsclMthSk='201707';*/


drop table DLBIFO.FctSupSysTechScrcrdMth_rnk;

CREATE MULTISET TABLE DLBIFO.FctSupSysTechScrcrdMth_rnk ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      DimEmployeeSk INTEGER NOT NULL DEFAULT -1 ,
      DimFsclMthSk INTEGER NOT NULL DEFAULT -1 ,
      FsclMthSeqNum INTEGER NOT NULL DEFAULT -1 ,
      TechSrcKMARef VARCHAR(240) CHARACTER SET LATIN NOT CASESPECIFIC,
      SupHrNum VARCHAR(100) CHARACTER SET LATIN NOT CASESPECIFIC,
      EndMthTechCnt INTEGER,
      ScrdTechCnt INTEGER,
      PrimTotScrdNds INTEGER,
      PrimNodeCnt INTEGER,
      SecTotScrdNds INTEGER,
      SecNodeCnt INTEGER,
      PrimWght DECIMAL(3,2),
      SecWght DECIMAL(5,2),
      WghtGreenNdScr DECIMAL(10,4),
      TotalLEs INTEGER,
      AvgHrsToCompl FLOAT,
      LeATTRScr DECIMAL(4,1),
      LineEscls INTEGER,
      ReptOrdLEs INTEGER,
      TotNonReptRate DECIMAL(15,4),
      TotGrnNdScr DECIMAL(13,6),
      TotATTRScr DECIMAL(7,3),
      TotReptRateScr DECIMAL(15,5),
      CurMthTotScr DECIMAL(15,6),
      CurMthKMARnk INTEGER,
      CurMthTier VARCHAR(6) CHARACTER SET UNICODE NOT CASESPECIFIC,
      TotScr3Mth DECIMAL(15,6),
      Prv3MthTier VARCHAR(40) CHARACTER SET LATIN NOT CASESPECIFIC,
      YTDKMARnk INTEGER,
      YTDKMATier VARCHAR(40) CHARACTER SET LATIN NOT CASESPECIFIC,
      YTDTotScr DECIMAL(15,6),
      PrevYrTotScr DECIMAL(15,6),
      PrevYrTier VARCHAR(40) CHARACTER SET LATIN NOT CASESPECIFIC,
      ExecStatId BIGINT,
      SnapDttm TIMESTAMP(6),
      ExecBatchId BIGINT,
      InsDttm TIMESTAMP(6),
      UpdDttm TIMESTAMP(6),
      RecOpInd CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC)
PRIMARY INDEX ( DimEmployeeSk ,DimFsclMthSk ,TechSrcKMARef );

drop table DLBIFO.FctSupSysTechScrcrdMth;

CREATE MULTISET TABLE DLBIFO.FctSupSysTechScrcrdMth ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      DimEmployeeSk INTEGER NOT NULL DEFAULT -1 ,
      DimFsclMthSk INTEGER NOT NULL DEFAULT -1 ,
      FsclMthSeqNum INTEGER NOT NULL DEFAULT -1 ,
      TechSrcKMARef VARCHAR(240) CHARACTER SET LATIN NOT CASESPECIFIC,
      SupHrNum VARCHAR(100) CHARACTER SET LATIN NOT CASESPECIFIC,
      EndMthTechCnt INTEGER,
      ScrdTechCnt INTEGER,
      PrimTotScrdNds INTEGER,
      PrimNodeCnt INTEGER,
      SecTotScrdNds INTEGER,
      SecNodeCnt INTEGER,
      PrimWght DECIMAL(3,2),
      SecWght DECIMAL(5,2),
      WghtGreenNdScr DECIMAL(10,4),
      TotalLEs INTEGER,
      AvgHrsToCompl FLOAT,
      LeATTRScr DECIMAL(4,1),
      LineEscls INTEGER,
      ReptOrdLEs INTEGER,
      TotNonReptRate DECIMAL(15,4),
      TotGrnNdScr DECIMAL(13,6),
      TotATTRScr DECIMAL(7,3),
      TotReptRateScr DECIMAL(15,5),
      CurMthTotScr DECIMAL(15,6),
      CurMthKMARnk INTEGER,
      CurMthTier VARCHAR(6) CHARACTER SET UNICODE NOT CASESPECIFIC,
      TotScr3Mth DECIMAL(15,6),
      Prv3MthTier VARCHAR(40) CHARACTER SET LATIN NOT CASESPECIFIC,
      YTDKMARnk INTEGER,
      YTDKMATier VARCHAR(40) CHARACTER SET LATIN NOT CASESPECIFIC,
      YTDTotScr DECIMAL(15,6),
      PrevYrTotScr DECIMAL(15,6),
      PrevYrTier VARCHAR(40) CHARACTER SET LATIN NOT CASESPECIFIC,
      ExecStatId BIGINT,
      SnapDttm TIMESTAMP(6),
      ExecBatchId BIGINT,
      InsDttm TIMESTAMP(6),
      UpdDttm TIMESTAMP(6),
      RecOpInd CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC)
PRIMARY INDEX ( DimEmployeeSk ,DimFsclMthSk ,TechSrcKMARef );


delete from DLBIFO.FctSupSysTechScrcrdMth_rnk;
delete from DLBIFO.FctSupSysTechScrcrdMth;



insert into DLBIFO.FctSupSysTechScrcrdMth_rnk
select * from dlbifo.CARVA_sup
where
suphrnum in ('1508128', '1511132', '1507672')
;
--sel * from DLBIFO.FctSupSysTechScrcrdMth_rnk

insert into DLBIFO.FctSupSysTechScrcrdMth_rnk
select * from XbiTblsV.FctSupSysTechScrcrdMth where 
suphrnum not in ('1508128', '1511132', '1507672')
and      FsclMthSeqNum BETWEEN 205 AND COALESCE(211 ,211 - 2);


insert into DLBIFO.FctSupSysTechScrcrdMth_rnk
select * from XbiTblsV.FctSupSysTechScrcrdMth where 
suphrnum in ('1508128', '1511132', '1507672')
and      FsclMthSeqNum BETWEEN 205 AND 207;



update DLBIFO.FctSupSysTechScrcrdMth_rnk
set CurMthKMARnk=null,
CurMthTier=null,
Prv3MthTier=null,
YTDKMATier=null,
YTDKMARnk=null,
PrevYrTier=null;


insert into DLBIFO.FctSupSysTechScrcrdMth
select * from DLBIFO.FctSupSysTechScrcrdMth_rnk;

select * from DLBIFO.FctSupSysTechScrcrdMth;
select * from DLBIFO.FctSupSysTechScrcrdMth_rnk;


--delete duplicated SupHrNum
delete from DLBIFO.FctSupSysTechScrcrdMth
where DimEmployeeSk=3263254 and DimFsclMthSk=201707 and SupHrNum=1511132;

delete from DLBIFO.FctSupSysTechScrcrdMth_rnk
where DimEmployeeSk=3263254 and DimFsclMthSk=201707 and SupHrNum=1511132;

UPDATE TGT
	FROM DLBIFO.FctSupSysTechScrcrdMth TGT, 
	(
	SELECT
	COALESCE(Emp.OldTechSrcKMARef, '-1') AS TechSrcKMARef, -- CID 004
	FctSupScrcrd.SupHRNum,Emp.DimEmployeeSk,
	Emp.TechDivisionDesc AS DivisionDesc
	FROM DLBIFO.FctSupSysTechScrcrdMth FctSupScrcrd 
 	JOIN  XBITblsV.DimEmployeeCV Emp 
	                ON  FctSupScrcrd.SupHRNum = Emp.Lvl1MgmtId AND
	                        Emp.RecOpInd <> 'D' AND 
	                        Emp.ContrInd = 'No'

	          /*  LEFT  JOIN XBITblsV.DimTechnician DCV
	                ON  EMP.AsscId = DCV.AsscId AND 
	                        DCV.RecOpInd <> 'D' AND
	                        DCV. ContrInd = 'No' */  --005 Same join as above so not required
		WHERE COALESCE(FctSupScrcrd.TechSrcKMARef,'-1') = '-1' 
	QUALIFY  ROW_NUMBER() OVER (PARTITION BY  FctSupScrcrd.SupHRNum, COALESCE(FctSupScrcrd.TechSrcKMARef,'-1')  ORDER BY EffDttm DESC) = 1  --003
	) SRC

	SET TechSrcKMARef = COALESCE(SRC.TechSrcKMARef,'-1')
	WHERE 
	TGT.DimEmployeeSk = SRC.DimEmployeeSk
  	AND TGT.FsclMthSeqNum = 211
 	 ;

select * from DLBIFO.FctSupSysTechScrcrdMth;

drop table DLBIFO.LdSpFctSupSysTechScrcrdMth001;



CREATE MULTISET TABLE DLBIFO.LdSpFctSupSysTechScrcrdMth001 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      SupHrNum VARCHAR(100) CHARACTER SET LATIN NOT CASESPECIFIC,
      CurMthKMARnk INTEGER,
      CurMthPctRnk DECIMAL(7,6),
      YTDKMARnk INTEGER,
      YTDTotScr FLOAT,
      TotScr3Mth FLOAT,
      YTDPctRnk DECIMAL(7,6),
      KMAPcntRnk3Mth DECIMAL(7,6),
      PrevYrTotScr DECIMAL(15,6),
      PrevYrPcntRnk DECIMAL(7,6))
PRIMARY INDEX ( SupHrNum );

delete DLBIFO.LdSpFctSupSysTechScrcrdMth001;

 	INSERT INTO DLBIFO.LdSpFctSupSysTechScrcrdMth001
 	 (
	 
 SupHrNum, 
  CurMthKMARnk,
  CurMthPctRnk,
  YTDKMARnk, 
  YTDTotScr, 
  TotScr3Mth,
  YTDPctRnk,
  KMAPcntRnk3Mth,
  PrevYrTotScr,
  PrevYrPcntRnk
  )
  
  SELECT 

  FCT.SupHrNum,
  RANK() OVER (	PARTITION BY FCT.TechSrcKMARef ORDER	BY CurMthTotScr DESC) CurMthKMARnk,
  PERCENT_RANK() OVER (PARTITION BY FCT.TechSrcKMARef ORDER	BY CurMthTotScr ASC) CurMthPctRnk,
  RANK() OVER (PARTITION BY FCT.TechSrcKMARef ORDER	BY YTD.AvgTotScr DESC) YTDKMARnk,
  YTD.AvgTotScr YTDTotScr,
  RNK3.AvgTotScr TotScr3Mth,
  PERCENT_RANK() OVER (PARTITION BY FCT.TechSrcKMARef ORDER	BY YTD.AvgTotScr ASC) YTDPctRnk,  -- CID002
  PERCENT_RANK() OVER (PARTITION BY FCT.TechSrcKMARef ORDER	BY RNK3.AvgTotScr ASC) KMAPcntRnk3Mth,  -- CID002
  PREVYR.PrevYrTotScr,
  PERCENT_RANK() OVER (PARTITION BY FCT.TechSrcKMARef ORDER	BY PREVYR.PrevYrTotScr ASC) PrevYrPcntRnk  -- CID002
  FROM DLBIFO.FctSupSysTechScrcrdMth FCT
		  --JOIN 		XBITblsV.PLDSupSysTechScrcrdAllNd NDS
      --ON FCT.SupHrNum = NDS.SupHrNum  --005 Join not required as base table is derived from this.
      LEFT JOIN (	SELECT 	SupHrNum, CAST(AVG(CurMthTotScr) AS DECIMAL(10,6)) AvgTotScr  --005
									FROM 	DLBIFO.FctSupSysTechScrcrdMth
									WHERE 	FsclMthSeqNum BETWEEN 205 AND 211
									GROUP BY 	SupHrNum
								) YTD
      ON FCT.SupHrNum = YTD.SupHrNum
      LEFT JOIN (
									SELECT 	SupHrNum, CAST(AVG(CurMthTotScr) AS DECIMAL(10,6))AvgTotScr  --005
									FROM 	DLBIFO.FctSupSysTechScrcrdMth
									WHERE FsclMthSeqNum BETWEEN 209 AND 211
									GROUP BY SupHrNum
								) RNK3
      ON FCT.SupHrNum = RNK3.SupHrNum
      LEFT JOIN
            (
              SELECT a.SupHrNum, CASE WHEN 211 <=204 THEN NULL ELSE d.YTDTotScr END PrevYrTotScr -- CID002
 	            FROM DLBIFO.FctSupSysTechScrcrdMth a
              JOIN XBITBLSV.DimCalMth b 
	ON	(a.DimFsclMthSk=b.DimCalMthSk)
              JOIN (
SELECT	YearNum, MAX(DimCalMthSk) MaxMthSk 
FROM	XBITblsV.DimCalMth 
GROUP	BY 1) c 
	ON	(b.YearNum-1=c.YearNum)
            	LEFT OUTER JOIN  XbiTblsV.FctSupSysTechScrcrdMth d 
	ON	(a.SupHrNum=d.SupHrNum 
	AND	c.MaxMthSk=d.DimFsclMthSk)
  	           WHERE a.FsclMthSeqNum = 211
            )PREVYR
      ON FCT.SupHrNum = PREVYR.SupHrNum
    
      WHERE FCT.FsclMthSeqNum = 211;
	  select * from DLBIFO.LdSpFctSupSysTechScrcrdMth001;
	  
 --  SELECT 'Tier 5 (Consistently Exceeds)','Tier 4 (Sometimes Exceeds)',	'Tier 3 (Consistently Meets)','Tier 2 (Sometimes Meets)','Tier 1 (Does Not Meet)'
	--INTO V_TIER_5, V_TIER_4, V_TIER_3, V_TIER_2, V_TIER_1;

			UPDATE 	FCT
	FROM	DLBIFO.FctSupSysTechScrcrdMth	FCT,
			     DLBIFO.LdSpFctSupSysTechScrcrdMth001 as RNK
	SET 		        

  	CurMthKMARnk = RNK.CurMthKMARnk ,
	/**************************************** 005 Start ******************************************/
	CurMthTier =  CASE  WHEN	RNK.CurMthPctRnk BETWEEN 0 AND .05 THEN 'Tier 1 (Does Not Meet)'
								WHEN RNK.CurMthPctRnk > .05 	AND	RNK.CurMthPctRnk <= .25	THEN 'Tier 2 (Sometimes Meets)'
								WHEN RNK.CurMthPctRnk > .25 	AND	RNK.CurMthPctRnk <= .75	THEN 'Tier 3 (Consistently Meets)'
								WHEN RNK.CurMthPctRnk> .75	AND RNK.CurMthPctRnk<= .95 	THEN 'Tier 4 (Sometimes Exceeds)'
								ELSE 'Tier 5 (Consistently Exceeds)' END,
	/**************************************** 005 End ******************************************/
  	YTDKMARnk = RNK.YTDKMARnk ,
    Prv3MthTier = 	CASE  WHEN	RNK.KMAPcntRnk3Mth BETWEEN 0 AND .05 THEN 'Tier 1 (Does Not Meet)'
								WHEN RNK.KMAPcntRnk3Mth > .05 	AND	RNK.KMAPcntRnk3Mth <= .25	THEN 'Tier 2 (Sometimes Meets)'
								WHEN RNK.KMAPcntRnk3Mth > .25 	AND	RNK.KMAPcntRnk3Mth <= .75	THEN 'Tier 3 (Consistently Meets)'
								WHEN RNK.KMAPcntRnk3Mth> .75	AND RNK.KMAPcntRnk3Mth<= .95 	THEN 'Tier 4 (Sometimes Exceeds)'
								ELSE 'Tier 5 (Consistently Exceeds)' END,
    YTDKMATier = 	CASE  WHEN	RNK.YTDPctRnk BETWEEN 0 AND .05 THEN 'Tier 1 (Does Not Meet)'
								WHEN RNK.YTDPctRnk > .05 	AND	RNK.YTDPctRnk <= .25	THEN 'Tier 2 (Sometimes Meets)'
								WHEN RNK.YTDPctRnk > .25 	AND	RNK.YTDPctRnk <= .75	THEN 'Tier 3 (Consistently Meets)'
								WHEN RNK.YTDPctRnk> .75	AND RNK.YTDPctRnk<= .95		THEN 'Tier 4 (Sometimes Exceeds)'
								ELSE 'Tier 5 (Consistently Exceeds)'		END,            
     PrevYrTier = CASE WHEN 211 <=204 THEN NULL  -- CID002
     							WHEN	RNK.PrevYrPcntRnk BETWEEN 0 AND .05	THEN 'Tier 1 (Does Not Meet)'
								WHEN RNK.PrevYrPcntRnk > .05 AND	RNK.PrevYrPcntRnk <= .25 THEN 'Tier 2 (Sometimes Meets)'
								WHEN RNK.PrevYrPcntRnk > .25 AND	RNK.PrevYrPcntRnk <= .75 THEN 'Tier 3 (Consistently Meets)'
								WHEN RNK.PrevYrPcntRnk> .75	AND RNK.PrevYrPcntRnk<= .95	THEN 'Tier 4 (Sometimes Exceeds)'
								ELSE 'Tier 5 (Consistently Exceeds)' 	END,          
  	YTDTotScr = RNK.YTDTotScr, 
  	TotScr3Mth = RNK.TotScr3Mth, 
  	PrevYrTotScr = RNK.PrevYrTotScr
  	WHERE FCT.SupHrNum = RNK.SupHrNum
	AND FCT.FsclMthSeqNum = COALESCE(211 ,211 - 2);
		

select * from DLBIFO.LdSpFctSupSysTechScrcrdMth001;
select * from 		DLBIFO.FctSupSysTechScrcrdMth;


rename table DLBIFO.FctSupSysTechScrcrdMth to DLBIFO.update_carva_sup;
rename table DLBIFO.FctSysTechScrcrdMth to DLBIFO.update_carva_tech;		

	
	
	
	
	
	
	
	

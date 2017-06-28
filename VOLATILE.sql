
INSERT INTO p2718485.V_ML 
SELECT	 
          a17.HrNum 
          FROM 
          DLBIFO.LdSpPLDSysTechScrcrdPriNd003 a15
            LEFT JOIN XBITblsV.DimEmployee a17
          ON /*a15.AsscId=a17.AsscId AND */ a15.CalDt >= a17.EffDttm AND a15.CalDt < a17.ExpDttm--) 
         -- QUALIFY ROW_NUMBER() OVER (PARTITION BY a15.FibrNode, a17.AsscId, a17.Lvl1MgmtId, a17.HrNum, a15.CalDt ORDER	BY a15.TotDvcCnt DESC) = 1 
          WHERE a15.TotDvcCnt >= 15 AND HrNum='1500404'
		 
		  AND      a17.AsscId<>a15.AsscId;

		 
		 
	CREATE VOLATILE MULTISET TABLE p2718485.V_ML ,NO FALLBACK , 
     NO BEFORE JOURNAL, 
     NO AFTER JOURNAL, 
     CHECKSUM = DEFAULT, 
     DEFAULT MERGEBLOCKRATIO 
     ( 
      HrNum VARCHAR(100) CHARACTER SET LATIN NOT CASESPECIFIC)
PRIMARY INDEX ( HrNum );
		  

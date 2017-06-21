

SELECT job.quotapts FROM XBITBLSV.FctWOJob AS job
INNER JOIN XBITBLSV.DimDate AS Dt 
	ON job.WoJobCmpltDimDtSk=Dt.DimDateSk 
INNER JOIN XBITBLSV.DimWoJobResCd AS res
	ON res.DimWoJobResCdSk=job.RsnCd1DimWOJobRsnCdSk

WHERE Dt.CalDt>DATE'2017-05-22' AND res.WoJobResCd LIKE 'ND%' AND res.WoJobResCd<>'ND';

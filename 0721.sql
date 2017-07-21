SHOW PROCEDURE Xbitbls.SpPLDSupSysTechScrcrdPriNd;
SHOW PROCEDURE Xbitbls.SpPLDMgrSysTechScrcrdConslSecNd;
SHOW PROCEDURE Xbitbls.SpFctTWCBHNNodeHelthDly;
SHOW PROCEDURE Xbitbls.SpPLDMgrSysTechScrcrdPriNd;
SHOW PROCEDURE Xbitbls.SpPLDSysTechScrcrdConslPriNd;
SHOW PROCEDURE Xbitbls.SpPLDSupSysTechScrcrdConslSecNd;
SHOW PROCEDURE Xbitbls.SpPLDSupSysTechScrcrdSecNd;
SHOW PROCEDURE Xbitbls.SpPLDSysTechScrcrdConslSecNd;
SHOW PROCEDURE Xbitbls.SpPLDMgrSysTechScrcrdConslPriNd;
SHOW PROCEDURE Xbitbls.SpPLDMgrSysTechScrcrdSecNd;
SHOW PROCEDURE Xbitbls.SpPLDSupSysTechScrcrdConslPriNd;
SHOW PROCEDURE Xbitbls.SpFctTWCBHNNodeHelthDly;
SELECT * FROM DLBIFO.PLDSupSysTechScrcrdPriNd WHERE DimFsclMthSk='201705' INNER JOIN  Xbitblsv.PLDSupSysTechScrcrdPriNd WHERE DimFsclMthSk='201705'



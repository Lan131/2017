CALL DLBIFO.SpPLDSysTechScrcrdPriNd(201705);
--SELECT * FROM DLBIFO.PLDSysTechScrcrdPriNd;
CALL DLBIFO.SpPLDSysTechScrcrdSecNd(201705);
--SELECT * FROM DLBIFO.PLDSysTechScrcrdSecNd;
CALL DLBIFO.SpPLDSysTechScrcrdAllNd();
--SELECT * FROM DLBIFO.PLDSysTechScrcrdallNd;


/*CALL DLBIFO.SpPLDSysTechScrcrdConslPriNd(201705);
--SELECT * FROM DLBIFO.PLDSysTechScrcrdconslPriNd;
CALL DLBIFO.SpPLDSysTechScrcrdConslSecNd(201705);
SELECT * FROM DLBIFO.PLDSysTechScrcrdconslsecNd;
CALL DLBIFO.SpPLDSysTechScrcrdConslAllNd();*/

CALL DLBIFO.SpPLDSysTechScrcrdWOJobAssnDt(201705);
--SELECT * FROM DLBIFO.PLDSysTechScrcrdWOJobAssnDt ;
CALL DLBIFO.SpPLDSysTechScrcrdAllLnEscl(201705);
--SELECT * FROM DLBIFO.PLDSysTechScrcrdAllLnEscl ;


CALL DLBIFO.SpPLDSysTechScrcrdAllLnEsclLgcy(201705);
--SELECT * FROM DLBIFO.PLDSysTechScrcrdAllLnEsclLgcy;
INSERT INTO DLBIFO.PLDSysTechScrcrdAllLnEscl SELECT * FROM DLBIFO.PLDSysTechScrcrdAllLnEsclLgcy;
 --SELECT * FROM DLBIFO.PLDSysTechScrcrdAllLnEscl ;
 
CALL DLBIFO.SpPLDSysTechScrcrdIndvLnEscl();
 --SELECT * FROM DLBIFO.PLDSysTechScrcrdIndvLnEscl ;
                              
CALL DLBIFO.SpPLDSysTechScrcrdLnEsclPriNd(201705);

--SELECT * FROM DLBIFO.PLDSysTechScrcrdLnEsclPriNd;
CALL DLBIFO.SpPLDSysTechScrcrdTeamLnEscl();
--select * from  DLBIFO.PLDSysTechScrcrdTeamLnEscl;
CALL DLBIFO.SpPLDSysTechScrdWOJobRwkLnEscl(201705);
-- select * from DLBIFO.PLDSysTechScrdWOJobRwrkLnEscl
CALL DLBIFO.SpPLDSysTechScrdWOJobRwrkLnEsclLgcy(201705);
--SELECT * FROM DLBIFO.PLDSysTechScrdWOJobRwrkLnEsclLgcy




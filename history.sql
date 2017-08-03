delete from DLBIFO.FctNodeHealthDly;
call DLBIFO.SpFctNodeHealthDlyhist(DATE'2016-12-22',DATE'2017-1-22');
call DLBIFO.SpFctNodeHealthDlyhist(DATE'2016-1-22',DATE'2017-2-22');
call DLBIFO.SpFctNodeHealthDlyhist(DATE'2016-2-22',DATE'2017-3-22');
call DLBIFO.SpFctNodeHealthDlyhist(DATE'2016-3-22',DATE'2017-4-22');
call DLBIFO.SpFctNodeHealthDlyhist(DATE'2016-4-22',DATE'2017-5-22');
call DLBIFO.SpFctNodeHealthDlyhist(DATE'2016-5-22',DATE'2017-6-22');
call DLBIFO.SpFctNodeHealthDlyhist(DATE'2016-6-22',DATE'2017-7-22');
call DLBIFO.SpFctNodeHealthDlyhist(DATE'2016-7-22',CURRENT_DATE);

--select Fct.* from XbiTblsv.FctNodeHealthDly as Fct inner join Xbitblsv.Dimdate as Dt on Dt.DimDateSk=Fct.DimDateSk where Dt.CalDt between Date'2016-12-22' and Current_date ;
--select * from DLBIFO.FctNodeHealthDly

delete from XbiTbls.FctNodeHealthDly 
where DimDateSk in
					(	select Dt.DimDateSk 
						from XbiTblsv.FctNodeHealthDly as Fct inner join Xbitblsv.Dimdate as Dt on Dt.DimDateSk=Fct.DimDateSk 
						where Dt.CalDt between Date'2016-12-22' and Current_date );
						
insert into XbiTbls.FctNodeHealthDly 
select * from DLBIFO.FctNodeHealthDly;



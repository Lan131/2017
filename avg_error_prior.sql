 select Q1.id as id,Q1.error as error,Q1.dt as dt,Q2.avg_error 
 from  
(select A.id as id,A.error as error,A.dt as dt,A.avg_error as avg_error,row_number() over (partition by avg_error,dt order by dt desc) as RN  from ML_time as A ) as Q1
inner join 
(select B.id,B.error,B.dt,B.avg_error,row_number() over (partition by avg_error,dt order by dt desc) as RN  from ML_time as B ) as Q2
on Q1.RN=Q2.RN 
where Datediff(dd,Q1.dt,Q2.dt)=-1
order by Q1.dt desc  ;


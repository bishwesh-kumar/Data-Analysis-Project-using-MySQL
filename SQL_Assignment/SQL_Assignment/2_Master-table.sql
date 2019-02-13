# CREATING MASTER TABLE HAVING DATE AND CLOSING PRICE OF ALL THE SIX STOCKS

create table `Master table` as
select b.`Date`, b.`Close Price` as `Bajaj`, tc.`Close Price` as `TCS`,tv.`Close Price` as `TVS`,
I.`Close Price` as `Infosys`, ei.`Close Price` as `Eicher`,he.`Close Price` as `Hero`
from `Bajaj Auto` b 
join `TCS` tc on b.`Date` = tc.`Date`
join `TVS Motors` tv on b.`Date` = tv.`Date`
join `Infosys` I on b.`Date` = I.`Date` 
join `Eicher Motors` ei on b.`Date` = ei.`Date`
join `Hero Motocorp` he on b.`Date` = he.`Date`
order by 1; 

select * from `Master Table`;
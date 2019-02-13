drop function signal_check;

delimiter $$


create function signal_check(d varchar(20))

returns varchar(20)

deterministic

begin

declare signal_is varchar(20);
set signal_is = (select `signal` from `bajaj2`  # CHECKING FOR BAJAJ STOCK, WE CAN USE OTHER STOCK TABLE AS WELL
where `date` = d);
return signal_is;
end
$$ 
delimiter ;

select signal_check("2018-05-10") ; # OTHER DATE CAN BE PASSED AS PARAMETER TO GET SIGNAL FOR THAT DAY
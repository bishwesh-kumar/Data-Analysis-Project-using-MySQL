# USING THE MOVNG AVERAGE BAJAJ1 TABLE TO GENERATE BUY/SELL/HOLD SIGNAL AND STORING THEM IN BAJAJ2 TABLE

create table bajaj2 as
select `Date`,`Close Price`,
case
WHEN `20 Day MA` > `50 Day MA` AND LAG(`20 Day MA`, 1) OVER w <= LAG(`50 Day MA`, 1) OVER w THEN 'BUY'
     WHEN `20 Day MA` < `50 Day MA` AND LAG(`20 Day MA`, 1) OVER w >= LAG(`50 Day MA`, 1) OVER w THEN 'SELL'
     ELSE 'HOLD' END as 'signal'
     from bajaj1
     window w  as (order by `Date`);
     
     
     
 # USING THE MOVNG AVERAGE EICHER1 TABLE TO GENERATE BUY/SELL/HOLD SIGNAL AND STORING THEM IN EICHER2 TABLE
    
create table `eicher2` as
select `Date`,`Close Price`,
case
WHEN `20 Day MA` > `50 Day MA` AND LAG(`20 Day MA`, 1) OVER w <= LAG(`50 Day MA`, 1) OVER w THEN 'BUY'
     WHEN `20 Day MA` < `50 Day MA` AND LAG(`20 Day MA`, 1) OVER w >= LAG(`50 Day MA`, 1) OVER w THEN 'SELL'
     ELSE 'HOLD' END as 'signal'
     from `eicher1`
     window w  as (order by `Date`);
     

# USING THE MOVNG AVERAGE HERO1 TABLE TO GENERATE BUY/SELL/HOLD SIGNAL AND STORING THEM IN HERO2 TABLE
     
create table `hero2` as
select `Date`,`Close Price`,
case
WHEN `20 Day MA` > `50 Day MA` AND LAG(`20 Day MA`, 1) OVER w <= LAG(`50 Day MA`, 1) OVER w THEN 'BUY'
     WHEN `20 Day MA` < `50 Day MA` AND LAG(`20 Day MA`, 1) OVER w >= LAG(`50 Day MA`, 1) OVER w THEN 'SELL'
     ELSE 'HOLD' END as 'signal'
     from `hero1`
     window w  as (order by `Date`);
     
# USING THE MOVNG AVERAGE INFOSYS1 TABLE TO GENERATE BUY/SELL/HOLD SIGNAL AND STORING THEM IN INFOSYS2 TABLE
     
create table `infosys2` as
select `Date`,`Close Price`,
case
WHEN `20 Day MA` > `50 Day MA` AND LAG(`20 Day MA`, 1) OVER w <= LAG(`50 Day MA`, 1) OVER w THEN 'BUY'
     WHEN `20 Day MA` < `50 Day MA` AND LAG(`20 Day MA`, 1) OVER w >= LAG(`50 Day MA`, 1) OVER w THEN 'SELL'
     ELSE 'HOLD' END as 'signal'
     from `infosys1`
     window w  as (order by `Date`);

# USING THE MOVNG AVERAGE TCS1 TABLE TO GENERATE BUY/SELL/HOLD SIGNAL AND STORING THEM IN TCS2 TABLE
     
create table `tcs2` as
select `Date`,`Close Price`,
case
WHEN `20 Day MA` > `50 Day MA` AND LAG(`20 Day MA`, 1) OVER w <= LAG(`50 Day MA`, 1) OVER w THEN 'BUY'
     WHEN `20 Day MA` < `50 Day MA` AND LAG(`20 Day MA`, 1) OVER w >= LAG(`50 Day MA`, 1) OVER w THEN 'SELL'
     ELSE 'HOLD' END as 'signal'
     from `tcs1`
     window w  as (order by `Date`);
     
     

# USING THE MOVNG AVERAGE TVS1 TABLE TO GENERATE BUY/SELL/HOLD SIGNAL AND STORING THEM IN TVS2 TABLE

create table `tvs2` as
select `Date`,`Close Price`,
case
WHEN `20 Day MA` > `50 Day MA` AND LAG(`20 Day MA`, 1) OVER w <= LAG(`50 Day MA`, 1) OVER w THEN 'BUY'
     WHEN `20 Day MA` < `50 Day MA` AND LAG(`20 Day MA`, 1) OVER w >= LAG(`50 Day MA`, 1) OVER w THEN 'SELL'
     ELSE 'HOLD' END as 'signal'
     from `tvs1`
     window w  as (order by `Date`);
     





































# CREATING BAJAJ STOCK TABLE AND FINDING THE MOVING AVERAGE OF 20 DAYS AND 50 DAYS
create table `bajaj1` (
`Date` date ,
`Close Price` double ,
`20 Day MA` double,
`50 Day MA` double
);
select * from `bajaj1`;

insert into `bajaj1`(`Date`,`Close Price`,`20 Day MA`,`50 Day MA`)
select `Date`, sum(`Close Price`) `Close Price`,
avg(sum(`Close Price`)) over(order by `Date` rows between 19 preceding and current row) `20 Day MA`,
avg(sum(`Close Price`)) over(order by `Date` rows between 49 preceding and current row) `50 Day MA`
from `Bajaj Auto`
group by `Date`
order by 1;

update `bajaj1`
set `20 Day MA` = null
limit 19;
update `bajaj1`
set `50 Day MA` = null
limit 49;

# CREATING EICHER STOCK TABLE AND FINDING THE MOVING AVERAGE OF 20 DAYS AND 50 DAYS
create table `eicher1` (
`Date` date ,
`Close Price` double ,
`20 Day MA` double,
`50 Day MA` double
);

select * from `eicher1`;

insert into `eicher1`(`Date`,`Close Price`,`20 Day MA`,`50 Day MA`)
select `Date`, sum(`Close Price`) `Close Price`,
avg(sum(`Close Price`)) over(order by `Date` rows between 19 preceding and current row) `20 Day MA`,
avg(sum(`Close Price`)) over(order by `Date` rows between 49 preceding and current row) `50 Day MA`
from `Eicher Motors`
group by `Date`
order by 1;


update `eicher1`
set `20 Day MA` = null
limit 19;
update `eicher1`
set `50 Day MA` = null
limit 49;



# CREATING HERO STOCK TABLE AND FINDING THE MOVING AVERAGE OF 20 DAYS AND 50 DAYS
create table `hero1` (
`Date` date ,
`Close Price` double ,
`20 Day MA` double,
`50 Day MA` double
);

select * from `hero1`;

insert into `hero1`(`Date`,`Close Price`,`20 Day MA`,`50 Day MA`)
select `Date`, sum(`Close Price`) `Close Price`,
avg(sum(`Close Price`)) over(order by `Date` rows between 19 preceding and current row) `20 Day MA`,
avg(sum(`Close Price`)) over(order by `Date` rows between 49 preceding and current row) `50 Day MA`
from `Hero Motocorp`
group by `Date`
order by 1;


update `hero1`
set `20 Day MA` = null
limit 19;
update `hero1`
set `50 Day MA` = null
limit 49;


# CREATING INFOSYS STOCK TABLE AND FINDING THE MOVING AVERAGE OF 20 DAYS AND 50 DAYS
create table `infosys1` (
`Date` date ,
`Close Price` double ,
`20 Day MA` double,
`50 Day MA` double
);

select * from `infosys1`;

insert into `infosys1`(`Date`,`Close Price`,`20 Day MA`,`50 Day MA`)
select `Date`, sum(`Close Price`) `Close Price`,
avg(sum(`Close Price`)) over(order by `Date` rows between 19 preceding and current row) `20 Day MA`,
avg(sum(`Close Price`)) over(order by `Date` rows between 49 preceding and current row) `50 Day MA`
from `Infosys`
group by `Date`
order by 1;

update `infosys1`
set `20 Day MA` = null
limit 19;
update `infosys1`
set `50 Day MA` = null
limit 49;



# CREATING TCS STOCK TABLE AND FINDING THE MOVING AVERAGE OF 20 DAYS AND 50 DAYS
create table `tcs1` (
`Date` date ,
`Close Price` double ,
`20 Day MA` double,
`50 Day MA` double
);

select * from `tcs1`;

insert into `tcs1`(`Date`,`Close Price`,`20 Day MA`,`50 Day MA`)
select `Date`, sum(`Close Price`) `Close Price`,
avg(sum(`Close Price`)) over(order by `Date` rows between 19 preceding and current row) `20 Day MA`,
avg(sum(`Close Price`)) over(order by `Date` rows between 49 preceding and current row) `50 Day MA`
from `TCS`
group by `Date`
order by 1;

update `tcs1`
set `20 Day MA` = null
limit 19;
update `tcs1`
set `50 Day MA` = null
limit 49;



# CREATING TVS STOCK TABLE AND FINDING THE MOVING AVERAGE OF 20 DAYS AND 50 DAYS
create table `tvs1` (
`Date` date ,
`Close Price` double ,
`20 Day MA` double,
`50 Day MA` double
);

select * from `tvs1`;

insert into `tvs1`(`Date`,`Close Price`,`20 Day MA`,`50 Day MA`)
select `Date`, sum(`Close Price`) `Close Price`,
avg(sum(`Close Price`)) over(order by `Date` rows between 19 preceding and current row) `20 Day MA`,
avg(sum(`Close Price`)) over(order by `Date` rows between 49 preceding and current row) `50 Day MA`
from `TVS Motors`
group by `Date`
order by 1;


update `tvs1`
set `20 Day MA` = null
limit 19;
update `tvs1`
set `50 Day MA` = null
limit 49;







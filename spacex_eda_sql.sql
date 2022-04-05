select * from spacextbl;

select distinct(LAUNCH_SITE) from spacextbl;

select * from spacextbl where LAUNCH_SITE like 'CCA%' limit 5;

select sum(PAYLOAD_MASS__KG_) from spacextbl where customer='NASA (CRS)';

select AVG(PAYLOAD_MASS__KG_) from spacextbl where booster_version='F9 v1.1';

select distinct(landing__outcome) from spacextbl;

select date,landing__outcome from spacextbl where landing__outcome='Success (ground pad)';

select min(date) from spacextbl where landing__outcome='Success (ground pad)';

select distinct(booster_version) from spacextbl where landing__outcome='Success (drone ship)' and PAYLOAD_MASS__KG_ BETWEEN 4000 AND 6000 ;

select mission_outcome, count(*) counter from spacextbl group by mission_outcome;

select max(PAYLOAD_MASS__KG_) from spacextbl;

select booster_version, PAYLOAD_MASS__KG_ from spacextbl where PAYLOAD_MASS__KG_='15600';

select count(*) from (select booster_version, PAYLOAD_MASS__KG_ from spacextbl where PAYLOAD_MASS__KG_='15600');

SELECT booster_version, PAYLOAD_MASS__KG_ FROM spacextbl WHERE PAYLOAD_MASS__KG_ = ( SELECT MAX(PAYLOAD_MASS__KG_) PAYLOAD_MASS__KG_ FROM spacextbl);

select distinct(booster_version) from (SELECT booster_version, PAYLOAD_MASS__KG_ FROM spacextbl WHERE PAYLOAD_MASS__KG_ = ( SELECT MAX(PAYLOAD_MASS__KG_) PAYLOAD_MASS__KG_ FROM spacextbl));

select landing__outcome,booster_version,launch_site from spacextbl where landing__outcome='Failure (drone ship)' and date like'%2015';

select landing__outcome,booster_version,launch_site from spacextbl where landing__outcome='Failure (drone ship)' and YEAR(date)='2015';

select landing__outcome, count(*) counter from spacextbl where landing__outcome in ('Failure (drone ship)','Success (ground pad)') and date BETWEEN '2010-06-04' and '2017-03-20' group by landing__outcome order by counter desc;

SELECT max(Date) from SPACEXTBL;

select min(payload_mass__kg_) from SPACEXTBL ;

SELECT sum(PAYLOAD_MASS__KG_) as Total_Payload_Mass from SPACEXTBL ;

SELECT * FROM SPACEXTBL where DAYNAME(DATE)='Friday' LIMIT 5;
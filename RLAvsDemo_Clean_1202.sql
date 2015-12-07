use usRLA;

select count(*)
from school;

create table state_proficiency
	select state, sum(totalProf) as sumpctst, avg(pctProf) as avgpctst
	from school
	group by state;

select S.state, sum(S.totalProf), avg(S.pctProf), ST.teachratio
from school S inner join stateinfo ST on upper(S.state) = upper(ST.name)
group by state
order by ST.teachratio desc;

select S.state, sum(S.totalProf), avg(S.pctProf) as avgpctst, ST.teachratio
from school S inner join stateinfo ST on upper(S.state) = upper(ST.name)
group by state
order by avgpctst desc;

select S.state, sum(S.totalProf), avg(S.pctProf) as avgpctst, ST.totNative
from school S inner join stateinfo ST on upper(S.state) = upper(ST.name)
group by state
order by avgpctst desc;

select S.state, sum(S.totalProf), avg(S.pctProf) as avgpctst, ST.totWhite
from school S inner join stateinfo ST on upper(S.state) = upper(ST.name)
group by state
order by avgpctst desc;

select S.state, sum(S.totalProf), avg(S.pctProf) as avgpctst, ST.totAsian
from school S inner join stateinfo ST on upper(S.state) = upper(ST.name)
group by state
order by avgpctst desc;

select *
FROM state_proficiency;

select S.state, sum(S.totalProf), avg(S.pctProf) as avgpctst, ST.freelunch
from school S inner join stateinfo ST on upper(S.state) = upper(ST.name)
group by state
order by avgpctst desc;

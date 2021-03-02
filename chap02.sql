select * 
from employee
where dno <= 10;

select *
from employee
where ename = 'SCOTT';

select * 
from employee
where hiredate <= '1981/01/01'; 

select *
from employee
where dno = 10 and job = 'MANAGER';

select * 
from employee
where dno = 10 or job = 'MANAGER';

select * 
from employee
where not dno = 10;

select * 
from employee 
where dno != 10;

select * 
from employee
where salary >= 1000 and salary <= 1500;

select * 
from employee
where salary not between 1000 and 1500;
--위에 문장 변형--
select * 
from employee
where salary < 1000 or salary > 1500;

select * 
from employee
where salary between 1000 and 1500;

select * 
from employee
where dno = 10 or dno = 20;
--위에 문장 변형--
select * 
from employee
where dno in (10,20);

select * 
from employee
where dno not in (10,20);

select * 
from employee
where dno <> 10 and dno <> 20;

select * 
from employee
where commission in (300,500,1400);

select * 
from employee
where commission not in (300,500,1400);

select *
from employee
where ename like 'F%';

select *
from employee
where ename like '_A%';

select *
from employee
where ename not like '%N%';

select *
from employee
where commission is null;

select *
from employee
where commission is not null;

select *
from employee
order by salary;

select *
from employee
order by ename desc;

select * 
from employee
order by salary desc, ename asc;

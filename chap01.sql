desc employee;

select * 
from employee;

select eno, ename
from employee;

select salary, salary*12
from employee;

select ename, salary, job, dno, nvl(commission, 0),
salary*12, salary*12+nvl(commission, 0)
from employee;

select ename, salary*12+nvl(commission, 0) as ¿¬ºÀ
from employee;

select job || ',' || ename || ',' || salary
from employee;

select distinct dno
from employee;

select distinct job
from employee;

desc dual;
select * from dual;

select sysdate from dual;



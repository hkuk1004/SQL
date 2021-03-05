create table dept_copy
as
select * from department where 0=1;

insert into dept_copy
values(10,'ACCOUNTING','NEW YORK');

insert into dept_copy
values(20,'RESEARCH','DALLAS');

insert into dept_copy(dno, dname)
values(30,'SALES');

insert into dept_copy
values(40,'OPERATIONS',null);

insert into dept_copy
values(50,'IT','');

--사원 테이블 구조생성--
create table emp_copy
as
select eno, ename, job, hiredate, dno
from employee
where 0=1;

insert into emp_copy
values(7000, 'CANDY', 'MANAGER', '2012/05/01', 10);

insert into emp_copy
values(7010, 'TOM', 'MANAGER', to_date('2020.08.01','YYYY.MM.DD'), 20);

insert into emp_copy
values(7030, 'JERRY', 'SALESMAN', sysdate, 30);

insert into dept_copy
select * from department;

update dept_copy
set dname = 'PROGRAMING'
where dno = 10;

update dept_copy
set dname = 'PROGRAMMING',
    loc = 'SEOUL'
where dno = 10;

update dept_copy
set loc = (select loc from department where dno = 20)
where dno = 10;

update dept_copy
set dname = (select dname from department where dno = 30),
    loc = (select loc from department where dno = 30)
where dno = 10;

delete from dept_copy
where dno = 10;

delete from emp_copy
where dno = (select dno from department where dname = 'SALES');


create table dept (
    dno number(2),
    dname varchar2(14),
    loc varchar2(13));

desc dept;
--���̺� ���� ����� �� ������ �����ϱ�--
create table dept_second
as select * from department;

desc dept_second;

create table dept20
as 
select eno, ename, salary*12"annsal" /*�̷������� ����� ���� ��Ī�ֱ�*/
from employee
where dno = 20;

desc dept20;

select * from dept20;

--�μ� ���̺� ������ �����--
create table dept_third
as
select dno, dname
from dept_second
where 0=1;

desc dept_third;

select * from dept_third;

--����ϱ�--
create table employee_backup_20210304
as
select * from employee;

alter table dept20
    add(birth date);

alter table dept20
    modify ename varchar2(30);
    
alter table dept20
    modify birth varchar2(8);
    
alter table dept20
    drop column ename;
    
alter table dept20
   set unused(eno);
   
alter table dept20
    drop unused columns;

rename dept20 to emp20;

desc emp20;

drop table emp20;

truncate table dept_second;

select table_name from user_tables; 
select table_name from user_indexes;

select owner, table_name from all_tables;


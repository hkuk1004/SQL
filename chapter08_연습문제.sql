?/*Q1. ���(employee) ���̺�� ���� ������ t_emp ���̺��� �����Ͻÿ�.*/
create table t_emp
as 
select * 
from employee;

desc t_emp;
/*Q2. t_emp ���̺� ����(gender) ���� �߰��϶�(������ Ÿ���� char(1)�� �Ѵ�).*/
alter table t_emp
    add(gender char(1));

desc t_emp;
/*Q3. t_emp ���̺� ����(gender) ���� ������ �����ϰ� Ȯ���϶�(char(1)���� varchar2(10)����).*/
alter table t_emp
    modify gender varchar2(10);

desc t_emp;
/*Q4. t_emp ���̺� ����(gender) ���� �����϶�.*/
alter table t_emp
    drop column gender;

desc t_emp;
/*Q5. t_emp ���̺� ��� �����͸� �����϶�.*/
truncate table t_emp;

desc t_emp;
/*Q6. t_emp ���̺��� �����϶�.*/
drop table t_emp;

desc t_emp;
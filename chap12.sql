create sequence sample_seq
    increment by 10
    start with 10;
    
select sequence_name, min_value, max_value,
    increment_by, cycle_flag
from user_sequences;

select sample_seq.nextval from dual;

select sample_seq.currval from dual;

create sequence dno_seq
    increment by 10
    start with 10;

delete from dept_second;

insert into dept_second
    values(dno_seq.nextval,'ACCOUNTING','NEW YORK');
    
insert into dept_second
    values(dno_seq.nextval,'IT','SEOUL');

select * from dept_second;

select dno_seq.currval from dual;

select sequence_name, min_value, max_value,
    increment_by, cycle_flag
from user_sequences
where sequence_name in('DNO_SEQ');

alter sequence dno_seq
maxvalue 50;

drop sequence dno_seq;

create index idx_employee_ename
    on employee(ename);
    
select index_name,table_name,column_name
from user_ind_columns
where table_name in('EMPLOYEE');

alter index idx_employee_ename rebuild;

drop index idx_employee_ename;

create sequence emp_seq
    start with 1
    increment by 1
    maxvalue 100000;

create table emp01(
    empno    varchar2(10) primary key,
    ename    varchar2(10),
    hiredate date
);

insert into emp01
    values(emp_seq.nextval,'julia',sysdate);

-- 사원번호 형식: 년도(4자리) + 일련번호(6자리)
-- ex)2021000002
select emp_seq.currval
from dual;

select to_char(sysdate,'YYYY')
from dual;

select lpad(emp_seq.currval,6,'0')
from dual;

insert into emp01
    values(to_char(sysdate,'YYYY') || lpad(emp_seq.nextval,6,'0') ,'ban',sysdate);
    
select * from emp01;    
    
create index idx_emp01_ename
    on emp01(ename);

drop table emp01;
drop sequence emp_seq;
drop index idx_emp01_ename;








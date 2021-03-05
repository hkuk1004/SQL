create table dept_second(
    dno     number(2) constraint pk_dept_second primary key,
    dname   varchar2(14),
    loc     varchar2(13)
);

create table dept_third(
    dno     number(2),
    dname   varchar2(14),
    loc     varchar2(13),
    constraint pk_dept_third primary key (dno)
);

create table customer(
    id      varchar2(20),
    pwd     varchar2(20) constraint customer_pwd_nn not null,
    name    varchar2(20) constraint customer_name_nn not null,
    phone   varchar2(30),
    address varchar2(100),
    constraint customer_id_pk primary key(id)
);
    
insert into customer
values ('hkban','0000','반현규','010-111-1111','seoul');

/*insert into customer
values ('hkban','1234','규현반','010-123-1234','incheon');

insert into customer
values ('banhk',null,null,'010-456-4455','bucheno');*/

select table_name, constraint_name
from user_constraints
where table_name in ('CUSTOMER');

create table emp_second(
    eno     number(4) constraint emp_second_eno_pk primary key,
    ename   varchar2(10),
    job     varchar2(9),
    dno     number(2) constraint emp_second_dno_fk references department
);

insert into emp_second
values (1111,'hyunkyu','CEO',40);

 /*insert into emp_second
values (1111,'hyunkyu','CEO',40);*/

create table emp_second(
    eno     number(4) constraint emp_second_eno_pk primary key,
    ename   varchar2(10),
    salary  number(7,2) constraint emp_second_salary_min check (salary > 0)
);

insert into emp_second
values (1000, 'hyunkyu', -100);

create table emp_second(
    eno     number(4) constraint emp_second_eno_pk primary key,
    ename   varchar2(10),
    salary  number(7,2) default 0
);

insert into emp_second(eno, ename)
values (1000, '홍길동');
select * from emp_second;

drop table emp_copy;
drop table dept_copy;

create table emp_copy
as select * from employee;

create table dept_copy
as select * from department;

--primary key 제약조건 추가--
alter table emp_copy
add constraint emp_copy_eno_pk primary key(eno);

alter table dept_copy
add constraint dept_copy_dno_pk primary key(dno);

--foreign key 제약조건 추가--
alter table emp_copy
add constraint emp_copy_dno_fk foreign key(dno) references dept_copy(dno);

--not null 제약조건 추가--
alter table emp_copy
modify ename constraint emp_copy_ename_nn not null;

alter table emp_copy
drop primary key cascade; 

alter table emp_copy
disable constraint emp_copy_dno_fk;

alter table emp_copy
    disable constraint emp_copy_dno_fk;
    
insert into emp_copy(eno, ename, dno)
    values(8000,'김김김',50);

select * from emp_copy;

update emp_copy
set dno = 40
where eno = 8000;

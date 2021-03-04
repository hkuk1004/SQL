?/*Q1. 사원(employee) 테이블과 같은 구조의 t_emp 테이블을 생성하시오.*/
create table t_emp
as 
select * 
from employee;

desc t_emp;
/*Q2. t_emp 테이블에 성별(gender) 열을 추가하라(데이터 타입은 char(1)로 한다).*/
alter table t_emp
    add(gender char(1));

desc t_emp;
/*Q3. t_emp 테이블에 성별(gender) 열의 구조를 변경하고 확인하라(char(1)에서 varchar2(10)으로).*/
alter table t_emp
    modify gender varchar2(10);

desc t_emp;
/*Q4. t_emp 테이블에 성별(gender) 열을 삭제하라.*/
alter table t_emp
    drop column gender;

desc t_emp;
/*Q5. t_emp 테이블에 모든 데이터를 삭제하라.*/
truncate table t_emp;

desc t_emp;
/*Q6. t_emp 테이블을 삭제하라.*/
drop table t_emp;

desc t_emp;
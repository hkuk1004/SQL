create table t_emp(
    eno     number(4) constraint t_emp_eno_pk primary key,
    dno     number(2) constraint t_emp_dno_fk references department,
    salary  number(7,2) constraint t_emp_salary_nn not null
);
/*Q2. t_emp 테이블에 대한 제약조건을 검색하시오.*/
select table_name, constraint_name
from user_constraints
where table_name in ('t_emp');
/*Q3. t_emp 테이블에 외래 키 제약조건을 비활성화 시키시오. */
alter table t_emp
    disable constraint t_emp_dno_fk;
/*Q4. t_emp 테이블에 외래 키 제약조건을 다시 활성화 시키시오. */
alter table t_emp
    enable constraint t_emp_dno_fk;
/*Q5. t_emp 테이블에 외래 키 제약조건을 삭제하시오. */
alter table t_emp
    drop constraint t_emp_dno_fk;
/*Q6. t_emp 테이블을 삭제하시오. */
drop table t_emp;
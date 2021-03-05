create table t_emp(
    eno     number(4) constraint t_emp_eno_pk primary key,
    dno     number(2) constraint t_emp_dno_fk references department,
    salary  number(7,2) constraint t_emp_salary_nn not null
);
/*Q2. t_emp ���̺� ���� ���������� �˻��Ͻÿ�.*/
select table_name, constraint_name
from user_constraints
where table_name in ('t_emp');
/*Q3. t_emp ���̺� �ܷ� Ű ���������� ��Ȱ��ȭ ��Ű�ÿ�. */
alter table t_emp
    disable constraint t_emp_dno_fk;
/*Q4. t_emp ���̺� �ܷ� Ű ���������� �ٽ� Ȱ��ȭ ��Ű�ÿ�. */
alter table t_emp
    enable constraint t_emp_dno_fk;
/*Q5. t_emp ���̺� �ܷ� Ű ���������� �����Ͻÿ�. */
alter table t_emp
    drop constraint t_emp_dno_fk;
/*Q6. t_emp ���̺��� �����Ͻÿ�. */
drop table t_emp;
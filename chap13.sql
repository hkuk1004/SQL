/* system ���� �ҽ���
grant create session to usertest01;

grant create table to usertest01;

alter user usertest01 quota 2m on users;

grant resource to usertest01;

select username, default_tablespace
from dba_users
where username in ('USERTEST01');

--usertest01���� session ������ ����--
revoke create session 
from usertest01;
*/

--usertest01���� select ������ �ο�--
grant select 
on employee
to usertest01;
--usertest01���� select ������ ����--
revoke select 
on employee
from usertest01;
--usertest01���� employee��ü�� ���� select ������ �絵�� �� �ִ� ������ ��--
grant select 
on employee 
to usertest01 
with grant option;
--hr�� ������ department�� ��� ����ڿ��� select ������ ��--
grant select 
on department
to public;
--����� ���� �� ���� �� ���� �ο��ϱ�--
create role roletest01;

grant create session, create table, create view
to roletest01;

grant roletest01 
to usertest01;

grant select 
on employee 
to roletest01;

select * 
from role_sys_privs
where role like '%TEST%';

drop role roletest01;

create role roletest02;

grant select
on employee
to roletest02;

grant roletest02 to usertest01;

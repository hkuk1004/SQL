/* system 계정 소스문
grant create session to usertest01;

grant create table to usertest01;

alter user usertest01 quota 2m on users;

grant resource to usertest01;

select username, default_tablespace
from dba_users
where username in ('USERTEST01');

--usertest01에게 session 권한을 제거--
revoke create session 
from usertest01;
*/

--usertest01에게 select 권한을 부여--
grant select 
on employee
to usertest01;
--usertest01에게 select 권한을 제거--
revoke select 
on employee
from usertest01;
--usertest01에게 employee객체에 대한 select 권한을 양도할 수 있는 권한을 줌--
grant select 
on employee 
to usertest01 
with grant option;
--hr이 소유한 department를 모든 사용자에게 select 권한을 줌--
grant select 
on department
to public;
--사용자 정의 롤 생성 및 권한 부여하기--
create role roletest01;

grant create session, create table, create view
to roletest01;

grant roletest01 
to usertest01;
--hr--
grant select 
on employee 
to roletest01;
--hr--
select * 
from role_sys_privs
where role like '%TEST%';
--hr--
select * from user_role_privs;
--hr--
select * from role_tab_privs;
--hr--
drop role roletest01;
--hr--
create role roletest02;
--hr--
grant select
on employee
to roletest02;

grant roletest02 to usertest01;



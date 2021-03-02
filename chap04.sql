select 'Oracle mania',
    UPPER('Oracle mania'),
    LOWER('Oracle mania'),
    INITCAP('Oracle mania')
from dual;

select ename, lower(ename), job , initcap(job)
from employee;

select eno, ename, dno
from employee
where lower(ename) = 'scott';

select eno, ename, dno
from employee
where initcap(ename) = 'Scott';

--한글은 3바이트로 인식--
select length('Oracle mania'), lengthb('오라클매니아')
from dual;   

select 'Oracle','mania', concat('Oracle ','mania')
from dual;

select substr('오라클매니아',3,4)
from dual;

select substr('Oracle mania',4,3), substr('Oracle mania',-4,3)
from dual;

select * 
from employee
where substr(ename,-1,1) = 'N';

select * 
from employee
where ename like '%N';

--81년도에 입사한 사원 표시하기
select *
from employee
where substr(hiredate,1,4) = '1981';

select * from employee
where hiredate like '%81%';

select instr('Oracle mania','a')
from dual;

select instr('Oracle mania','a',5,2)
from dual;

select * from employee
where ename like '__A%';

select * from employee
where instr(ename,'A',3) = 3;

select lpad(salary,10,'*')
from employee;

select rpad(salary,10,'-')
from employee;

select trim('O' from 'Oracle mania')
from dual;

select trim('a' from 'Oracle mania')
from dual;

select trim(' ' from ' Oracle mania ')
from dual;

select trim(' Oracle mania ')
from dual;

select ltrim(' Oracle mania ')
from dual;

select rtrim(' Oracle mania ')
from dual;

select round(98.7654),round(98.7654,2),round(98.7654,-1)
from dual;

select 98.7654,trunc(98.7654),trunc(98.7654,2)
from dual;

select trunc(7654.7654,-1),trunc(7654.7654,-2),trunc(7654.7654,-3)
from dual;

select mod(31,2),mod(31,5),mod(31,7)
from dual;

select ename, salary, mod(salary,100)
from employee;

select sysdate-1 어제, sysdate 오늘, sysdate+1 내일, sysdate+2 모레
from dual;

select sysdate, round(sysdate,'CC'),trunc(sysdate,'CC')
from dual;

select sysdate, round(to_date('2021/08/09'),'YYYY'), trunc(sysdate,'YYYY')
from dual;

select sysdate, round(sysdate,'MM'), trunc(sysdate,'MM')
from dual;

select ename, round(sysdate - hiredate) 근무일수
from employee;

select round(months_between(sysdate,hiredate)) 개월차
from employee;

select ename, hiredate, add_months(hiredate, 6)
from employee;

select sysdate, next_day(sysdate,'일'), next_day(sysdate,'토요일')
from dual;

select ename, hiredate,
    last_day(hiredate)
from employee;

select ename, hiredate,
    to_char(hiredate,'YYYY-MM'),
    to_char(hiredate,'YYYY-MM-DD'),
    to_char(hiredate,'YYYY-MM-DD DY')
from employee;

select ename,hiredate,
    to_char(sysdate, 'YYYY-MM-DD HH:MI')
from employee;

select ename,hiredate,
    to_char(sysdate, 'YYYY-MM-DD HH24:MI:SS')
from employee;

select ename,salary,to_char(salary,'000,000'),to_char(salary,'L999,999')
from employee;

--급여 일할 계산
select ename "사원이름", salary "급여",
    last_day(sysdate) "해당월의 마지막일자",
    to_char(last_day(sysdate), 'DD') "월 일수",
    round(salary / to_char(last_day(sysdate), 'DD')) "일당",
    to_char(sysdate,'DD') - to_char(trunc(sysdate,'MONTH'),'DD') + 1 "근무일수",
    round(salary / to_char(last_day(sysdate), 'DD')) * (to_char(sysdate,'DD') - to_char(trunc(sysdate,'MONTH'),'DD') + 1)"급여일할계산"
from employee;

select ename, hiredate
from employee
where hiredate = to_date('19810220','YYYYMMDD');

select to_number('1000' - '11')
from dual;

select ename, salary, commission,
    salary * 12 + nvl(commission,0) 연봉
from employee
order by 연봉 desc;

select ename, salary, commission,
    nvl2(commission, salary*12+commission,salary*12) 연봉
from employee
order by 연봉 desc;

select nullif('A','A'), nullif('A','B')
from dual;

select eno, ename, salary, commission,
    coalesce(commission, salary, 0)
from employee
order by job;

select ename, dno,
    decode(dno, 10, 'ACCOUNTING',
      20, 'RESEARCH',
      30, 'SALES',
      40, 'OPERAIONS',
      'DEFAULT') AS dname
from employee
order by dno;

select ename,dno,
    CASE WHEN dno=10 THEN 'ACCOUNTING'
         WHEN dno=20 THEN 'RESEARCH'
         WHEN dno=30 THEN 'SALES'
         WHEN dno=40 THEN 'OPERATIONS'
    END AS dname
from employee
order by dno;

select ename,dno,
    CASE dno WHEN 10 THEN 'ACCOUNTING'
             WHEN 20 THEN 'RESEARCH'
             WHEN 30 THEN 'SALES'
             WHEN 40 THEN 'OPERATIONS'
             ELSE 'DEFAULT'
    END AS dname
from employee
order by dno;












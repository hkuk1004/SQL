select sum(salary) "급여총액",
    round(avg(salary)) "급여평균",
    max(salary) "최대급여",
    min(salary) "최소급여",
    count(*) "총직원수",
    count(manager) "상급자 보유 사원"
from employee;

select  max(hiredate) "최근에 입사한 날짜",
        min(hiredate) "가장 먼저 입사한 날짜"
from employee;

--그룹함수는 null 값을 제외하고 연산--
select sum(commission) "커미션 총액",
        avg(commission) "커미션 평균",
        round(sum(commission)/count(*)) "전직원의 커미션 평균"
from employee;

select count(*) "사원의 수"
from employee;

select count(distinct job) "직업 종류의 개수"
from employee;

select dno "부서번호", max(salary) "최대급여"
from employee
group by dno;

select dno "부서번호", round(avg(salary)) "급여평균"
from employee
group by dno;

select dno "부서번호", job "직무", count(*) "부서/직무별 사원의 수", sum(salary) "부서/직무별 급여 합"
from employee
group by dno, job
order by dno, job;

select dno "부서번호", max(salary)"최대급여"
from employee
--where dno != 20--
group by dno
having max(salary) >= 3000;

--MANAGER를 제외하고 급여 총액이 5000 이상인 직무별 급여 총액 구하기--
select job "직무", sum(salary) "급여 총액"
from employee
where job != 'MANAGER'
group by job
having sum(salary) >= 5000;

--부서별 평균급여 중에서 최고 평균급여 조회하기--
select dno "부서번호", round(avg(salary)) "평균급여"
from employee
group by dno
order by 1;

select max(round(avg(salary))) "부서별 최고 평균급여"
from employee
group by dno;



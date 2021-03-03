/* Q1. 전체 사원의 입사일 중 최초 입사일과 최근 입사일을 검색하라. */
select max(hiredate) "최근 입사일",min(hiredate) "최초 입사일"
from employee;
/* Q2. 사원 테이블의 로우(행)의 수를 검색하라. */
select count(*)"사원 테이블의 행 수"
from employee;
/* Q3. 사원이름의 개수를 검색하라. */
select count(ename)"사원이름 개수"
from employee;
/* Q4. 커미션 로우(행)의 개수를 검색하라. */
select count(commission)"커미션 열의 개수"
from employee;
/* Q5. 부서별 사원들의 인원수를 검색하라. */
select dno "부서번호", count(*) "부서별 사원수"
from employee
group by dno;
/* Q6. 부서별 사원들의 평균 급여를 검색하라. */
select dno "부서번호", round(avg(salary)) "평균 급여"
from employee
group by dno;
/* Q7. 부서별, 사원직무별 사원들의 평균 급여를 검색하라. */
select dno "부서번호", job "사원직무", round(avg(salary)) "사원들의 평균 급여"
from employee
group by dno,job
order by 1,2;
/* Q8. 부서별, 사원직무별 사원의 입사일 중 최초 입사일과 최근 입사일을 검색하라. */
select dno "부서번호", job "사원직무", min(hiredate) "최초 입사일", max(hiredate) "최근 입사일"
from employee
group by dno,job
order by 1,2;
/* Q9. 부서별 사원들의 인원수를 인원수가 많은 순으로 검색하라. */
select dno "부서번호", count(*) "인원수"
from employee
group by dno
order by 2 desc;
/* Q10. 부서별 사원들의 평균급여를 평균급여 순으로 검색하라. */
select dno "부서번호", round(avg(salary)) "평균급여"
from employee
group by dno
order by 2;
/* Q11. 부서별, 사원직무별 사원의 총평급를 많은 순으로 검색하라. */
select dno "부서번호", job "사원직무", round(avg(salary)) "총평급"
from employee
group by dno, job
order by 3 desc;

select dno "부서번호",job "직무", sum(salary) "총 급여"
from employee
group by dno, job
order by dno, job;

select sum(decode(dno, 10, sum(salary))) "부서10",
       sum(decode(dno, 20, sum(salary))) "부서20",
       sum(decode(dno, 30, sum(salary))) "부서30"
from employee
group by dno;

/*Q1. 사원번호, 사원이름, 부서이름을 검색하라.*/
select e.eno"사원번호", e.ename"사원이름", d.dname"부서이름"
from employee e, department d
where e.dno = d.dno;
/*Q2. 지역이 NEW YORK인 사원이름을 검색하라.*/
select e.ename"사원이름", d.loc"지역"
from employee e, department d
where e.dno = d.dno
and d.loc = 'NEW YORK';
/*Q3. ADAMS 사원이 근무 중인 부서이름과 지역을 검색하라.*/
select e.ename"사원이름", d.dname"부서이름", d.loc"지역"
from employee e, department d
where e.dno = d.dno
and e.ename = 'ADAMS';
/*Q4. 급여가 2000 이상인 사원들의 사원명과 지역, 급여를 검색하라.*/
select e.ename"사원이름", d.loc"지역", e.salary"급여"
from employee e, department d
where e.dno = d.dno
and e.salary >= 2000;
/*Q5. 급여가 1000 이상 2000 이하인 사원들의 사원번호, 사원이름, 부서이름을 사원번호 순으로 검색하라.*/
select e.eno"사원번호", e.ename"사원이름", d.dname"부서이름", e.salary"급여"
from employee e, department d
where e.salary between 1000 and 2000
order by e.eno;
/*Q6. 사원직무가 SALESMAN이면서 CHICAGO 지역에 근무 중인 사원명과 지역을 검색하라.*/
select e.job"직무", e.ename"사원이름", d.loc"지역"
from employee e, department d
where e.job = 'SALESMAN' and d.loc = 'CHICAGO';
/*Q7. NEW YORK이나 DALLAS 지역에 근무하는 사원들의 사원번호와 사원이름, 지역을 사원번호 순으로 검색하라.*/
select e.eno"사원번호", e.ename"사원이름", d.loc"지역"
from employee e, department d
where e.dno = d.dno 
and d.loc in ('NEW YORK','DALLAS')  
order by e.eno;
/*Q8. 부서이름이 ACCOUNTING이거나, 지역이 CHICAGO인 사원의 사원번호와 사원이름, 부서명, 지역을 검색하라.*/
select e.eno"사원번호", e.ename"사원이름", d.dname"부서이름", d.loc"지역"
from employee e, department d
where e.dno = d.dno
and d.dname = 'ACCOUNTING' or d.loc = 'CHICAGO';
/*Q9. 사원번호, 사원이름, 급여, 급여등급을 급여등급별 급여가 많은 순으로 검색하라.*/
select e.eno"사원번호", e.ename"사원이름", e.salary"급여", s.grade"급여등급"
from employee e, salgrade s
where e.salary between s.losal and s.hisal
order by e.salary desc;
/*Q10. 사원번호, 사원이름, 상급자사원번호, 상급자이름을 검색하라.*/
select e.eno "사원번호", e.ename "사원이름" , m.eno "상급자 사원번호", m.ename "상급자 이름"
from employee e, employee m
where e.manager = m.eno(+);
/*Q11. BLAKE 사원보다 많은 급여를 받는 사원이름을 검색하라.*/
select e.ename"사원이름", e.salary "급여"
from employee e 
where e.salary > (select salary 
                  from employee 
                  where ename = 'BLAKE')
order by e.salary desc;
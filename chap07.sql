select ename, salary
from employee
where salary > (select salary
                from employee
                where ename = 'SCOTT');

select ename, dno
from employee
where dno = (select dno
             from employee
             where ename = 'SCOTT');                

-- 최소 급여를 받는 사원의 이름, 담당업무, 급여 출력하기--
select ename, job, salary
from employee
where salary = (select min(salary) 
                from employee);
-- 최대 급여를 받는 사원의 이름, 담당업무, 급여 출력하기--
select ename, job, salary
from employee
where salary = (select max(salary) 
                from employee);
--30부서의 최소 급여보다 최소 급여가 큰 부서 출력--
select dno, min(salary)
from employee
group by dno
having min(salary)>(select min(salary)
                    from employee
                    where dno=30);

select eno, ename, salary, dno
from employee
where salary in (select min(salary)
                 from employee
                 group by dno);
                 
select eno, ename, job, salary
from employee
where salary < any (select salary
                    from employee
                    where job = 'SALESMAN')
and job <> 'SALESMAN';
                 
select eno, ename, job, salary
from employee
where salary < all (select salary
                    from employee
                    where job = 'SALESMAN')
and job <> 'SALESMAN';
            
               
                
                
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

-- �ּ� �޿��� �޴� ����� �̸�, ������, �޿� ����ϱ�--
select ename, job, salary
from employee
where salary = (select min(salary) 
                from employee);
-- �ִ� �޿��� �޴� ����� �̸�, ������, �޿� ����ϱ�--
select ename, job, salary
from employee
where salary = (select max(salary) 
                from employee);
--30�μ��� �ּ� �޿����� �ּ� �޿��� ū �μ� ���--
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
            
               
                
                
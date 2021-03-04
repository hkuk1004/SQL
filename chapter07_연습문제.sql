/* Q1. FORD ����� ���� �μ��� �ٹ��ϴ� ����� ������ �˻��϶�. */
select *
from employee
where dno = (select dno
             from employee
             where ename = 'FORD');
/* Q2. CHICAGO ������ ��ġ�ϴ� �μ��� �ٹ��ϴ� ����� ������ �˻��϶�. */
select *
from employee
where dno = (select dno
             from department
             where loc = 'CHICAGO');
/* Q3. FORD ����� ���� �޿��� �޴� ����� �����ȣ�� ����̸��� �˻��϶�. */
select eno, ename, salary
from employee
where salary = (select salary
                from employee
                where ename = 'FORD')
order by eno;
/* Q4. SCOTT ������� ���� �޿��� �޴� ��� ������ �˻��϶�. */
select *
from employee
where salary > (select salary
                from employee
                where ename = 'SCOTT');
/* Q5. ALLEN ������� ���� �޿��� �޴� ��� ������ �˻��϶�. */
select * 
from employee
where salary < (select salary
                from employee
                where ename = 'ALLEN')
order by salary desc;
/* Q6. 20�� �μ� ����� ��������� ���� ��������� �ٸ� �μ��� ��� ������ �˻��϶�. */
select *
from employee
where job not in (select job
              from employee
              where dno = 20);
/* Q7. ��ü ����� ��� �޿����� �޿��� ���� ��� ������ �˻��϶�. */
select salary, ename
from employee
where salary > any (select avg(salary)
                    from employee)
order by 1 desc;
/* Q8. �޿��� ��� �μ����� ��� �޿����� ���� ��� ������ �˻��϶� */
select dno, salary, ename
from employee
where salary > all (select avg(salary)
                    from employee
                    group by dno)
order by 1 desc;
--30:1566/20:2175/10:2916
/* Q9. 30�� �μ��� �ִ� �޿����� �ִ� �޿��� ū �μ��� ��ȣ�� �ִ� �޿��� �˻��϶�. */
select dno, max(salary)
from employee
group by dno
having max(salary)>(select max(salary)
                    from employee
                    where dno=30)
order by 2 desc;                    
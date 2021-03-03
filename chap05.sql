select sum(salary) "�޿��Ѿ�",
    round(avg(salary)) "�޿����",
    max(salary) "�ִ�޿�",
    min(salary) "�ּұ޿�",
    count(*) "��������",
    count(manager) "����� ���� ���"
from employee;

select  max(hiredate) "�ֱٿ� �Ի��� ��¥",
        min(hiredate) "���� ���� �Ի��� ��¥"
from employee;

--�׷��Լ��� null ���� �����ϰ� ����--
select sum(commission) "Ŀ�̼� �Ѿ�",
        avg(commission) "Ŀ�̼� ���",
        round(sum(commission)/count(*)) "�������� Ŀ�̼� ���"
from employee;

select count(*) "����� ��"
from employee;

select count(distinct job) "���� ������ ����"
from employee;

select dno "�μ���ȣ", max(salary) "�ִ�޿�"
from employee
group by dno;

select dno "�μ���ȣ", round(avg(salary)) "�޿����"
from employee
group by dno;

select dno "�μ���ȣ", job "����", count(*) "�μ�/������ ����� ��", sum(salary) "�μ�/������ �޿� ��"
from employee
group by dno, job
order by dno, job;

select dno "�μ���ȣ", max(salary)"�ִ�޿�"
from employee
--where dno != 20--
group by dno
having max(salary) >= 3000;

--MANAGER�� �����ϰ� �޿� �Ѿ��� 5000 �̻��� ������ �޿� �Ѿ� ���ϱ�--
select job "����", sum(salary) "�޿� �Ѿ�"
from employee
where job != 'MANAGER'
group by job
having sum(salary) >= 5000;

--�μ��� ��ձ޿� �߿��� �ְ� ��ձ޿� ��ȸ�ϱ�--
select dno "�μ���ȣ", round(avg(salary)) "��ձ޿�"
from employee
group by dno
order by 1;

select max(round(avg(salary))) "�μ��� �ְ� ��ձ޿�"
from employee
group by dno;



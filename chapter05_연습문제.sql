/* Q1. ��ü ����� �Ի��� �� ���� �Ի��ϰ� �ֱ� �Ի����� �˻��϶�. */
select max(hiredate) "�ֱ� �Ի���",min(hiredate) "���� �Ի���"
from employee;
/* Q2. ��� ���̺��� �ο�(��)�� ���� �˻��϶�. */
select count(*)"��� ���̺��� �� ��"
from employee;
/* Q3. ����̸��� ������ �˻��϶�. */
select count(ename)"����̸� ����"
from employee;
/* Q4. Ŀ�̼� �ο�(��)�� ������ �˻��϶�. */
select count(commission)"Ŀ�̼� ���� ����"
from employee;
/* Q5. �μ��� ������� �ο����� �˻��϶�. */
select dno "�μ���ȣ", count(*) "�μ��� �����"
from employee
group by dno;
/* Q6. �μ��� ������� ��� �޿��� �˻��϶�. */
select dno "�μ���ȣ", round(avg(salary)) "��� �޿�"
from employee
group by dno;
/* Q7. �μ���, ��������� ������� ��� �޿��� �˻��϶�. */
select dno "�μ���ȣ", job "�������", round(avg(salary)) "������� ��� �޿�"
from employee
group by dno,job
order by 1,2;
/* Q8. �μ���, ��������� ����� �Ի��� �� ���� �Ի��ϰ� �ֱ� �Ի����� �˻��϶�. */
select dno "�μ���ȣ", job "�������", min(hiredate) "���� �Ի���", max(hiredate) "�ֱ� �Ի���"
from employee
group by dno,job
order by 1,2;
/* Q9. �μ��� ������� �ο����� �ο����� ���� ������ �˻��϶�. */
select dno "�μ���ȣ", count(*) "�ο���"
from employee
group by dno
order by 2 desc;
/* Q10. �μ��� ������� ��ձ޿��� ��ձ޿� ������ �˻��϶�. */
select dno "�μ���ȣ", round(avg(salary)) "��ձ޿�"
from employee
group by dno
order by 2;
/* Q11. �μ���, ��������� ����� ����޸� ���� ������ �˻��϶�. */
select dno "�μ���ȣ", job "�������", round(avg(salary)) "�����"
from employee
group by dno, job
order by 3 desc;

select dno "�μ���ȣ",job "����", sum(salary) "�� �޿�"
from employee
group by dno, job
order by dno, job;

select sum(decode(dno, 10, sum(salary))) "�μ�10",
       sum(decode(dno, 20, sum(salary))) "�μ�20",
       sum(decode(dno, 30, sum(salary))) "�μ�30"
from employee
group by dno;

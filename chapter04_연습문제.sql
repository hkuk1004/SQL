--https://data-make.tistory.com/19--
/* Q1. ������� ����̸�, ��������� �ҹ��ڷ� �˻��϶�. */
select lower(ename)"����̸�", lower(job)"�������"
from employee;
/* Q2. ������� ����̸�, ��������� �빮�ڷ� �˻��϶�. */
select upper(ename) "����̸�", upper(job) "�������"
from employee;
/* Q3. ������� ����̸�, ��������� ù �ڸ� �빮�ڷ� �˻��϶�. */
select initcap(ename) "����̸�", initcap(job)"�������"
from employee;
/* Q4. ������� ����̸��� ����̸��� ù �� ���ڸ� �˻��϶�. */
select ename "����̸�", substr(ename,1,2) "ù �α���"
from employee;
/* Q5. ������� ����̸��� ����̸��� ���̸� �˻��϶�. */
select ename "����̸�", length(ename)"����"
from employee;
/* Q6. ������� ����̸��� 'A'�� �� ��° ��ġ�� �ִ��� �˻��϶�. */
select ename "����̸�", instr(ename,'A')"A��ġ"
from employee;
/* Q7. ����̸��� 15�ڸ��� �ϰ�, �ڿ� '*'�� ä�� �˻��϶�. */
select lpad(ename,15,'*')"����̸�"
from employee;
/* Q8. ����� �����ȣ, ����̸�, �޿��� �˻��϶�(�޿��� �� ��° �ڸ����� �ݿø���). */
select eno "�����ȣ", ename "����̸�", round(salary,2) "�޿�"
from employee
order by salary;
/* Q9. ����� �����ȣ, ����̸�, �޿��� �˻��϶�(�޿��� �� ��° �ڸ����� ������). */
select eno "�����ȣ", ename "����̸�", trunc(salary,2) "�޿�"
from employee
order by salary;
/* Q10. ����� �����ȣ, ����̸�, �Ի� �� 100���� ��¥�� �˻��϶�. */
select eno "�����ȣ", ename "����̸�", (hiredate + 100) "�Ի� �� 100��"
from employee;
/* Q11. ����� �����ȣ, ����̸�, �Ի���, �ٹ� ���ڸ� ����Ͽ� �˻��϶�. */
select eno "�����ȣ", ename "����̸�", hiredate "�Ի���", round(sysdate - hiredate) "�ٹ� ����"
from employee;
/* Q12. ������� �Ի��Ͽ��� 3��° �Ǵ� ��¥�� �˻��϶�. */
select ename "����̸�", add_months(hiredate,3)"3�� ° �Ǵ� ��¥"
from employee;
/* Q13. ������� �Ի��� ���� ������� ��¥�� �˻��϶�. */
select ename "����̸�", next_day(hiredate,'�����') "���� �������?"
from employee;
/* Q14. ������� �Ի���� ������ ��¥�� �˻��϶�. */
select ename "����̸�", last_day(hiredate) "�Ի���� ������ ��¥"
from employee;
/* Q15. ����ڻ����ȣ�� ���� ����� ��� '����� ����'�� ��Ÿ������ �ϴ� ���ǹ��� �ۼ��϶�. */
select ename "����̸�", manager "����ڻ����ȣ" 
    ,nvl(to_char(manager),'����� ����') "����� ǥ"
from employee;   
/* Q16. Ŀ�̼��� ������ �޿��� �����ȣ, ����̸��� �Բ� �˻��϶�. */
select ename "����̸�", eno "�����ȣ", salary+nvl(commission,0) "�޿�"
from employee
order by "�޿�";
/* Q17. ����ڻ����ȣ�� NULL�� ��� 'CEO'�� �ٲپ� �����ȣ, ����̸�, ����ڻ����ȣ�� �˻��϶�. */
select eno "�����ȣ", ename "����̸�", manager "����ڻ����ȣ" 
    ,nvl(to_char(manager), 'CEO') "�����ǥ"
from employee;
/* Q18. DECODE �Լ��� ���޿� ���� �λ�ȱ޿��� ���Ͻÿ�. ������ 'SALESMAN'�� ����� 10%, 'MANAGER'�� ����� 30%, 'CLERK'�� ����� 20%�� �λ��Ͻÿ�. */
select ename "����̸�", job,
        DECODE(job, 'SALESMAN',salary*1.1, 'MANAGER', salary*1.3, 'CLERK', salary*1.2, salary) as "�λ�޿�"
from employee
order by job;
/* Q19. CASE �Լ��� ���޿� ���� �λ�ȱ޿��� ���Ͻÿ�. ������ 'SALESMAN'�� ����� 10%, 'MANAGER'�� ����� 30%, 'CLERK'�� ����� 20%�� �λ��Ͻÿ�. */
select ename "����̸�" ,job "����",
    case job when 'SALESMAN' then salary * 1.1
             when 'MANAGER' then salary * 1.3
             when 'CLERK' then salary * 1.2
             else salary
    end as "�λ�޿�"
from employee
order by job;
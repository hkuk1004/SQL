select *
from employee e, department d
where e.dno = d.dno
and e.eno = 7788;

select e.eno, e.ename, d.dname, e.dno
from employee e, department d
where e.dno = d.dno
and e.eno = 7788;

/*natural join(�� ���������� dno�� ������ �Ǽ� e.dno�� d.dno�� ����ȵ�*/
select e.eno, e.ename, d.dname, dno 
from employee e natural join department d
where e.eno = 7788;

/*JOIN ~ USING*/
select e.eno, e.ename, d.dname, dno
from employee e join department d
using(dno)
where e.eno = 7788;

/*JOIN ~ ON*/
select e.eno, e.ename, d.dname, e.dno
from employee e join department d
on e.dno = d.dno
where e.eno = 7788;

select e.ename, e.salary, s.grade
from employee e, salgrade s
where e.salary between s.losal and s.hisal;

select e.ename, d.dname, e.salary, s.grade
from employee e, department d, salgrade s
where e.dno = d.dno
and e.salary between s.losal and s.hisal;

/*��� ���̺�*/
select emp.eno, emp.ename, emp.manager
from employee emp;
/*�Ŵ��� ���̺�*/
select mgr.eno, mgr.ename
from employee mgr;
/*SELF JOIN*/
select emp.eno "�����ȣ",emp.ename "����̸�", mgr.eno "�����ȣ" ,mgr.ename"���ӻ���̸�"
from employee emp, employee mgr
where emp.manager = mgr.eno;
/*OUTER JOIN*/
select emp.eno "�����ȣ",emp.ename "����̸�", mgr.eno "�����ȣ" ,mgr.ename"���ӻ���̸�"
from employee emp, employee mgr
where emp.manager = mgr.eno(+);
/*OUTER JOIN*/
select d.dno, d.dname, e.eno, ename
from department d, employee e
where d.dno = e.dno(+)
order by d.dno;
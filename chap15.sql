--����ڰ� ����ϴ� ���̺� ����--
create table dept_original
as
select * from department 
where 0=1;
--��� ���̺� ����--
create table dept_log
as
select * from department 
where 0=1;

--insert Ʈ���� ����--
create or replace trigger trigger_sample1
    after insert
    on dept_original
    for each row   
begin
    if inserting then
        DBMS_OUTPUT.PUT_LINE('insert Trigger �߻�');
        insert into dept_log
            values(:new.dno, :new.dname, :new.loc);
    end if;
end;
/

--���̺� ������ �߰��ϱ�--
insert into dept_original
    values(10,'ACCOUNTING','NEW YORK');
insert into dept_original
    values(20,'IT','PARIS');
--��������̺�� ����� ���̺� �߰��Ǿ����� Ȯ��--
select * from dept_original;
select * from dept_log;

--delete Ʈ���� ����--
create or replace trigger trigger_sample2
    after delete
    on dept_original
    for each row
begin
    DBMS_OUTPUT.PUT_LINE('Delete Trigger �߻�');
    delete from dept_log
        where dept_log.dno = :old.dno;
end;
/
--���̺� �����ϱ�--
delete dept_original where dno=10;

--��������̺�� ����� ���̺� �����Ǿ����� Ȯ��--
select * from dept_original;
select * from dept_log;

--��ǰ���̺� ����--
create table ��ǰ(
    ��ǰ�ڵ�    char(6) primary key,
    ��ǰ��     varchar2(12) not null,
    ������     varchar(12),
    �Һ��ڰ���  number(8),
    ������    number default 0);
    
--�԰� ���̺� ����--    
create table �԰�(
    �԰��ȣ    number(6) primary key,
    ��ǰ�ڵ�     char(6) references ��ǰ(��ǰ�ڵ�),
    �԰�����    date default sysdate,
    �԰����    number(6),
    �԰�ܰ�    number(8),
    �԰�ݾ�    number(8));
    
insert into ��ǰ(��ǰ�ڵ�,��ǰ��,������,�Һ��ڰ���)
    values('A00001','��Ź��','lg',500);
insert into ��ǰ(��ǰ�ڵ�,��ǰ��,������,�Һ��ڰ���)
    values('A00002','��ǻ��','lg',700);
insert into ��ǰ(��ǰ�ڵ�,��ǰ��,������,�Һ��ڰ���)
    values('A00003','�����','�Ｚ',600);  
-- �԰� Ʈ����--
create or replace trigger trg_03
after insert on �԰�
for each row
begin
    update ��ǰ
    set ������ = ������ + :new.�԰����
    where ��ǰ�ڵ� = :new.��ǰ�ڵ�;
end;
/

insert into �԰�(�԰��ȣ,��ǰ�ڵ�,�԰����,�԰�ܰ�,�԰�ݾ�)
    values(1,'A00001',5,320,1600);

select * from �԰�;
select * from ��ǰ;

insert into �԰�(�԰��ȣ,��ǰ�ڵ�,�԰����,�԰�ܰ�,�԰�ݾ�)
    values(2,'A00002',10,680,6800);

select * from �԰�;
select * from ��ǰ;

insert into �԰�(�԰��ȣ,��ǰ�ڵ�,�԰����,�԰�ܰ�,�԰�ݾ�)
    values(3,'A00003',5,220,1100);
insert into �԰�(�԰��ȣ,��ǰ�ڵ�,�԰����,�԰�ܰ�,�԰�ݾ�)
    values(4,'A00003',5,220,1100); 
    
--���� Ʈ����--
create or replace trigger trg_04
after update on �԰�
for each row
begin
    update ��ǰ
    set ������ = ������ + (-:old.�԰���� + :new.�԰����)
    where ��ǰ�ڵ� = :new.��ǰ�ڵ�;
end;
/

update �԰� set �԰���� = 10, �԰�ݾ� = 2200
where �԰��ȣ = 3;

select * from �԰� order by �԰��ȣ;
select * from ��ǰ;
    
--���� Ʈ����--
create or replace trigger trg_05
after delete on �԰�
for each row
begin
    update ��ǰ
    set ������ = ������ - :old.�԰����
    where ��ǰ�ڵ� = :old.��ǰ�ڵ�;
end;
/
    
delete �԰� where �԰��ȣ = 3;

select * from �԰� order by �԰��ȣ;
select * from ��ǰ;
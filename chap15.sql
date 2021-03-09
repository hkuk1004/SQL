--사용자가 사용하는 테이블 생성--
create table dept_original
as
select * from department 
where 0=1;
--백업 테이블 생성--
create table dept_log
as
select * from department 
where 0=1;

--insert 트리거 생성--
create or replace trigger trigger_sample1
    after insert
    on dept_original
    for each row   
begin
    if inserting then
        DBMS_OUTPUT.PUT_LINE('insert Trigger 발생');
        insert into dept_log
            values(:new.dno, :new.dname, :new.loc);
    end if;
end;
/

--테이블에 데이터 추가하기--
insert into dept_original
    values(10,'ACCOUNTING','NEW YORK');
insert into dept_original
    values(20,'IT','PARIS');
--사용자테이블과 백업용 테이블에 추가되었는지 확인--
select * from dept_original;
select * from dept_log;

--delete 트리거 생성--
create or replace trigger trigger_sample2
    after delete
    on dept_original
    for each row
begin
    DBMS_OUTPUT.PUT_LINE('Delete Trigger 발생');
    delete from dept_log
        where dept_log.dno = :old.dno;
end;
/
--테이블 삭제하기--
delete dept_original where dno=10;

--사용자테이블과 백업용 테이블에 삭제되었는지 확인--
select * from dept_original;
select * from dept_log;

--상품테이블 생성--
create table 상품(
    상품코드    char(6) primary key,
    상품명     varchar2(12) not null,
    제조사     varchar(12),
    소비자가격  number(8),
    재고수량    number default 0);
    
--입고 테이블 생성--    
create table 입고(
    입고번호    number(6) primary key,
    상품코드     char(6) references 상품(상품코드),
    입고일자    date default sysdate,
    입고수량    number(6),
    입고단가    number(8),
    입고금액    number(8));
    
insert into 상품(상품코드,상품명,제조사,소비자가격)
    values('A00001','세탁기','lg',500);
insert into 상품(상품코드,상품명,제조사,소비자가격)
    values('A00002','컴퓨터','lg',700);
insert into 상품(상품코드,상품명,제조사,소비자가격)
    values('A00003','냉장고','삼성',600);  
-- 입고 트리거--
create or replace trigger trg_03
after insert on 입고
for each row
begin
    update 상품
    set 재고수량 = 재고수량 + :new.입고수량
    where 상품코드 = :new.상품코드;
end;
/

insert into 입고(입고번호,상품코드,입고수량,입고단가,입고금액)
    values(1,'A00001',5,320,1600);

select * from 입고;
select * from 상품;

insert into 입고(입고번호,상품코드,입고수량,입고단가,입고금액)
    values(2,'A00002',10,680,6800);

select * from 입고;
select * from 상품;

insert into 입고(입고번호,상품코드,입고수량,입고단가,입고금액)
    values(3,'A00003',5,220,1100);
insert into 입고(입고번호,상품코드,입고수량,입고단가,입고금액)
    values(4,'A00003',5,220,1100); 
    
--갱신 트리거--
create or replace trigger trg_04
after update on 입고
for each row
begin
    update 상품
    set 재고수량 = 재고수량 + (-:old.입고수량 + :new.입고수량)
    where 상품코드 = :new.상품코드;
end;
/

update 입고 set 입고수량 = 10, 입고금액 = 2200
where 입고번호 = 3;

select * from 입고 order by 입고번호;
select * from 상품;
    
--삭제 트리거--
create or replace trigger trg_05
after delete on 입고
for each row
begin
    update 상품
    set 재고수량 = 재고수량 - :old.입고수량
    where 상품코드 = :old.상품코드;
end;
/
    
delete 입고 where 입고번호 = 3;

select * from 입고 order by 입고번호;
select * from 상품;
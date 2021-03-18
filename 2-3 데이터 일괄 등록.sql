--고객번호 시퀀스 생성
create sequence cust_no_seq
    start with 1
    increment by 1
    maxvalue 999999;
--select to_char(sysdate, 'YYYY')||lpad(cust_no_seq.nextval, 6, '0') from dual;
--select to_char(sysdate, 'YYYY')||lpad(cust_no_seq.currval, 6, '0') from dual;

--고객 데이터 입력
INSERT INTO CUST(CUST_NO,CUST_NM,ZIPCD,RDNM_ADDR,DTL_ADDR)
    VALUES(to_char(sysdate, 'YYYY')||lpad(cust_no_seq.nextval, 6, '0'),
           '김서준','13561','경기도 성남시 분당구 불정로 6 (정자동, NAVER그린팩토리)','1-1');
INSERT INTO CUST(CUST_NO,CUST_NM,ZIPCD,RDNM_ADDR,DTL_ADDR)
    VALUES(to_char(sysdate, 'YYYY')||lpad(cust_no_seq.nextval, 6, '0'),
           '이하준','50570','경상남도 양산시 북정15길 24-1 (북정동, 네이버)','1-2');
INSERT INTO CUST(CUST_NO,CUST_NM,ZIPCD,RDNM_ADDR,DTL_ADDR)
    VALUES(to_char(sysdate, 'YYYY')||lpad(cust_no_seq.nextval, 6, '0'),
           '박도윤','51609','경상남도 창원시 진해구 안골로297번길 15 (안골동, 네이버빌)','1-3');
INSERT INTO CUST(CUST_NO,CUST_NM,ZIPCD,RDNM_ADDR,DTL_ADDR)
    VALUES(to_char(sysdate, 'YYYY')||lpad(cust_no_seq.nextval, 6, '0'),
           '송시우','54660','전라북도 익산시 배산로 64 (모현동1가, 네이버빌딩)','1-4');
INSERT INTO CUST(CUST_NO,CUST_NM,ZIPCD,RDNM_ADDR,DTL_ADDR)
    VALUES(to_char(sysdate, 'YYYY')||lpad(cust_no_seq.nextval, 6, '0'),
           '김민준','30150','세종특별자치시 호려울로 9','1-5');
INSERT INTO CUST(CUST_NO,CUST_NM,ZIPCD,RDNM_ADDR,DTL_ADDR)
    VALUES(to_char(sysdate, 'YYYY')||lpad(cust_no_seq.nextval, 6, '0'),
           '한지호','48418','부산광역시 남구 문현로 56-1 (문현동, 네이버코리아)','1-6');
INSERT INTO CUST(CUST_NO,CUST_NM,ZIPCD,RDNM_ADDR,DTL_ADDR)
    VALUES(to_char(sysdate, 'YYYY')||lpad(cust_no_seq.nextval, 6, '0'),
           '안예준','55054','전라북도 전주시 완산구 거마평로 166 (효자동1가, 오일팩토리)','1-7');
INSERT INTO CUST(CUST_NO,CUST_NM,ZIPCD,RDNM_ADDR,DTL_ADDR)
    VALUES(to_char(sysdate, 'YYYY')||lpad(cust_no_seq.nextval, 6, '0'),
           '장주원','31126','충청남도 천안시 동남구 천안대로 677 (원성동, 퍼포먼스팩토리)','1-8');
INSERT INTO CUST(CUST_NO,CUST_NM,ZIPCD,RDNM_ADDR,DTL_ADDR)
    VALUES(to_char(sysdate, 'YYYY')||lpad(cust_no_seq.nextval, 6, '0'),
           '이은우','16325','경기도 수원시 장안구 덕영대로511번길 37-17 (천천동, 로봇팩토리)','1-9');
INSERT INTO CUST(CUST_NO,CUST_NM,ZIPCD,RDNM_ADDR,DTL_ADDR)
    VALUES(to_char(sysdate, 'YYYY')||lpad(cust_no_seq.nextval, 6, '0'),
           '한유준','30099','세종특별자치시 바른7길 43','1-10');

--출판사 데이터 입력
INSERT INTO PBCM(PBCM_CD,PBCM_NM,CHPR_NM,CHPR_TELNO)
    VALUES('1001','시공사','김시준','01012345678');
INSERT INTO PBCM(PBCM_CD,PBCM_NM,CHPR_NM,CHPR_TELNO)
    VALUES('1002','김영사','이영준','01012345679');
INSERT INTO PBCM(PBCM_CD,PBCM_NM,CHPR_NM,CHPR_TELNO)
    VALUES('1003','웅진씽크빅','박도진','01012345677');
INSERT INTO PBCM(PBCM_CD,PBCM_NM,CHPR_NM,CHPR_TELNO)
    VALUES('2001','창비','송창우','01012345676');
INSERT INTO PBCM(PBCM_CD,PBCM_NM,CHPR_NM,CHPR_TELNO)
    VALUES('2002','북이십일','김준일','01012345675');

--도서 데이터 입력
INSERT INTO BOOK(BK_NO,BK_NM,BK_UPRC,PBCM_CD)
    VALUES('1001000001','마음에 심는 꽃',13500,'1001');
INSERT INTO BOOK(BK_NO,BK_NM,BK_UPRC,PBCM_CD)
    VALUES('1001000002','더 위험한 과학책',19800,'1001');
INSERT INTO BOOK(BK_NO,BK_NM,BK_UPRC,PBCM_CD)
    VALUES('1001000003','스킵 비트',4500,'1001');
INSERT INTO BOOK(BK_NO,BK_NM,BK_UPRC,PBCM_CD)
    VALUES('1002000001','나를 돌보지 않는 나에게',12420,'1002');
INSERT INTO BOOK(BK_NO,BK_NM,BK_UPRC,PBCM_CD)
    VALUES('1002000002','어린이 정통 삼국지',44550,'1002');
INSERT INTO BOOK(BK_NO,BK_NM,BK_UPRC,PBCM_CD)
    VALUES('1003000001','그 많던 싱아는 누가 다 먹었을까',10800,'1003');
INSERT INTO BOOK(BK_NO,BK_NM,BK_UPRC,PBCM_CD)
    VALUES('2001000001','푸른 사자 와니니',9720,'2001');
INSERT INTO BOOK(BK_NO,BK_NM,BK_UPRC,PBCM_CD)
    VALUES('2002000001','아울북 마법천자문',10800,'2002');
INSERT INTO BOOK(BK_NO,BK_NM,BK_UPRC,PBCM_CD)
    VALUES('2002000002','하루키의 언어',17010,'2002');

--주문번호 시퀀스 생성
create sequence ord_no_seq
    start with 1
    increment by 1
    maxvalue 999999;
--select to_char(sysdate, 'YYYY')||lpad(ord_no_seq.nextval, 6, '0') from dual;
--select to_char(sysdate, 'YYYY')||lpad(ord_no_seq.currval, 6, '0') from dual;

INSERT INTO ORD_MST(ORD_NO,CUST_NO,ORD_DT,TOT_CNT,TOT_AMT)
    VALUES(to_char(sysdate, 'YYYY')||lpad(ord_no_seq.nextval, 6, '0'),
    '2021000001','20191101',0,0);
INSERT INTO ORD_DTL(ORD_NO,BK_NO,ORD_CNT,ORD_UPRC,ORD_AMT)
    VALUES(to_char(sysdate, 'YYYY')||lpad(ord_no_seq.currval, 6, '0'),
    '1001000001',1,0,0);
INSERT INTO ORD_DTL(ORD_NO,BK_NO,ORD_CNT,ORD_UPRC,ORD_AMT)
    VALUES(to_char(sysdate, 'YYYY')||lpad(ord_no_seq.currval, 6, '0'),
    '1001000002',1,0,0);
INSERT INTO ORD_DTL(ORD_NO,BK_NO,ORD_CNT,ORD_UPRC,ORD_AMT)
    VALUES(to_char(sysdate, 'YYYY')||lpad(ord_no_seq.currval, 6, '0'),
    '1001000003',1,0,0);

INSERT INTO ORD_MST(ORD_NO,CUST_NO,ORD_DT,TOT_CNT,TOT_AMT)
    VALUES(to_char(sysdate, 'YYYY')||lpad(ord_no_seq.nextval, 6, '0'),
    '2021000001','20191108',0,0);
INSERT INTO ORD_DTL(ORD_NO,BK_NO,ORD_CNT,ORD_UPRC,ORD_AMT)
    VALUES(to_char(sysdate, 'YYYY')||lpad(ord_no_seq.currval, 6, '0'),
    '2002000002',1,0,0);

INSERT INTO ORD_MST(ORD_NO,CUST_NO,ORD_DT,TOT_CNT,TOT_AMT)
    VALUES(to_char(sysdate, 'YYYY')||lpad(ord_no_seq.nextval, 6, '0'),
    '2021000001','20191209',0,0);
INSERT INTO ORD_DTL(ORD_NO,BK_NO,ORD_CNT,ORD_UPRC,ORD_AMT)
    VALUES(to_char(sysdate, 'YYYY')||lpad(ord_no_seq.currval, 6, '0'),
    '2002000001',1,0,0);

INSERT INTO ORD_MST(ORD_NO,CUST_NO,ORD_DT,TOT_CNT,TOT_AMT)
    VALUES(to_char(sysdate, 'YYYY')||lpad(ord_no_seq.nextval, 6, '0'),
    '2021000001','20191210',0,0);
INSERT INTO ORD_DTL(ORD_NO,BK_NO,ORD_CNT,ORD_UPRC,ORD_AMT)
    VALUES(to_char(sysdate, 'YYYY')||lpad(ord_no_seq.currval, 6, '0'),
    '2001000001',1,0,0);

INSERT INTO ORD_MST(ORD_NO,CUST_NO,ORD_DT,TOT_CNT,TOT_AMT)
    VALUES(to_char(sysdate, 'YYYY')||lpad(ord_no_seq.nextval, 6, '0'),
    '2021000001','20191215',0,0);
INSERT INTO ORD_DTL(ORD_NO,BK_NO,ORD_CNT,ORD_UPRC,ORD_AMT)
    VALUES(to_char(sysdate, 'YYYY')||lpad(ord_no_seq.currval, 6, '0'),
    '1003000001',1,0,0);
    
INSERT INTO ORD_MST(ORD_NO,CUST_NO,ORD_DT,TOT_CNT,TOT_AMT)
    VALUES(to_char(sysdate, 'YYYY')||lpad(ord_no_seq.nextval, 6, '0'),
    '2021000002','20191104',0,0);
INSERT INTO ORD_DTL(ORD_NO,BK_NO,ORD_CNT,ORD_UPRC,ORD_AMT)
    VALUES(to_char(sysdate, 'YYYY')||lpad(ord_no_seq.currval, 6, '0'),
    '1003000001',5,0,0);

INSERT INTO ORD_MST(ORD_NO,CUST_NO,ORD_DT,TOT_CNT,TOT_AMT)
    VALUES(to_char(sysdate, 'YYYY')||lpad(ord_no_seq.nextval, 6, '0'),
    '2021000003','20191114',0,0);
INSERT INTO ORD_DTL(ORD_NO,BK_NO,ORD_CNT,ORD_UPRC,ORD_AMT)
    VALUES(to_char(sysdate, 'YYYY')||lpad(ord_no_seq.currval, 6, '0'),
    '1003000001',1,0,0);

INSERT INTO ORD_MST(ORD_NO,CUST_NO,ORD_DT,TOT_CNT,TOT_AMT)
    VALUES(to_char(sysdate, 'YYYY')||lpad(ord_no_seq.nextval, 6, '0'),
    '2021000004','20191124',0,0);
INSERT INTO ORD_DTL(ORD_NO,BK_NO,ORD_CNT,ORD_UPRC,ORD_AMT)
    VALUES(to_char(sysdate, 'YYYY')||lpad(ord_no_seq.currval, 6, '0'),
    '1003000001',1,0,0);

INSERT INTO ORD_MST(ORD_NO,CUST_NO,ORD_DT,TOT_CNT,TOT_AMT)
    VALUES(to_char(sysdate, 'YYYY')||lpad(ord_no_seq.nextval, 6, '0'),
    '2021000005','20191106',0,0);
INSERT INTO ORD_DTL(ORD_NO,BK_NO,ORD_CNT,ORD_UPRC,ORD_AMT)
    VALUES(to_char(sysdate, 'YYYY')||lpad(ord_no_seq.currval, 6, '0'),
    '1001000001',1,0,0);
INSERT INTO ORD_DTL(ORD_NO,BK_NO,ORD_CNT,ORD_UPRC,ORD_AMT)
    VALUES(to_char(sysdate, 'YYYY')||lpad(ord_no_seq.currval, 6, '0'),
    '1001000003',1,0,0);
INSERT INTO ORD_DTL(ORD_NO,BK_NO,ORD_CNT,ORD_UPRC,ORD_AMT)
    VALUES(to_char(sysdate, 'YYYY')||lpad(ord_no_seq.currval, 6, '0'),
    '1002000002',1,0,0);
INSERT INTO ORD_DTL(ORD_NO,BK_NO,ORD_CNT,ORD_UPRC,ORD_AMT)
    VALUES(to_char(sysdate, 'YYYY')||lpad(ord_no_seq.currval, 6, '0'),
    '2002000002',1,0,0);

INSERT INTO ORD_MST(ORD_NO,CUST_NO,ORD_DT,TOT_CNT,TOT_AMT)
    VALUES(to_char(sysdate, 'YYYY')||lpad(ord_no_seq.nextval, 6, '0'),
    '2021000005','20190706',0,0);
INSERT INTO ORD_DTL(ORD_NO,BK_NO,ORD_CNT,ORD_UPRC,ORD_AMT)
    VALUES(to_char(sysdate, 'YYYY')||lpad(ord_no_seq.currval, 6, '0'),
    '1001000001',1,0,0);
INSERT INTO ORD_DTL(ORD_NO,BK_NO,ORD_CNT,ORD_UPRC,ORD_AMT)
    VALUES(to_char(sysdate, 'YYYY')||lpad(ord_no_seq.currval, 6, '0'),
    '1001000003',1,0,0);

INSERT INTO ORD_MST(ORD_NO,CUST_NO,ORD_DT,TOT_CNT,TOT_AMT)
    VALUES(to_char(sysdate, 'YYYY')||lpad(ord_no_seq.nextval, 6, '0'),
    '2021000005','20190807',0,0);
INSERT INTO ORD_DTL(ORD_NO,BK_NO,ORD_CNT,ORD_UPRC,ORD_AMT)
    VALUES(to_char(sysdate, 'YYYY')||lpad(ord_no_seq.currval, 6, '0'),
    '1002000001',1,0,0);
INSERT INTO ORD_DTL(ORD_NO,BK_NO,ORD_CNT,ORD_UPRC,ORD_AMT)
    VALUES(to_char(sysdate, 'YYYY')||lpad(ord_no_seq.currval, 6, '0'),
    '1002000002',1,0,0);

INSERT INTO ORD_MST(ORD_NO,CUST_NO,ORD_DT,TOT_CNT,TOT_AMT)
    VALUES(to_char(sysdate, 'YYYY')||lpad(ord_no_seq.nextval, 6, '0'),
    '2021000005','20190917',0,0);
INSERT INTO ORD_DTL(ORD_NO,BK_NO,ORD_CNT,ORD_UPRC,ORD_AMT)
    VALUES(to_char(sysdate, 'YYYY')||lpad(ord_no_seq.currval, 6, '0'),
    '2001000001',1,0,0);

INSERT INTO ORD_MST(ORD_NO,CUST_NO,ORD_DT,TOT_CNT,TOT_AMT)
    VALUES(to_char(sysdate, 'YYYY')||lpad(ord_no_seq.nextval, 6, '0'),
    '2021000005','20191027',0,0);
INSERT INTO ORD_DTL(ORD_NO,BK_NO,ORD_CNT,ORD_UPRC,ORD_AMT)
    VALUES(to_char(sysdate, 'YYYY')||lpad(ord_no_seq.currval, 6, '0'),
    '1002000002',1,0,0);

INSERT INTO ORD_MST(ORD_NO,CUST_NO,ORD_DT,TOT_CNT,TOT_AMT)
    VALUES(to_char(sysdate, 'YYYY')||lpad(ord_no_seq.nextval, 6, '0'),
    '2021000005','20191120',0,0);
INSERT INTO ORD_DTL(ORD_NO,BK_NO,ORD_CNT,ORD_UPRC,ORD_AMT)
    VALUES(to_char(sysdate, 'YYYY')||lpad(ord_no_seq.currval, 6, '0'),
    '1001000003',1,0,0);

INSERT INTO ORD_MST(ORD_NO,CUST_NO,ORD_DT,TOT_CNT,TOT_AMT)
    VALUES(to_char(sysdate, 'YYYY')||lpad(ord_no_seq.nextval, 6, '0'),
    '2021000005','20191224',0,0);
INSERT INTO ORD_DTL(ORD_NO,BK_NO,ORD_CNT,ORD_UPRC,ORD_AMT)
    VALUES(to_char(sysdate, 'YYYY')||lpad(ord_no_seq.currval, 6, '0'),
    '2001000001',1,0,0);

INSERT INTO ORD_MST(ORD_NO,CUST_NO,ORD_DT,TOT_CNT,TOT_AMT)
    VALUES(to_char(sysdate, 'YYYY')||lpad(ord_no_seq.nextval, 6, '0'),
    '2021000006','20191108',0,0);
INSERT INTO ORD_DTL(ORD_NO,BK_NO,ORD_CNT,ORD_UPRC,ORD_AMT)
    VALUES(to_char(sysdate, 'YYYY')||lpad(ord_no_seq.currval, 6, '0'),
    '1002000001',1,0,0);

INSERT INTO ORD_MST(ORD_NO,CUST_NO,ORD_DT,TOT_CNT,TOT_AMT)
    VALUES(to_char(sysdate, 'YYYY')||lpad(ord_no_seq.nextval, 6, '0'),
    '2021000007','20191108',0,0);
INSERT INTO ORD_DTL(ORD_NO,BK_NO,ORD_CNT,ORD_UPRC,ORD_AMT)
    VALUES(to_char(sysdate, 'YYYY')||lpad(ord_no_seq.currval, 6, '0'),
    '1002000002',1,0,0);

INSERT INTO ORD_MST(ORD_NO,CUST_NO,ORD_DT,TOT_CNT,TOT_AMT)
    VALUES(to_char(sysdate, 'YYYY')||lpad(ord_no_seq.nextval, 6, '0'),
    '2021000008','20191108',0,0);
INSERT INTO ORD_DTL(ORD_NO,BK_NO,ORD_CNT,ORD_UPRC,ORD_AMT)
    VALUES(to_char(sysdate, 'YYYY')||lpad(ord_no_seq.currval, 6, '0'),
    '1003000001',1,0,0);

INSERT INTO ORD_MST(ORD_NO,CUST_NO,ORD_DT,TOT_CNT,TOT_AMT)
    VALUES(to_char(sysdate, 'YYYY')||lpad(ord_no_seq.nextval, 6, '0'),
    '2021000009','20191104',0,0);
INSERT INTO ORD_DTL(ORD_NO,BK_NO,ORD_CNT,ORD_UPRC,ORD_AMT)
    VALUES(to_char(sysdate, 'YYYY')||lpad(ord_no_seq.currval, 6, '0'),
    '1002000001',2,0,0);
INSERT INTO ORD_DTL(ORD_NO,BK_NO,ORD_CNT,ORD_UPRC,ORD_AMT)
    VALUES(to_char(sysdate, 'YYYY')||lpad(ord_no_seq.currval, 6, '0'),
    '1002000002',2,0,0);
    
INSERT INTO ORD_MST(ORD_NO,CUST_NO,ORD_DT,TOT_CNT,TOT_AMT)
    VALUES(to_char(sysdate, 'YYYY')||lpad(ord_no_seq.nextval, 6, '0'),
    '2021000010','20191102',0,0);
INSERT INTO ORD_DTL(ORD_NO,BK_NO,ORD_CNT,ORD_UPRC,ORD_AMT)
    VALUES(to_char(sysdate, 'YYYY')||lpad(ord_no_seq.currval, 6, '0'),
    '1001000001',1,0,0);
INSERT INTO ORD_DTL(ORD_NO,BK_NO,ORD_CNT,ORD_UPRC,ORD_AMT)
    VALUES(to_char(sysdate, 'YYYY')||lpad(ord_no_seq.currval, 6, '0'),
    '1001000003',1,0,0);
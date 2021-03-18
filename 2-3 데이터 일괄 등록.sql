--����ȣ ������ ����
create sequence cust_no_seq
    start with 1
    increment by 1
    maxvalue 999999;
--select to_char(sysdate, 'YYYY')||lpad(cust_no_seq.nextval, 6, '0') from dual;
--select to_char(sysdate, 'YYYY')||lpad(cust_no_seq.currval, 6, '0') from dual;

--�� ������ �Է�
INSERT INTO CUST(CUST_NO,CUST_NM,ZIPCD,RDNM_ADDR,DTL_ADDR)
    VALUES(to_char(sysdate, 'YYYY')||lpad(cust_no_seq.nextval, 6, '0'),
           '�輭��','13561','��⵵ ������ �д籸 ������ 6 (���ڵ�, NAVER�׸����丮)','1-1');
INSERT INTO CUST(CUST_NO,CUST_NM,ZIPCD,RDNM_ADDR,DTL_ADDR)
    VALUES(to_char(sysdate, 'YYYY')||lpad(cust_no_seq.nextval, 6, '0'),
           '������','50570','��󳲵� ���� ����15�� 24-1 (������, ���̹�)','1-2');
INSERT INTO CUST(CUST_NO,CUST_NM,ZIPCD,RDNM_ADDR,DTL_ADDR)
    VALUES(to_char(sysdate, 'YYYY')||lpad(cust_no_seq.nextval, 6, '0'),
           '�ڵ���','51609','��󳲵� â���� ���ر� �Ȱ��297���� 15 (�Ȱ�, ���̹���)','1-3');
INSERT INTO CUST(CUST_NO,CUST_NM,ZIPCD,RDNM_ADDR,DTL_ADDR)
    VALUES(to_char(sysdate, 'YYYY')||lpad(cust_no_seq.nextval, 6, '0'),
           '�۽ÿ�','54660','����ϵ� �ͻ�� ���� 64 (������1��, ���̹�����)','1-4');
INSERT INTO CUST(CUST_NO,CUST_NM,ZIPCD,RDNM_ADDR,DTL_ADDR)
    VALUES(to_char(sysdate, 'YYYY')||lpad(cust_no_seq.nextval, 6, '0'),
           '�����','30150','����Ư����ġ�� ȣ����� 9','1-5');
INSERT INTO CUST(CUST_NO,CUST_NM,ZIPCD,RDNM_ADDR,DTL_ADDR)
    VALUES(to_char(sysdate, 'YYYY')||lpad(cust_no_seq.nextval, 6, '0'),
           '����ȣ','48418','�λ걤���� ���� ������ 56-1 (������, ���̹��ڸ���)','1-6');
INSERT INTO CUST(CUST_NO,CUST_NM,ZIPCD,RDNM_ADDR,DTL_ADDR)
    VALUES(to_char(sysdate, 'YYYY')||lpad(cust_no_seq.nextval, 6, '0'),
           '�ȿ���','55054','����ϵ� ���ֽ� �ϻ걸 �Ÿ���� 166 (ȿ�ڵ�1��, �������丮)','1-7');
INSERT INTO CUST(CUST_NO,CUST_NM,ZIPCD,RDNM_ADDR,DTL_ADDR)
    VALUES(to_char(sysdate, 'YYYY')||lpad(cust_no_seq.nextval, 6, '0'),
           '���ֿ�','31126','��û���� õ�Ƚ� ������ õ�ȴ�� 677 (������, �����ս����丮)','1-8');
INSERT INTO CUST(CUST_NO,CUST_NM,ZIPCD,RDNM_ADDR,DTL_ADDR)
    VALUES(to_char(sysdate, 'YYYY')||lpad(cust_no_seq.nextval, 6, '0'),
           '������','16325','��⵵ ������ ��ȱ� �������511���� 37-17 (õõ��, �κ����丮)','1-9');
INSERT INTO CUST(CUST_NO,CUST_NM,ZIPCD,RDNM_ADDR,DTL_ADDR)
    VALUES(to_char(sysdate, 'YYYY')||lpad(cust_no_seq.nextval, 6, '0'),
           '������','30099','����Ư����ġ�� �ٸ�7�� 43','1-10');

--���ǻ� ������ �Է�
INSERT INTO PBCM(PBCM_CD,PBCM_NM,CHPR_NM,CHPR_TELNO)
    VALUES('1001','�ð���','�����','01012345678');
INSERT INTO PBCM(PBCM_CD,PBCM_NM,CHPR_NM,CHPR_TELNO)
    VALUES('1002','�迵��','�̿���','01012345679');
INSERT INTO PBCM(PBCM_CD,PBCM_NM,CHPR_NM,CHPR_TELNO)
    VALUES('1003','������ũ��','�ڵ���','01012345677');
INSERT INTO PBCM(PBCM_CD,PBCM_NM,CHPR_NM,CHPR_TELNO)
    VALUES('2001','â��','��â��','01012345676');
INSERT INTO PBCM(PBCM_CD,PBCM_NM,CHPR_NM,CHPR_TELNO)
    VALUES('2002','���̽���','������','01012345675');

--���� ������ �Է�
INSERT INTO BOOK(BK_NO,BK_NM,BK_UPRC,PBCM_CD)
    VALUES('1001000001','������ �ɴ� ��',13500,'1001');
INSERT INTO BOOK(BK_NO,BK_NM,BK_UPRC,PBCM_CD)
    VALUES('1001000002','�� ������ ����å',19800,'1001');
INSERT INTO BOOK(BK_NO,BK_NM,BK_UPRC,PBCM_CD)
    VALUES('1001000003','��ŵ ��Ʈ',4500,'1001');
INSERT INTO BOOK(BK_NO,BK_NM,BK_UPRC,PBCM_CD)
    VALUES('1002000001','���� ������ �ʴ� ������',12420,'1002');
INSERT INTO BOOK(BK_NO,BK_NM,BK_UPRC,PBCM_CD)
    VALUES('1002000002','��� ���� �ﱹ��',44550,'1002');
INSERT INTO BOOK(BK_NO,BK_NM,BK_UPRC,PBCM_CD)
    VALUES('1003000001','�� ���� �̾ƴ� ���� �� �Ծ�����',10800,'1003');
INSERT INTO BOOK(BK_NO,BK_NM,BK_UPRC,PBCM_CD)
    VALUES('2001000001','Ǫ�� ���� �ʹϴ�',9720,'2001');
INSERT INTO BOOK(BK_NO,BK_NM,BK_UPRC,PBCM_CD)
    VALUES('2002000001','�ƿ�� ����õ�ڹ�',10800,'2002');
INSERT INTO BOOK(BK_NO,BK_NM,BK_UPRC,PBCM_CD)
    VALUES('2002000002','�Ϸ�Ű�� ���',17010,'2002');

--�ֹ���ȣ ������ ����
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
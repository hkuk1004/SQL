--���ǻ纰 �ֹ� ��Ȳ--
select p.pbcm_nm"���ǻ��", b.bk_nm"������", sum(d.ord_cnt)"�� �Ǽ�", sum(d.ord_amt)"�� �ݾ�"
from pbcm p, book b, ord_dtl d
where p.pbcm_cd = b.pbcm_cd
and b.bk_no = d.bk_no
group by p.pbcm_nm, b.bk_nm
order by p.pbcm_nm, b.bk_nm;

--���� �ֹ�����(TOP5)--
select ������ȣ, ������, �ѰǼ�
from (
select b.bk_no"������ȣ", b.bk_nm"������", sum(d.ord_cnt)"�ѰǼ�"
from pbcm p, book b, ord_dtl d
where b.bk_no = d.bk_no
group by b.bk_no, b.bk_nm
order by 3 desc
)
where rownum <= 5;

--'19�� ���� �ֹ�����(TOP3)--
select bk_no, bk_nm, cnt
from ( select b.bk_no, b.bk_nm, sum(d.ord_cnt) cnt
       from book b, ord_dtl d, ord_mst m
       where b.bk_no = d.bk_no
       and d.ord_no = m.ord_no
       and substr(m.ord_dt,1,4) = '2019'
       --and m.ord_dt like '2019%'
       group by b.bk_no, b.bk_nm
       order by cnt desc)
where rownum <= 3; 

--'19�� �Ϲݱ� ���� ���� �ֹ���Ȳ--
select cust_nm "����", sum(m07)"7��",sum(m08)"8��",sum(m09)"9��",sum(m10)"10��",sum(m11)"11��",sum(m12)"12��"
from(
        select c.cust_nm,
        decode(substr(m.ord_dt,5,2),'07', sum(m.tot_cnt),0) m07,
        decode(substr(m.ord_dt,5,2),'08', sum(m.tot_cnt),0) m08,
        decode(substr(m.ord_dt,5,2),'09', sum(m.tot_cnt),0) m09,
        decode(substr(m.ord_dt,5,2),'10', sum(m.tot_cnt),0) m10,
        decode(substr(m.ord_dt,5,2),'11', sum(m.tot_cnt),0) m11,
        decode(substr(m.ord_dt,5,2),'12', sum(m.tot_cnt),0) m12   
    from cust c, ord_mst m
    where c.cust_no = m.cust_no
    and substr(m.ord_dt,1,6) between '201907' and '201912'
    group by c.cust_nm, substr(m.ord_dt,5,2)
)
group by cust_nm
order by cust_nm;

select *
from (select cust_nm, tot_cnt, substr(ord_dt,5,2) as month
      from cust, ord_mst
      where cust.cust_no = ord_mst.cust_no)
pivot(
        sum(tot_cnt)
        for month in ('07','08','09','10','11','12')
);

--�Ϲݱ� ���ǻ纰 ���� �ֹ���Ȳ--
--'19�� �Ϲݱ� ���ǻ纰 �����ֹ���Ȳ
select pbcm_nm, bk_nm, sum(m07) "07��", sum(m08) "08��", sum(m09) "09��",
       sum(m10) "10��", sum(m11) "11��", sum(m12) "12��",
       sum(m07+m08+m09+m10+m11+m12) "TOT"
from (
    select p.pbcm_nm, b.bk_nm, 
       	decode(substr(m.ord_dt,5,2),'07', d.ord_cnt, 0) m07,
       	decode(substr(m.ord_dt,5,2),'08', d.ord_cnt, 0) m08,
       	decode(substr(m.ord_dt,5,2),'09', d.ord_cnt, 0) m09,
       	decode(substr(m.ord_dt,5,2),'10', d.ord_cnt, 0) m10,
       	decode(substr(m.ord_dt,5,2),'11', d.ord_cnt, 0) m11,
       	decode(substr(m.ord_dt,5,2),'12', d.ord_cnt, 0) m12
    from pbcm p, book b, ord_dtl d, ord_mst m
    where p.pbcm_cd = b.pbcm_cd
    and b.bk_no = d.bk_no
    and d.ord_no = m.ord_no
    and substr(m.ord_dt,1,6) between '201907' and '201912')
group by pbcm_nm, bk_nm
order by 1, 2;
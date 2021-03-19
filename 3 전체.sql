--고객정보 리스트--
select cust_nm, cust_no, rdnm_addr
from cust
order by cust_nm;

--출판사 리스트--
select pbcm_nm, pbcm_cd, chpr_nm, chpr_telno
from pbcm
order by pbcm_nm;

--출판사별 도서 리스트--
select p.pbcm_nm, p.pbcm_cd, p.chpr_nm, p.chpr_telno, b.bk_nm, b.bk_no, to_char(b.bk_uprc,'999,999')
from pbcm p, book b
where p.pbcm_cd = b.pbcm_cd
order by p.pbcm_nm, b.bk_nm;

-- 주문 리스트--
select m.ord_dt"주문일자", c.cust_nm"고객명", c.cust_no"고객번호", m.ord_no"주문번호",b.bk_nm||'('||p.pbcm_nm||')' "도서명(출판사)",
d.ord_cnt"건수", to_char(d.ord_uprc,'999,999')"단가", to_char(d.ord_amt,'999,999')"금액"
from cust c, ord_mst m, ord_dtl d, book b, pbcm p
where c.cust_no = m.cust_no
and m.ord_no = d.ord_no
and d.bk_no = b.bk_no
and b.pbcm_cd = p.pbcm_cd
and m.ord_dt between '20191101' and '20191130'
order by m.ord_dt, c.cust_nm, m.ord_no;


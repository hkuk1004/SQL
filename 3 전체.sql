--������ ����Ʈ--
select cust_nm, cust_no, rdnm_addr
from cust
order by cust_nm;

--���ǻ� ����Ʈ--
select pbcm_nm, pbcm_cd, chpr_nm, chpr_telno
from pbcm
order by pbcm_nm;

--���ǻ纰 ���� ����Ʈ--
select p.pbcm_nm, p.pbcm_cd, p.chpr_nm, p.chpr_telno, b.bk_nm, b.bk_no, to_char(b.bk_uprc,'999,999')
from pbcm p, book b
where p.pbcm_cd = b.pbcm_cd
order by p.pbcm_nm, b.bk_nm;

-- �ֹ� ����Ʈ--
select m.ord_dt"�ֹ�����", c.cust_nm"����", c.cust_no"����ȣ", m.ord_no"�ֹ���ȣ",b.bk_nm||'('||p.pbcm_nm||')' "������(���ǻ�)",
d.ord_cnt"�Ǽ�", to_char(d.ord_uprc,'999,999')"�ܰ�", to_char(d.ord_amt,'999,999')"�ݾ�"
from cust c, ord_mst m, ord_dtl d, book b, pbcm p
where c.cust_no = m.cust_no
and m.ord_no = d.ord_no
and d.bk_no = b.bk_no
and b.pbcm_cd = p.pbcm_cd
and m.ord_dt between '20191101' and '20191130'
order by m.ord_dt, c.cust_nm, m.ord_no;


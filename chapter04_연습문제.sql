--https://data-make.tistory.com/19--
/* Q1. 사원들의 사원이름, 사원직무를 소문자로 검색하라. */
select lower(ename)"사원이름", lower(job)"사원직무"
from employee;
/* Q2. 사원들의 사원이름, 사원직무를 대문자로 검색하라. */
select upper(ename) "사원이름", upper(job) "사원직무"
from employee;
/* Q3. 사원들의 사원이름, 사원직무를 첫 자만 대문자로 검색하라. */
select initcap(ename) "사원이름", initcap(job)"사원직무"
from employee;
/* Q4. 사원들의 사원이름과 사원이름의 첫 두 글자를 검색하라. */
select ename "사원이름", substr(ename,1,2) "첫 두글자"
from employee;
/* Q5. 사원들의 사원이름과 사원이름의 길이를 검색하라. */
select ename "사원이름", length(ename)"길이"
from employee;
/* Q6. 사원들의 사원이름에 'A'가 몇 번째 위치에 있는지 검색하라. */
select ename "사원이름", instr(ename,'A')"A위치"
from employee;
/* Q7. 사원이름을 15자리로 하고, 뒤에 '*'를 채워 검색하라. */
select lpad(ename,15,'*')"사원이름"
from employee;
/* Q8. 사원의 사원번호, 사원이름, 급여를 검색하라(급여는 두 번째 자리에서 반올림함). */
select eno "사원번호", ename "사원이름", round(salary,2) "급여"
from employee
order by salary;
/* Q9. 사원의 사원번호, 사원이름, 급여를 검색하라(급여는 두 번째 자리에서 절삭함). */
select eno "사원번호", ename "사원이름", trunc(salary,2) "급여"
from employee
order by salary;
/* Q10. 사원의 사원번호, 사원이름, 입사 후 100일의 날짜를 검색하라. */
select eno "사원번호", ename "사원이름", (hiredate + 100) "입사 후 100일"
from employee;
/* Q11. 사원의 사원번호, 사원이름, 입사일, 근무 일자를 계산하여 검색하라. */
select eno "사원번호", ename "사원이름", hiredate "입사일", round(sysdate - hiredate) "근무 일자"
from employee;
/* Q12. 사원들의 입사일에서 3달째 되는 날짜를 검색하라. */
select ename "사원이름", add_months(hiredate,3)"3달 째 되는 날짜"
from employee;
/* Q13. 사원들의 입사일 다음 토요일의 날짜를 검색하라. */
select ename "사원이름", next_day(hiredate,'토요일') "다음 토요일은?"
from employee;
/* Q14. 사원들의 입사월의 마지막 날짜를 검색하라. */
select ename "사원이름", last_day(hiredate) "입사월의 마지막 날짜"
from employee;
/* Q15. 상급자사원번호가 없는 사원의 경우 '상급자 없음'을 나타내도록 하는 질의문을 작성하라. */
select ename "사원이름", manager "상급자사원번호" 
    ,nvl(to_char(manager),'상급자 없음') "상급자 표"
from employee;   
/* Q16. 커미션을 포함한 급여를 사원번호, 사원이름과 함께 검색하라. */
select ename "사원이름", eno "사원번호", salary+nvl(commission,0) "급여"
from employee
order by "급여";
/* Q17. 상급자사원번호가 NULL인 경우 'CEO'로 바꾸어 사원번호, 사원이름, 상급자사원번호를 검색하라. */
select eno "사원번호", ename "사원이름", manager "상급자사원번호" 
    ,nvl(to_char(manager), 'CEO') "상급자표"
from employee;
/* Q18. DECODE 함수로 직급에 따라 인상된급여를 구하시오. 직급이 'SALESMAN'인 사원은 10%, 'MANAGER'인 사원은 30%, 'CLERK'인 사원은 20%을 인상하시오. */
select ename "사원이름", job,
        DECODE(job, 'SALESMAN',salary*1.1, 'MANAGER', salary*1.3, 'CLERK', salary*1.2, salary) as "인상급여"
from employee
order by job;
/* Q19. CASE 함수로 직급에 따라 인상된급여를 구하시오. 직급이 'SALESMAN'인 사원은 10%, 'MANAGER'인 사원은 30%, 'CLERK'인 사원은 20%을 인상하시오. */
select ename "사원이름" ,job "직급",
    case job when 'SALESMAN' then salary * 1.1
             when 'MANAGER' then salary * 1.3
             when 'CLERK' then salary * 1.2
             else salary
    end as "인상급여"
from employee
order by job;
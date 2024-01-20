select e.FIRST_NAME || ' ' || e.LAST_NAME "Full_name",
    TO_CHAR(e.salary,'$999,999,999.99') "Salary",
    NVL2(e.EMAIL, CASE WHEN e.EMAIL LIKE '%_@%' THEN SUBSTR(e.EMAIL, 1, INSTR(e.EMAIL,'@'))
    ELSE 'INVALID MAIL' END, 'INVALID MAIL') "Email",
    TRUNC(MONTHS_BETWEEN(sysdate, TRUNC(sysdate, 'year')), 0) * e.salary "Current year salary",
    NVL(TO_CHAR(e.COMMISSION_PCT), 'No Com') "COMMISION_PCT"

from employees e

where (e.department_id = 50 OR (MONTHS_BETWEEN(sysdate, e.hire_date)/12 >= 5))
    AND e.PHONE_NUMBER LIKE ('515%')
    AND e.JOB_ID NOT IN ('IT_PROG', 'PU_CLERK')
    AND e.salary BETWEEN 5000 AND 10000
    AND e.manager_id IS NOT NULL

ORDER BY e.salary DESC, e.HIRE_DATE;
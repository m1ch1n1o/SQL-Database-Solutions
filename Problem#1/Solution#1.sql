select
    emp.FIRST_NAME || ' - ' || emp.LAST_NAME  "F and L",
    NVL(dep.DEPARTMENT_NAME, 'X')  "Department",
    man.FIRST_NAME "Manager",
    TO_CHAR(emp.SALARY, '$99,999.99') "Salary",
    man2.FIRST_NAME  "Manager's Manager",
  	man2.SALARY  "Manager's Manager Salary"

from employees emp
left join departments dep ON emp.DEPARTMENT_ID = dep.DEPARTMENT_ID
join employees man ON emp.MANAGER_ID = man.EMPLOYEE_ID
join employees man2 ON man.MANAGER_ID = man2.EMPLOYEE_ID

where MOD(man2.SALARY, 17) = 0 and (man2.FIRST_NAME LIKE '%a%' or man2.FIRST_NAME LIKE '%A%');


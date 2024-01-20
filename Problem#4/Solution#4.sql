select
    d.department_name department_name,
    decode(count (e.employee_id), 0, 'N/A', to_char(count(e.employee_id))) emp_cnt,
    decode(count (e.employee_id), 0, 'N/A', to_char(count(distinct e.job_id))) job_cnt,
    nvl(to_char(sum(e.salary)), 'N/A') sum_sal,
	nvl(to_char(min(e.salary) + max(e.salary)), 'N/A') sum_min_max,
    listagg(e.phone_number, ', ') within group (order by phone_number) phone_numbers

from departments d
left join HR.employees e on e.department_id  = d.department_id
join locations l on l.location_id = d.location_id
join countries c on c.country_id = l.country_id

	where instr(d.department_name, ' ', 1) = 0 and
    	lower(c.country_name) like lower(c.country_id) || '%'

group by d.department_name, c.country_id, c.country_name
order by c.country_id, c.country_name DESC
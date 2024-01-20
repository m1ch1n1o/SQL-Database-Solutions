select
    j.job_id job_id,
	j.job_title name,
    decode(sum(decode(mod(e.employee_id, 2), 1, 1, 0)), 0, 'N/A', sum(decode(mod(e.employee_id, 2), 1, 1, 0))) emp_cnt,
    nvl(to_char(avg(decode(mod(e.employee_id, 2), 0, e.salary, null))), 'N/A') avg_sal,
    nvl(to_char(sum(decode (e.salary, (select max(salary) from employees where job_id = j.job_id), 1, 0))), 'N/A') mx_cnt

from jobs j
join employees e on e.job_id = j.job_id

group by j.job_id, j.job_title
    having length(j.job_id) >= 4
    	and (max(j.max_salary) - min(j.min_salary)) < (select max(jj.max_salary - jj.min_salary) from jobs jj)
order by decode(instr(j.job_id, 'IT'), '1', 1, 2), j.job_id

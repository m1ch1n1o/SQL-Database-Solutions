
SELECT
    SUBSTR(j.JOB_ID, 1, INSTR(j.JOB_ID,'_') - 1) "pref",

    count(j.job_id) "count",

    CASE COUNT(e.job_id)
    	WHEN 0 THEN 'N'
    	ELSE 'Y' END "yn",

    AVG(e.salary) "avg_salary",

    SUM(DECODE(TO_CHAR(e.hire_date, 'fmYYYY'), '2002', 1, 0)) "cnt_2002"

FROM JOBS j
LEFT JOIN employees e ON (j.job_id = e.job_id)
    group by substr(j.job_id, 1, instr(j.job_id, '_') - 1)

ORDER BY
    (CASE WHEN "pref" LIKE 'IT%' then 1
		  WHEN "pref" LIKE 'MK%' then 2
		  ELSE 3
    END) ASC,
    "avg_salary" DESC;
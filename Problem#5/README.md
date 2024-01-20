# Position Information

## Objective

Create a SQL SELECT statement to retrieve information about employees based on specific conditions and format the results as described below.

## Displayed fields

Display the following fields:

- `job_id`: ID of the position.
- `name`: Name of the position.
- `emp_cnt`: Number of employees with EMPLOYEE_ID less than the minimum EMPLOYEE_ID for this position. If no employees
  are found, display 'N/A'.
- `avg_sal`: Average salary of employees with even EMPLOYEE_ID for this position. If no such employees are found,
  display 'N/A'.
- `mx_cnt`: Number of employees with the maximum salary for this position. If no such employees are found, display '
  N/A'.

## Conditions

The query selectively fetches information for employees who meet the following conditions:

- Filter out positions with a job_id less than 4 characters.
- Filter out positions where the difference between MAX_SALARY and MIN_SALARY is maximal.

## Sorting

The information is sorted in the following order:

1. job_id, first showing positions with job_ids related to IT.
2. All other positions in alphabetical order.
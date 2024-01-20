# Department Information

## Objective

Create a SQL SELECT statement to retrieve information about employees based on specific conditions and format the
results as described below.

## Displayed fields

Display the following fields:

- `department_name`: Name of the department.
- `emp_cnt`: Number of employees working in the department. If no employees are working, display 'N/A'.
- `job_cnt`: Number of different positions in the department. If no positions are available, display 'N/A'.
- `sum_sal`: Total salary of employees in the department. Display 'N/A' in case of NULL values.
- `sum_min_max`: Sum of minimum and maximum salaries in the department. Display 'N/A' in case of NULL values.
- `phone_numbers`: Phone numbers of employees in the department, separated by ", ". The numbers should be ordered in
  ascending order of salary. For example, if there are 2 employees in a department, and their phone numbers are 123 and
  456, the output should be "123, 456".

## Conditions

The query selectively fetches information for employees who meet the following conditions:

- Filter out departments with names that are 2 or more words long. If a department's name is "A," print it. However, if
  the department's name is "A B," do not print it.
- Filter out departments that do not belong to countries where `COUNTRY_ID` is not the starting value of `COUNTRY_NAME`.
  Ignore case sensitivity when comparing.

## Sorting

The information is sorted in the following order:

1. By country IDs in ascending order
2. By country names in descending order.
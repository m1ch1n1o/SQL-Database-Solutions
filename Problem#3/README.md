# Employee Position Analysis

## Objective

Create a SQL SELECT statement to retrieve information about employees based on specific conditions and format the results as described below.

## Displayed fields

Display the following fields:

1. **Position Prefix (Pref):** The prefix of the JOBS_ID.

2. **Employee Count (Count):** The number of employees in positions that start with the specified prefix.

3. **Existence Flag (YN):** Indicates whether any employee holds a position that starts with the given prefix. Displays 'Y' if true, and 'N' otherwise.

4. **Average Salary (Avg_salary):** The average salary for employees in positions that start with the specified prefix.

5. **Employee Count in 2002 (Cnt_2002):** The count of employees in positions that start with the specified prefix in the year 2002.

## Sorting

The information is sorted in the following order:

1. Positions with the prefix 'IT' (IT Pref).
2. Positions with the prefix 'MK' (MK Pref).
3. All other positions, sorted by average salary in descending order.
# Employee Information Retrieval SQL Query

## Objective

Create a SQL SELECT statement to retrieve information about employees based on specific conditions and format the
results as described below.

## Query Details

The query is designed to display the following information:

1. Employee's first name and last name concatenated with ' - ' symbols, presented in a column named 'F and L'.
2. Department name (or 'X' if it doesn't exist).
3. Manager's name.
4. Salary formatted as $12,000.00.
5. Manager's name.
6. Manager's Manager's name.
7. Manager's Manager's salary.

## Conditions

The query selectively fetches information for employees who meet the following conditions:

- Manager's Manager's name contains the symbol 'a' (case-insensitive).
- Manager's Manager's salary is divisible by 17.
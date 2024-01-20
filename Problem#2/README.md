# Employee Information Retrieval

## Objective

Create a SQL SELECT statement to retrieve information about employees based on specific conditions and format the
results as described below.

## Displayed Fields

Display the following fields:

1. Employee's full name with a single space in between, named 'full_name'.
2. Employee's salary in the format of $XXX,XXX,XXX.XX (do not print extra spaces).
3. Extracted mail value before the '@' symbol. If the mail is empty or lacks '@', print 'INVALID MAIL'.
4. The total yearly salary considering the current month (if the employee has been employed for X months this year,
   salary * X).
5. Commission status. If there is no commission, print 'No Com'.

## Conditions

Retrieve information about employees who meet the following conditions:

1. Work in the department with ID 50 or have at least 5 years of experience in their current position.
2. Have a phone number starting with '515'.
3. Do not work in positions 'IT_PROG' or 'PU_CLERK'.
4. Have a salary between $5000 and $10000.
5. Have a manager.

## Sorting

The information is sorted in the following order:

1. Salary in descending order.
2. Employment date in ascending order.
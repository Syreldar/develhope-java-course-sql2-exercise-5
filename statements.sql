-- CONCAT: Merges two text fields into a single one.
SELECT CONCAT(first, last) AS fullName FROM persons;

-- LOWER: Turns all characters in a text field to lower case.
SELECT LOWER(title) AS lowerTitle FROM books;

-- UPPER: Transforms all characters in a text field to upper case.
SELECT UPPER(city) AS upperCity FROM addresses;

-- TRIM: Eliminates any extra spaces at the beginning and end of a text field.
SELECT TRIM(address) AS cleanAddress FROM customers;

-- LENGTH: Gives the number of characters in a text field.
SELECT LENGTH(email) AS emailLength FROM users;

-- SUBSTRING: Extracts a portion of a text field.
SELECT SUBSTRING(title, 1, 4) AS shortTitle FROM books;

-- ROUND: Rounds a numeric field to a certain number of decimal places.
SELECT ROUND(cost, 1) AS roundedCost FROM orders;

-- DATE_ADD: Adds a time span to a date field.
SELECT DATE_ADD(CURRENT_DATE, INTERVAL 1 WEEK) AS nextWeek FROM events;

-- DATE_SUB: Deducts a time span from a date field.
SELECT DATE_SUB(CURRENT_DATE, INTERVAL 1 WEEK) AS lastWeek FROM events;

-- FORMAT: Structures a numeric field based on a specific format.
SELECT FORMAT(salary, 0) AS formattedSalary FROM employees;

-- To calculate a birthday using your current age:
SELECT DATE_ADD(DATE_ADD(CURRENT_DATE, INTERVAL -22 DAYS), INTERVAL -1997 YEARS) AS thisYearBirthday FROM tableName; -- I'll use my birthday as example.

-- To get the date at exactly midnight:
SELECT DATE(CONCAT(DATE_ADD(DATE_ADD(CURRENT_DATE, INTERVAL -22 DAYS), INTERVAL -1997 YEARS), ' 00:00:00')) AS midnightBirthday FROM tableName; -- I'll use my birthday as example.

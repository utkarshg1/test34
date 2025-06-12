-- Use proper database
USE wakad_9am;

-- View the tips table
SELECT * FROM tips;

-- Show only day, total bill and tip
SELECT day, total_bill, tip
FROM tips;

-- View unique days in data
SELECT DISTINCT day
FROM tips;

SELECT DISTINCT time
FROM tips;

SELECT DISTINCT sex
FROM tips;

-- Show the data only for thursday
SELECT * FROM tips
WHERE day = "Thur";

-- Show the data for Sat OR Sun
SELECT day, total_bill, tip
FROM tips
WHERE day = "Sat" OR day = "Sun";

-- Show data for Fri, Sat, Sun
SELECT day, total_bill, tip
FROM tips
WHERE day in ("Fri", "Sat", "Sun");

SELECT day, total_bill, tip
FROM tips
WHERE day != "Thur";

-- Show the data excluding Sat, Sun
SELECT day, total_bill
FROM tips
WHERE day not in ("sat", "sun");

-- Find out the data where day starts with
-- letter S
SELECT * FROM tips
WHERE day LIKE "s%";

-- Day ends with letter r 
SELECT * FROM tips
WHERE day LIKE "%r";

-- Case sensitive Letter starts with Capital F
SELECT * FROM tips
WHERE BINARY day LIKE "F%";

-- Show the all data where total bill is more than 30
SELECT * FROM tips
WHERE total_bill > 30;

-- Show total bill less than 10 USD
SELECT * FROM tips
WHERE total_bill < 10;

-- Show total bill between 10 to 20
SELECT * FROM tips
WHERE total_bill >= 10 AND total_bill <= 20;

SELECT * FROM tips
WHERE total_bill BETWEEN 10 AND 20;

-- Total bill not between 10 and 30
SELECT * FROM tips
WHERE total_bill NOT BETWEEN 10 AND 30;

-- Show data where day is Sun and total bill
-- is more than or equal to 30 USD
SELECT * FROM tips
WHERE day = "Sun" AND total_bill >= 30;

-- Show the data for day Sat, Sun and
-- total bill between 10 and 20
SELECT * FROM tips
WHERE day IN ("Sat", "Sun") AND
	  total_bill BETWEEN 10 AND 20;
      
SELECT ROUND(total_bill, 0) as bill
FROM tips;
      
SELECT * FROM tips
WHERE ROUND(total_bill, 0) = 10;
      
-- Count total number of rows in data
SELECT COUNT(*) AS n_rows
FROM tips;

-- Count distinct days in data
SELECT COUNT(DISTINCT day) AS unique_day_count
FROM tips;

-- Find out sum of total bill in data
SELECT SUM(total_bill) AS sum_bill
FROM tips;

SELECT ROUND(SUM(total_bill),1) AS sum_bill
FROM tips;

-- Find out sum, max, min, avg for total_Bill
SELECT
	SUM(total_bill) AS sum_bill,
    AVG(total_bill) AS avg_bill,
    MAX(total_bill) AS max_bill,
    MIN(total_bill) AS min_bill,
    STD(total_bill) AS std_bill
FROM tips;

-- Find out avg bill and avg tip
SELECT
	AVG(total_bill) AS avg_bill,
    AVG(tip) AS avg_tip
FROM tips;

-- Show sum of bill and tip during Sun
SELECT
	SUM(total_bill) AS sum_bill,
    SUM(tip) AS sum_tip
FROM tips
WHERE day = "Sun";

-- Get total bill and tip sum for Thur, Fri
SELECT
	SUM(total_bill) AS sum_bill,
    AVG(total_bill) AS avg_bill,
    SUM(tip) AS sum_tip,
    AVG(tip) AS avg_tip
FROM tips
WHERE day in ("Thur", "Fri");





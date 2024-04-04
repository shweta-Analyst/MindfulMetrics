-- JP Morgan SQL Interview Question 

/* our team at JPMorgan Chase is preparing to launch a new credit card, and to gain some insights, you're analyzing how many credit cards were issued each month.

Write a query that outputs the name of each credit card and the difference in the number of issued cards between the month with the highest issuance cards and the lowest issuance. Arrange the results based on the largest disparity */

-- Question picked from https://datalemur.com/questions/cards-issued-difference

--  Creating monthly_cards_issue Table

create Table monthly_cards_issue (issue_month Integer ,
issue_year Integer ,
card_name string,
issued_amount Integer );

-- Add values to monthlu_cards_issue Table 

Insert into monthly_cards_issue (issue_month ,issue_year ,card_name ,issued_amount )Values 
('Chase Sapphire Reserve', 160000, 12, 2020),
('Chase Sapphire Reserve', 170000, 1, 2021),
('Chase Sapphire Reserve', 175000, 2, 2021),
('Chase Sapphire Reserve', 180000, 3, 2021),
('Chase Freedom Flex', 55000, 1, 2021),
('Chase Freedom Flex', 60000, 2, 2021),
('Chase Freedom Flex', 65000, 3, 2021),
('Chase Freedom Flex', 70000, 4, 2021),
('Chase Sapphire Reserve', 150000, 11, 2020);



-------------------------------------------------------
--My Solution
-------------------------------------------------------

select card_name , MAX(issued_amount) - MIN(issued_amount) as Difference 
from monthly_cards_issued 
GROUP BY card_name
ORDER BY Difference desc
;

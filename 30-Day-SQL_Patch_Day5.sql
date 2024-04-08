-- LinkedIn SQL Interview Question 

/* Given a table of candidates and their skills, you're tasked with finding the candidates best suited for an open Data Science job. You want to find candidates who are proficient in Python, Tableau, and PostgreSQL.

Write a query to list the candidates who possess all of the required skills for the job. Sort the output by candidate ID in ascending order. */

-- Question picked from https://datalemur.com/questions/cards-issued-difference

-- Assumption: There are no duplicates in the candidates table.

--  Creating candidates Table

create Table candidates (candidate_id Integer ,
skill varchar );

-- Add values to mcandidates Table 

INSERT INTO candidates (candidate_id, skill) VALUES
(123, 'Python'),
(123, 'Tableau'),
(123, 'PostgreSQL'),
(234, 'R'),
(234, 'PowerBI'),
(234, 'SQL Server'),
(345, 'Python'),
(345, 'Tableau');




-------------------------------------------------------
--My Solution
-------------------------------------------------------

SELECT candidate_id FROM candidates
WHERE skill in('python' , 'tableau' , 'postgreSQL')
GROUP BY skill
HAVING COUNT(skill) = 3
;

-- tweeter Interview Question 

/* you're given a table Twitter tweet data, write a query to obtain a histogram of tweets posted per user in 2022. Output the tweet count per user as the bucket and the number of Twitter users who fall into that bucket.

In other words, group the users by the number of tweets they posted in 2022 and count the number of users in each group. */

-- Question picked from https://datalemur.com/questions/cards-issued-difference

--  Creating monthly_cards_issue Table

CREATE TABLE tweet (
    tweet_id INTEGER PRIMARY KEY,
    user_id INTEGER,
    msg TEXT,
    tweet_date TIMESTAMP
);

-- Add values to tweet Table 

INSERT INTO tweet (tweet_id, user_id, msg, tweet_date) VALUES
(214252, 111, 'Am considering taking Tesla private at $420. Funding secured.', '2021-12-30 00:00:00'),
(739252, 111, 'Despite the constant negative press covfefe', '2022-01-01 00:00:00'),
(846402, 111, 'Following @NickSinghTech on Twitter changed my life!', '2022-02-14 00:00:00'),
(241425, 254, 'If the salary is so competitive why won’t you tell me what it is?', '2022-03-01 00:00:00'),
(231574, 148, 'I no longer have a manager. I can''t be managed', '2022-03-23 00:00:00');


//Explanation:
Based on the example output, there are two users who posted only one tweet in 2022, and one user who posted two tweets in 2022. The query groups the users by the number of tweets they posted and displays the number of users in each group 
//

-------------------------------------------------------
--My Solution
-------------------------------------------------------

select  user_id as users_num, COUNT(tweet_id)  tweet_bucket
from tweets
WHERE tweet_date BETWEEN '2022-01-01' AND '2022-12-31'
GROUP BY user_id;

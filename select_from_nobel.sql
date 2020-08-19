-- Change the query shown so that it displays Nobel prizes for 1950.
SELECT yr, subject, winner
  FROM nobel
 WHERE yr = 1950;

-- Show who won the 1962 prize for Literature.
 SELECT winner
  FROM nobel
 WHERE yr = 1962
   AND subject = 'Literature';

-- Show the year and subject that won 'Albert Einstein' his prize.
SELECT yr, subject
  FROM nobel
 WHERE winner = 'Albert Einstein';

-- Give the name of the 'Peace' winners since the year 2000, including 2000.
 SELECT winner
  FROM nobel
 WHERE subject = 'Peace' AND yr  >= 2000;

-- Show all details (yr, subject, winner) of the Literature prize winners for 1980 to 1989 inclusive.
 SELECT yr, subject, winner
  FROM nobel
 WHERE subject = 'Literature' AND yr  BETWEEN 1980 AND 1989;

-- Show all details of the presidential winners:
 SELECT * FROM nobel
 WHERE winner IN ('Theodore Roosevelt',
                  'Woodrow Wilson',
                  'Jimmy Carter',
                   'Barack Obama'
)

-- Show the winners with first name John
SELECT winner FROM nobel
 WHERE winner LIKE 'John %';

-- Show the year, subject, and name of Physics winners for 1980 together with the Chemistry winners for 1984.
SELECT yr, subject, winner
FROM nobel
WHERE (subject = 'Chemistry' AND yr =1984) OR
 (subject = 'Physics' AND yr =1980);

-- Show the year, subject, and name of winners for 1980 excluding Chemistry and Medicine
SELECT yr, subject, winner
FROM nobel
WHERE yr = 1980 AND subject NOT IN ('chemistry','Medicine');

-- Show year, subject, and name of people who won a 'Medicine' prize in an early year
SELECT yr, subject, winner
FROM nobel
WHERE (subject ='Medicine' AND yr < 1910) OR
(subject ='Literature' AND yr >= 2004);

-- Find all details of the prize won by PETER GRÜNBERG
SELECT *
FROM nobel
WHERE winner = 'PETER GRÜNBERG';

-- Find all details of the prize won by EUGENE O'NEILL
SELECT *
FROM nobel
WHERE winner = 'EUGENE O\'NEILL';

-- List the winners, year and subject where the winner starts with Sir.
SELECT winner, yr, subject 
FROM nobel
WHERE winner LIKE 'Sir %' ORDER BY yr DESC, winner ASC,

-- Show the 1984 winners and subject ordered by subject and winner name; but list Chemistry and Physics last.
SELECT winner, subject
  FROM nobel
 WHERE yr=1984
 ORDER BY 
CASE WHEN 
subject IN ('Physics','Chemistry')
THEN 1
 ELSE 0 END,
    subject,winner;

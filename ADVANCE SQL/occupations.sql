WITH new_table as (SELECT o.name, o.occupation, ROW_NUMBER() OVER(PARTITION BY o.occupation ORDER BY o.name) AS rn from occupations o)
SELECT
MAX(case when n.occupation = 'Doctor' THEN name end) as Doctor,
MAX(case when n.occupation = 'Professor' THEN name end) as Professor,
MAX(case when n.occupation = 'Singer' THEN name end) as Singer,
MAX(case when n.occupation = 'Actor' THEN name end) as Actor
FROM new_table n GROUP BY rn ORDER BY rn ;
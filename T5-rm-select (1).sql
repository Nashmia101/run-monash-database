/*****PLEASE ENTER YOUR DETAILS BELOW*****/
--T5-rm-select.sql

--Student ID: 34091904
--Student Name: NASHMIA SHAKEEL


/* Comments for your marker:




*/


/* (a) */
-- PLEASE PLACE REQUIRED SQL SELECT STATEMENT FOR THIS PART HERE
-- ENSURE that your query is formatted and has a semicolon
-- (;) at the end of this answer

SELECT
  t.team_name,
  TO_CHAR(t.carn_date, 'DD-Mon-YYYY') AS carnival_date,
  c.comp_fname || ' ' || c.comp_lname AS teamleader,
  COUNT(e.comp_no) AS team_no_members
FROM team t
JOIN carnival ca ON t.carn_date = ca.carn_date
JOIN entry e ON e.team_id = t.team_id
JOIN competitor c ON c.comp_no = (
    SELECT en.comp_no
    FROM entry en
    WHERE en.event_id = t.event_id
      AND en.entry_no = t.entry_no
)
WHERE ca.carn_date < SYSDATE
AND (
  SELECT COUNT(*)
  FROM team t2
  JOIN carnival ca2 ON t2.carn_date = ca2.carn_date
  WHERE ca2.carn_date < SYSDATE
    AND t2.team_name = t.team_name
) = (
  SELECT MAX(cnt)
  FROM (
    SELECT COUNT(*) AS cnt
    FROM team t3
    JOIN carnival ca3 ON t3.carn_date = ca3.carn_date
    WHERE ca3.carn_date < SYSDATE
    GROUP BY t3.team_name
  )
)
GROUP BY t.team_name, t.carn_date, c.comp_fname, c.comp_lname
ORDER BY t.team_name, t.carn_date;

/* (b) */
-- PLEASE PLACE REQUIRED SQL SELECT STATEMENT FOR THIS PART HERE
-- ENSURE that your query is formatted and has a semicolon
-- (;) at the end of this answer

SELECT
  et.eventtype_desc AS "Event",
  ca.carn_name || ' held ' || TO_CHAR(ca.carn_date, 'Dy DD-Mon-YYYY') AS "Carnival",
  TO_CHAR(e.entry_elapsedtime, 'HH24:MI:SS') AS "Current Record",
  '0000' || c.comp_no || ' ' || c.comp_lname || ' ' || c.comp_fname AS "Competitor No and Name",
  EXTRACT(YEAR FROM ca.carn_date) - EXTRACT(YEAR FROM c.comp_dob) AS "Age at Carnival"
FROM entry e
JOIN event ev ON e.event_id = ev.event_id
JOIN carnival ca ON ev.carn_date = ca.carn_date
JOIN eventtype et ON ev.eventtype_code = et.eventtype_code
JOIN competitor c ON e.comp_no = c.comp_no
WHERE (et.eventtype_code, e.entry_elapsedtime) IN (
  SELECT et2.eventtype_code, MIN(e2.entry_elapsedtime)
  FROM entry e2
  JOIN event ev2 ON e2.event_id = ev2.event_id
  JOIN eventtype et2 ON ev2.eventtype_code = et2.eventtype_code
  WHERE e2.entry_elapsedtime IS NOT NULL
  GROUP BY et2.eventtype_code
)
ORDER BY et.eventtype_desc, c.comp_no;



/* (c) */
-- PLEASE PLACE REQUIRED SQL SELECT STATEMENT FOR THIS PART HERE
-- ENSURE that your query is formatted and has a semicolon
-- (;) at the end of this answer

SELECT
  ca.carn_name AS "Carnival Name",
  TO_CHAR(ca.carn_date, 'DD Mon YYYY') AS "Carnival Date",
  et.eventtype_desc AS "Event Description",
  
  DECODE(COUNT(e.entry_no), 0, 'Not offered', TO_CHAR(COUNT(e.entry_no))) AS "Number of  Entries",

  DECODE(
    COUNT(e.entry_no),
    0, ' ',
    TO_CHAR((COUNT(e.entry_no) * 100) / total.total_entries, 'FM999')
  ) AS "% of Carnival Entries"

FROM
  carnival ca
CROSS JOIN
  eventtype et

LEFT JOIN event ev 
  ON ev.carn_date = ca.carn_date AND ev.eventtype_code = et.eventtype_code

LEFT JOIN entry e 
  ON e.event_id = ev.event_id

LEFT JOIN (
  SELECT
    ev.carn_date,
    COUNT(e.entry_no) AS total_entries
  FROM
    event ev
  JOIN entry e ON ev.event_id = e.event_id
  GROUP BY ev.carn_date
) total 
  ON total.carn_date = ca.carn_date

GROUP BY
  ca.carn_name,
  ca.carn_date,
  et.eventtype_desc,
  total.total_entries

ORDER BY
  ca.carn_date,
  COUNT(e.entry_no) DESC,
  et.eventtype_desc;


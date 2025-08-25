/*****PLEASE ENTER YOUR DETAILS BELOW*****/
--T6-rm-json.sql

--Student ID: 34091904
--Student Name: NASHMIA SHAKEEL


/* Comments for your marker:




*/


-- PLEASE PLACE REQUIRED SQL SELECT STATEMENT FOR THIS PART HERE
-- ENSURE that your query is formatted and has a semicolon
-- (;) at the end of this answer

SELECT JSON_ARRAYAGG(
  JSON_OBJECT(
    '_id'                VALUE t.team_id,
    'carn_name'          VALUE c.carn_name,
    'carn_date'          VALUE TO_CHAR(t.carn_date,'DD-Mon-YYYY'),
    'team_name'          VALUE t.team_name,
    'team_leader'        VALUE JSON_OBJECT(
                             'name'  VALUE lead_comp.comp_fname || ' ' || lead_comp.comp_lname,
                             'phone' VALUE lead_comp.comp_phone,
                             'email' VALUE lead_comp.comp_email
                           ),
    'team_no_of_members' VALUE (
                             SELECT COUNT(*) 
                               FROM entry e2  
                              WHERE e2.team_id = t.team_id
                           ),
    'team_members'       VALUE JSON_ARRAYAGG(
                             JSON_OBJECT(
                               'competitor_name'  VALUE mem.comp_fname || ' ' || mem.comp_lname,
                               'competitor_phone' VALUE mem.comp_phone,
                               'event_type'       VALUE et.eventtype_desc,
                               'entry_no'         VALUE e.entry_no,
                               'starttime'        VALUE NVL(TO_CHAR(e.entry_starttime,'HH24:MI:SS'),'-'),
                               'finishtime'       VALUE NVL(TO_CHAR(e.entry_finishtime,'HH24:MI:SS'),'-'),
                               'elapsedtime'      VALUE NVL(TO_CHAR(e.entry_elapsedtime,'HH24:MI:SS'),'-')
                             )
                             ORDER BY mem.comp_lname, mem.comp_fname
                           )
  )
  FORMAT JSON
) AS team_collection
FROM team t
JOIN carnival c
  ON c.carn_date = t.carn_date
JOIN entry lead_e
  ON lead_e.event_id = t.event_id
 AND lead_e.entry_no  = t.entry_no
JOIN competitor lead_comp
  ON lead_comp.comp_no = lead_e.comp_no
LEFT JOIN entry e
  ON e.team_id = t.team_id
LEFT JOIN competitor mem
  ON mem.comp_no = e.comp_no
LEFT JOIN event ev2
  ON ev2.event_id = e.event_id
LEFT JOIN eventtype et
  ON et.eventtype_code = ev2.eventtype_code
WHERE t.carn_date < SYSDATE
GROUP BY
  t.team_id,
  c.carn_name,
  t.carn_date,
  t.team_name,
  lead_comp.comp_fname,
  lead_comp.comp_lname,
  lead_comp.comp_phone,
  lead_comp.comp_email
;



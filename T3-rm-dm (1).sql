--****PLEASE ENTER YOUR DETAILS BELOW****
--T3-rm-dm.sql

--Student ID: 34091904
--Student Name: Nashmia Shakeel

/* Comments for your marker:




*/

--(a)

DROP SEQUENCE competitor_seq;
DROP SEQUENCE team_seq;

CREATE SEQUENCE competitor_seq
  START WITH 100
  INCREMENT BY 5;
  
CREATE SEQUENCE team_seq
  START WITH 100
  INCREMENT BY 5;
  
--(b)

INSERT INTO competitor (
  comp_no, comp_fname, comp_lname, comp_gender,
  comp_dob, comp_email, comp_unistatus, comp_phone
) VALUES (
  competitor_seq.NEXTVAL,
  'Keith', 'Rose', 'M',
  TO_DATE('15-FEB-1990','DD-MON-YYYY'),
  'keith.rose@student.monash.edu','Y','0422141112'
);

INSERT INTO competitor (
  comp_no, comp_fname, comp_lname, comp_gender,
  comp_dob, comp_email, comp_unistatus, comp_phone
) VALUES (
  competitor_seq.NEXTVAL,
  'Jackson', 'Bull', 'M',
  TO_DATE('22-JUL-1992','DD-MON-YYYY'),
  'jackson.bull@student.monash.edu','Y','0422412524'
);

INSERT INTO entry (
  event_id, entry_no,
  entry_starttime, entry_finishtime, entry_elapsedtime,
  comp_no, team_id, char_id
) VALUES (
  ( SELECT e.event_id
      FROM event e
      JOIN carnival c    ON e.carn_date      = c.carn_date
      JOIN eventtype et  ON e.eventtype_code = et.eventtype_code
     WHERE upper(c.carn_name)  = upper('RM Winter Series Caulfield 2025')
       AND upper(et.eventtype_desc) = upper('10 Km Run')
  ),
  ( SELECT NVL(MAX(entry_no),0)+1
      FROM entry
     WHERE event_id = (
       SELECT e2.event_id
         FROM event e2
         JOIN carnival c2    ON e2.carn_date      = c2.carn_date
         JOIN eventtype et2  ON e2.eventtype_code = et2.eventtype_code
        WHERE upper(c2.carn_name)  = upper('RM Winter Series Caulfield 2025')
          AND upper(et2.eventtype_desc) = upper('10 Km Run')
     )
  ),
  NULL, NULL, NULL,
  ( SELECT comp_no
      FROM competitor
     WHERE upper(comp_phone) = upper('0422141112')
  ),
  NULL,
  ( SELECT char_id
      FROM charity
     WHERE upper(char_name) = upper('Salvation Army')
  )
);

INSERT INTO entry (
  event_id, entry_no,
  entry_starttime, entry_finishtime, entry_elapsedtime,
  comp_no, team_id, char_id
) VALUES (
  ( SELECT e.event_id
      FROM event e
      JOIN carnival c    ON e.carn_date      = c.carn_date
      JOIN eventtype et  ON e.eventtype_code = et.eventtype_code
     WHERE upper(c.carn_name) = upper('RM Winter Series Caulfield 2025')
       AND upper(et.eventtype_desc) = upper('10 Km Run')
  ),
  ( SELECT NVL(MAX(entry_no),0)+1
      FROM entry
     WHERE event_id = (
       SELECT e2.event_id
         FROM event e2
         JOIN carnival c2    ON e2.carn_date      = c2.carn_date
         JOIN eventtype et2  ON e2.eventtype_code = et2.eventtype_code
        WHERE upper(c2.carn_name)      = upper('RM Winter Series Caulfield 2025')
          AND upper(et2.eventtype_desc) = upper('10 Km Run')
     )
  ),
  NULL, NULL, NULL,
  ( SELECT comp_no
      FROM competitor
     WHERE upper(comp_phone) = upper('0422412524')
  ),
  NULL,
  ( SELECT char_id
      FROM charity
     WHERE upper(char_name) = upper('RSPCA')
  )
);

INSERT INTO team (
  team_id, team_name, carn_date, event_id, entry_no
) VALUES (
  team_seq.NEXTVAL,
  'Super Runners',
  ( SELECT c.carn_date
      FROM carnival c
     WHERE upper(c.carn_name) = upper('RM Winter Series Caulfield 2025')
  ),
  ( SELECT e.event_id
      FROM event e
      JOIN carnival c    ON e.carn_date      = c.carn_date
      JOIN eventtype et  ON e.eventtype_code = et.eventtype_code
     WHERE upper(c.carn_name)   = upper('RM Winter Series Caulfield 2025')
       AND upper(et.eventtype_desc) = upper('10 Km Run')
  ),
  ( SELECT en.entry_no
      FROM entry en
      JOIN competitor comp ON en.comp_no = comp.comp_no
     WHERE upper (comp.comp_phone)  = upper ('0422141112')
       AND en.event_id = (
         SELECT e2.event_id
           FROM event e2
           JOIN carnival c2    ON e2.carn_date      = c2.carn_date
           JOIN eventtype et2  ON e2.eventtype_code = et2.eventtype_code
          WHERE upper(c2.carn_name)       = upper('RM Winter Series Caulfield 2025')
            AND upper(et2.eventtype_desc) = upper('10 Km Run')
       )
  )
);

UPDATE entry en
   SET en.team_id = (
     SELECT t.team_id
       FROM team t
       JOIN carnival c ON t.carn_date = c.carn_date
      WHERE upper(t.team_name) = upper('Super Runners')
        AND upper(c.carn_name) = upper('RM Winter Series Caulfield 2025')
   )
 WHERE (
     en.comp_no = (
       SELECT comp_no
         FROM competitor
        WHERE upper(comp_phone) = upper('0422141112')
     )
     OR
     en.comp_no = (
       SELECT comp_no
         FROM competitor
        WHERE upper (comp_phone) = upper('0422412524')
     )
   )
   AND en.event_id = (
     SELECT e.event_id
       FROM event e
       JOIN carnival c    ON e.carn_date      = c.carn_date
       JOIN eventtype et  ON e.eventtype_code = et.eventtype_code
      WHERE upper(c.carn_name)      = upper('RM Winter Series Caulfield 2025')
        AND upper(et.eventtype_desc) = upper('10 Km Run')
   );

COMMIT;

--(c)

UPDATE entry en
   SET
     en.event_id = (
       SELECT e2.event_id
         FROM event e2
         JOIN carnival c2    ON e2.carn_date      = c2.carn_date
         JOIN eventtype et2  ON e2.eventtype_code = et2.eventtype_code
        WHERE upper(c2.carn_name) = upper('RM Winter Series Caulfield 2025')
          AND upper(et2.eventtype_desc) = upper('5 Km Run')
     ),
     en.entry_no = (
       SELECT NVL(MAX(entry_no),0)+1
         FROM entry
        WHERE event_id = (
          SELECT e3.event_id
            FROM event e3
            JOIN carnival c3    ON e3.carn_date      = c3.carn_date
            JOIN eventtype et3  ON e3.eventtype_code = et3.eventtype_code
           WHERE upper(c3.carn_name) = upper('RM Winter Series Caulfield 2025')
             AND upper(et3.eventtype_desc) = upper('5 Km Run')
        )
     ),
     en.char_id = (
       SELECT char_id
         FROM charity
        WHERE upper(char_name) = upper('Beyond Blue')
     )
 WHERE en.comp_no = (
       SELECT comp_no
         FROM competitor
        WHERE upper(comp_phone) = upper('0422412524')
     )
   AND en.event_id = (
       SELECT e4.event_id
         FROM event e4
         JOIN carnival c4    ON e4.carn_date      = c4.carn_date
         JOIN eventtype et4  ON e4.eventtype_code = et4.eventtype_code
        WHERE upper(c4.carn_name) = upper('RM Winter Series Caulfield 2025')
          AND upper(et4.eventtype_desc) = upper('10 Km Run')
     );

COMMIT;

--(d)

UPDATE entry en
   SET en.team_id = NULL
 WHERE en.team_id = (
   SELECT t.team_id
     FROM team t
    WHERE upper(t.team_name) = upper('Super Runners')
      AND t.carn_date = (
        SELECT carn_date
          FROM carnival
         WHERE upper(carn_name) = upper('RM Winter Series Caulfield 2025')
      )
 );


DELETE FROM team
 WHERE upper(team_name) = upper('Super Runners')
   AND carn_date = (
     SELECT carn_date
       FROM carnival
      WHERE upper(carn_name) = upper('RM Winter Series Caulfield 2025')
   );


DELETE FROM entry
 WHERE comp_no = (
         SELECT comp_no
           FROM competitor
          WHERE upper(comp_phone) = upper('0422141112')
       )
   AND event_id = (
         SELECT e.event_id
           FROM event e
           JOIN carnival c    ON e.carn_date      = c.carn_date
           JOIN eventtype et  ON e.eventtype_code = et.eventtype_code
          WHERE upper(c.carn_name)  = upper('RM Winter Series Caulfield 2025')
            AND upper(et.eventtype_desc) = upper('10 Km Run')
       );


COMMIT;


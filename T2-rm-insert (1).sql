/*****PLEASE ENTER YOUR DETAILS BELOW*****/
-- T2-rm-insert.sql

-- Student ID: 34091904
-- Student Name: Nashmia Shakeel

/* Comments for your marker:

Acknowledgement of AI Use:
I used ChatGPT (https://chat.openai.com/) to support the generation of test data for the COMPETITOR, ENTRY, and TEAM tables. The AI tool was used to help:
- Brainstorm names, dates of birth, and test data for other attributes for fictional competitors.
- Generate ideas for event participation patterns and team membership combinations.
All test data from ChatGPT was carefully reviewed by me (Nashmia Shakeel) (34091904). The final dataset reflects my own judgement, understanding of the schema, and learning objectives of the task.
Use of generative AI has been conducted in accordance with Monash University’s Academic Integrity policy. No private or personal information was entered into the AI platform

*/


-- Task 2 Load the COMPETITOR, ENTRY and TEAM tables with your own
-- test data following the data requirements expressed in the brief

-- =======================================
-- COMPETITOR
-- =======================================
INSERT INTO competitor (
  comp_no,
  comp_fname,
  comp_lname,
  comp_gender,
  comp_dob,
  comp_email,
  comp_unistatus,
  comp_phone
) VALUES (
  1,
  'Smith',
  'Alice',
  'F',
  TO_DATE('16-JUL-1995','DD-MON-YYYY'),
  'alice1@student.monash.edu',
  'Y',
  '0411111101'
);

INSERT INTO competitor (
  comp_no,
  comp_fname,
  comp_lname,
  comp_gender,
  comp_dob,
  comp_email,
  comp_unistatus,
  comp_phone
) VALUES (
  2,
  'Jones',
  'Bob',
  'M',
  TO_DATE('25-AUG-1989','DD-MON-YYYY'),
  'bob2@student.monash.edu',
  'Y',
  '0411111102'
);

INSERT INTO competitor (
  comp_no,
  comp_fname,
  comp_lname,
  comp_gender,
  comp_dob,
  comp_email,
  comp_unistatus,
  comp_phone
) VALUES (
  3,
  'Yan',
  'Charlie',
  'M',
  TO_DATE('13-NOV-1995','DD-MON-YYYY'),
  'charlie3@student.monash.edu',
  'Y',
  '0411111103'
);

INSERT INTO competitor (
  comp_no,
  comp_fname,
  comp_lname,
  comp_gender,
  comp_dob,
  comp_email,
  comp_unistatus,
  comp_phone
) VALUES (
  4,
  'Brown',
  'Daisy',
  'F',
  TO_DATE('30-JUN-1987','DD-MON-YYYY'),
  'daisy4@student.monash.edu',
  'Y',
  '0411111104'
);

INSERT INTO competitor (
  comp_no,
  comp_fname,
  comp_lname,
  comp_gender,
  comp_dob,
  comp_email,
  comp_unistatus,
  comp_phone
) VALUES (
  5,
  'Wang',
  'Ethan',
  'M',
  TO_DATE('22-SEP-1987','DD-MON-YYYY'),
  'ethan5@student.monash.edu',
  'Y',
  '0411111105'
);

INSERT INTO competitor (
  comp_no,
  comp_fname,
  comp_lname,
  comp_gender,
  comp_dob,
  comp_email,
  comp_unistatus,
  comp_phone
) VALUES (
  6,
  'Lee',
  'Fiona',
  'F',
  TO_DATE('02-MAY-1995','DD-MON-YYYY'),
  'fiona.lee@gmail.com',
  'N',
  '0411111106'
);

INSERT INTO competitor (
  comp_no,
  comp_fname,
  comp_lname,
  comp_gender,
  comp_dob,
  comp_email,
  comp_unistatus,
  comp_phone
) VALUES (
  7,
  'Lim',
  'George',
  'M',
  TO_DATE('17-SEP-1990','DD-MON-YYYY'),
  'george.lim@yahoo.com',
  'N',
  '0411111107'
);

INSERT INTO competitor (
  comp_no,
  comp_fname,
  comp_lname,
  comp_gender,
  comp_dob,
  comp_email,
  comp_unistatus,
  comp_phone
) VALUES (
  8,
  'Kim',
  'Hannah',
  'F',
  TO_DATE('17-AUG-1993','DD-MON-YYYY'),
  'hannah.kim@outlook.com',
  'N',
  '0411111108'
);

INSERT INTO competitor (
  comp_no,
  comp_fname,
  comp_lname,
  comp_gender,
  comp_dob,
  comp_email,
  comp_unistatus,
  comp_phone
) VALUES (
  9,
  'Ali',
  'Isaac',
  'M',
  TO_DATE('23-NOV-1991','DD-MON-YYYY'),
  'isaac.ali@gmail.com',
  'N',
  '0411111109'
);

INSERT INTO competitor (
  comp_no,
  comp_fname,
  comp_lname,
  comp_gender,
  comp_dob,
  comp_email,
  comp_unistatus,
  comp_phone
) VALUES (
  10,
  'White',
  'Jenna',
  'F',
  TO_DATE('08-JUL-1993','DD-MON-YYYY'),
  'jenna.white@yahoo.com',
  'N',
  '0411111110'
);

INSERT INTO competitor (
  comp_no,
  comp_fname,
  comp_lname,
  comp_gender,
  comp_dob,
  comp_email,
  comp_unistatus,
  comp_phone
) VALUES (
  11,
  'Tan',
  'Kevin',
  'M',
  TO_DATE('28-NOV-1994','DD-MON-YYYY'),
  'kevin11@student.monash.edu',
  'Y',
  '0411111111'
);

INSERT INTO competitor (
  comp_no,
  comp_fname,
  comp_lname,
  comp_gender,
  comp_dob,
  comp_email,
  comp_unistatus,
  comp_phone
) VALUES (
  12,
  'Patel',
  'Lily',
  'F',
  TO_DATE('13-JAN-1991','DD-MON-YYYY'),
  'lily.patel@gmail.com',
  'N',
  '0411111112'
);

INSERT INTO competitor (
  comp_no,
  comp_fname,
  comp_lname,
  comp_gender,
  comp_dob,
  comp_email,
  comp_unistatus,
  comp_phone
) VALUES (
  13,
  'Ho',
  'Marcus',
  'M',
  TO_DATE('08-SEP-1988','DD-MON-YYYY'),
  'marcus13@student.monash.edu',
  'Y',
  '0411111113'
);

INSERT INTO competitor (
  comp_no,
  comp_fname,
  comp_lname,
  comp_gender,
  comp_dob,
  comp_email,
  comp_unistatus,
  comp_phone
) VALUES (
  14,
  'Rao',
  'Nina',
  'F',
  TO_DATE('30-MAR-1987','DD-MON-YYYY'),
  'nina.rao@outlook.com',
  'N',
  '0411111114'
);

INSERT INTO competitor (
  comp_no,
  comp_fname,
  comp_lname,
  comp_gender,
  comp_dob,
  comp_email,
  comp_unistatus,
  comp_phone
) VALUES (
  15,
  'Khan',
  'Omar',
  'M',
  TO_DATE('30-MAY-1996','DD-MON-YYYY'),
  'omar15@student.monash.edu',
  'Y',
  '0411111115'
);

-- =======================================
-- ENTRY
-- =======================================

INSERT INTO entry (
  event_id,
  entry_no,
  entry_starttime,
  entry_finishtime,
  entry_elapsedtime,
  comp_no,
  team_id,
  char_id
) VALUES (
  1,
  1,
  TO_DATE('09:30:00','HH24:MI:SS'),
  TO_DATE('10:30:00','HH24:MI:SS'),
  TO_DATE('01:00:00','HH24:MI:SS'),
  1,
  NULL,
  1
);

INSERT INTO entry (
  event_id,
  entry_no,
  entry_starttime,
  entry_finishtime,
  entry_elapsedtime,
  comp_no,
  team_id,
  char_id
) VALUES (
  1,
  2,
  TO_DATE('09:30:00','HH24:MI:SS'),
  TO_DATE('10:40:00','HH24:MI:SS'),
  TO_DATE('01:10:00','HH24:MI:SS'),
  2,
  NULL,
  2
);

INSERT INTO entry (
  event_id,
  entry_no,
  entry_starttime,
  entry_finishtime,
  entry_elapsedtime,
  comp_no,
  team_id,
  char_id
) VALUES (
  1,
  3,
  TO_DATE('09:30:00','HH24:MI:SS'),
  TO_DATE('10:20:00','HH24:MI:SS'),
  TO_DATE('00:50:00','HH24:MI:SS'),
  3,
  NULL,
  3
);


INSERT INTO entry (
  event_id,
  entry_no,
  entry_starttime,
  entry_finishtime,
  entry_elapsedtime,
  comp_no,
  team_id,
  char_id
) VALUES (
  2,
  1,
  TO_DATE('08:30:00','HH24:MI:SS'),
  TO_DATE('09:45:00','HH24:MI:SS'),
  TO_DATE('01:15:00','HH24:MI:SS'),
  1,
  NULL,
  2
);

INSERT INTO entry (
  event_id,
  entry_no,
  entry_starttime,
  entry_finishtime,
  entry_elapsedtime,
  comp_no,
  team_id,
  char_id
) VALUES (
  2,
  2,
  TO_DATE('08:30:00','HH24:MI:SS'),
  TO_DATE('09:50:00','HH24:MI:SS'),
  TO_DATE('01:20:00','HH24:MI:SS'),
  4,
  NULL,
  1
);

INSERT INTO entry (
  event_id,
  entry_no,
  entry_starttime,
  entry_finishtime,
  entry_elapsedtime,
  comp_no,
  team_id,
  char_id
) VALUES (
  2,
  3,
  TO_DATE('08:30:00','HH24:MI:SS'),
  TO_DATE('09:35:00','HH24:MI:SS'),
  TO_DATE('01:05:00','HH24:MI:SS'),
  5,
  NULL,
  3
);

INSERT INTO entry (
  event_id,
  entry_no,
  entry_starttime,
  entry_finishtime,
  entry_elapsedtime,
  comp_no,
  team_id,
  char_id
) VALUES (
  3,
  1,
  TO_DATE('09:00:00','HH24:MI:SS'),
  TO_DATE('10:15:00','HH24:MI:SS'),
  TO_DATE('01:15:00','HH24:MI:SS'),
  2,
  NULL,
  1
);

INSERT INTO entry (
  event_id,
  entry_no,
  entry_starttime,
  entry_finishtime,
  entry_elapsedtime,
  comp_no,
  team_id,
  char_id
) VALUES (
  3,
  2,
  TO_DATE('09:00:00','HH24:MI:SS'),
  TO_DATE('10:00:00','HH24:MI:SS'),
  TO_DATE('01:00:00','HH24:MI:SS'),
  6,
  NULL,
  2
);

INSERT INTO entry (
  event_id,
  entry_no,
  entry_starttime,
  entry_finishtime,
  entry_elapsedtime,
  comp_no,
  team_id,
  char_id
) VALUES (
  3,
  3,
  TO_DATE('09:00:00','HH24:MI:SS'),
  TO_DATE('10:20:00','HH24:MI:SS'),
  TO_DATE('01:20:00','HH24:MI:SS'),
  7,
  NULL,
  3
);

INSERT INTO entry (
  event_id,
  entry_no,
  entry_starttime,
  entry_finishtime,
  entry_elapsedtime,
  comp_no,
  team_id,
  char_id
) VALUES (
  4,
  1,
  TO_DATE('08:30:00','HH24:MI:SS'),
  TO_DATE('10:00:00','HH24:MI:SS'),
  TO_DATE('01:30:00','HH24:MI:SS'),
  3,
  NULL,
  2
);

INSERT INTO entry (
  event_id,
  entry_no,
  entry_starttime,
  entry_finishtime,
  entry_elapsedtime,
  comp_no,
  team_id,
  char_id
) VALUES (
  4,
  2,
  TO_DATE('08:30:00','HH24:MI:SS'),
  TO_DATE('10:05:00','HH24:MI:SS'),
  TO_DATE('01:35:00','HH24:MI:SS'),
  8,
  NULL,
  4
);

INSERT INTO entry (
  event_id,
  entry_no,
  entry_starttime,
  entry_finishtime,
  entry_elapsedtime,
  comp_no,
  team_id,
  char_id
) VALUES (
  4,
  3,
  TO_DATE('08:30:00','HH24:MI:SS'),
  TO_DATE('09:50:00','HH24:MI:SS'),
  TO_DATE('01:20:00','HH24:MI:SS'),
  5,
  NULL,
  1
);

INSERT INTO entry (
  event_id,
  entry_no,
  entry_starttime,
  entry_finishtime,
  entry_elapsedtime,
  comp_no,
  team_id,
  char_id
) VALUES (
  5,
  1,
  TO_DATE('08:00:00','HH24:MI:SS'),
  TO_DATE('09:45:00','HH24:MI:SS'),
  TO_DATE('01:45:00','HH24:MI:SS'),
  1,
  NULL,
  3
);

INSERT INTO entry (
  event_id,
  entry_no,
  entry_starttime,
  entry_finishtime,
  entry_elapsedtime,
  comp_no,
  team_id,
  char_id
) VALUES (
  5,
  2,
  TO_DATE('08:00:00','HH24:MI:SS'),
  TO_DATE('09:30:00','HH24:MI:SS'),
  TO_DATE('01:30:00','HH24:MI:SS'),
  9,
  NULL,
  1
);

INSERT INTO entry (
  event_id,
  entry_no,
  entry_starttime,
  entry_finishtime,
  entry_elapsedtime,
  comp_no,
  team_id,
  char_id
) VALUES (
  5,
  3,
  TO_DATE('08:00:00','HH24:MI:SS'),
  TO_DATE('10:00:00','HH24:MI:SS'),
  TO_DATE('02:00:00','HH24:MI:SS'),
  10,
  NULL,
  2
);

INSERT INTO entry (
  event_id,
  entry_no,
  entry_starttime,
  entry_finishtime,
  entry_elapsedtime,
  comp_no,
  team_id,
  char_id
) VALUES (
  6,
  1,
  TO_DATE('08:30:00','HH24:MI:SS'),
  TO_DATE('09:45:00','HH24:MI:SS'),
  TO_DATE('01:15:00','HH24:MI:SS'),
  2,
  NULL,
  4
);

INSERT INTO entry (
  event_id,
  entry_no,
  entry_starttime,
  entry_finishtime,
  entry_elapsedtime,
  comp_no,
  team_id,
  char_id
) VALUES (
  6,
  2,
  TO_DATE('08:30:00','HH24:MI:SS'),
  TO_DATE('09:00:00','HH24:MI:SS'),
  TO_DATE('00:30:00','HH24:MI:SS'),
  6,
  NULL,
  1
);

INSERT INTO entry (
  event_id,
  entry_no,
  entry_starttime,
  entry_finishtime,
  entry_elapsedtime,
  comp_no,
  team_id,
  char_id
) VALUES (
  6,
  3,
  TO_DATE('08:30:00','HH24:MI:SS'),
  TO_DATE('09:10:00','HH24:MI:SS'),
  TO_DATE('00:40:00','HH24:MI:SS'),
  11,
  NULL,
  2
);

INSERT INTO entry (
  event_id,
  entry_no,
  entry_starttime,
  entry_finishtime,
  entry_elapsedtime,
  comp_no,
  team_id,
  char_id
) VALUES (
  7,
  1,
  TO_DATE('08:30:00','HH24:MI:SS'),
  TO_DATE('09:15:00','HH24:MI:SS'),
  TO_DATE('00:45:00','HH24:MI:SS'),
  3,
  NULL,
  3
);

INSERT INTO entry (
  event_id,
  entry_no,
  entry_starttime,
  entry_finishtime,
  entry_elapsedtime,
  comp_no,
  team_id,
  char_id
) VALUES (
  7,
  2,
  TO_DATE('08:30:00','HH24:MI:SS'),
  TO_DATE('09:00:00','HH24:MI:SS'),
  TO_DATE('00:30:00','HH24:MI:SS'),
  7,
  NULL,
  1
);

INSERT INTO entry (
  event_id,
  entry_no,
  entry_starttime,
  entry_finishtime,
  entry_elapsedtime,
  comp_no,
  team_id,
  char_id
) VALUES (
  7,
  3,
  TO_DATE('08:30:00','HH24:MI:SS'),
  TO_DATE('09:10:00','HH24:MI:SS'),
  TO_DATE('00:40:00','HH24:MI:SS'),
  12,
  NULL,
  4
);

INSERT INTO entry (
  event_id,
  entry_no,
  entry_starttime,
  entry_finishtime,
  entry_elapsedtime,
  comp_no,
  team_id,
  char_id
) VALUES (
  8,
  1,
  TO_DATE('08:00:00','HH24:MI:SS'),
  TO_DATE('09:10:00','HH24:MI:SS'),
  TO_DATE('01:10:00','HH24:MI:SS'),
  4,
  NULL,
  2
);

INSERT INTO entry (
  event_id,
  entry_no,
  entry_starttime,
  entry_finishtime,
  entry_elapsedtime,
  comp_no,
  team_id,
  char_id
) VALUES (
  8,
  2,
  TO_DATE('08:00:00','HH24:MI:SS'),
  TO_DATE('09:00:00','HH24:MI:SS'),
  TO_DATE('01:00:00','HH24:MI:SS'),
  8,
  NULL,
  1
);

INSERT INTO entry (
  event_id,
  entry_no,
  entry_starttime,
  entry_finishtime,
  entry_elapsedtime,
  comp_no,
  team_id,
  char_id
) VALUES (
  8,
  3,
  TO_DATE('08:00:00','HH24:MI:SS'),
  TO_DATE('09:30:00','HH24:MI:SS'),
  TO_DATE('01:30:00','HH24:MI:SS'),
  13,
  NULL,
  3
);


INSERT INTO entry (
  event_id,
  entry_no,
  entry_starttime,
  entry_finishtime,
  entry_elapsedtime,
  comp_no,
  team_id,
  char_id
) VALUES (
  9,
  1,
  TO_DATE('08:00:00','HH24:MI:SS'),
  TO_DATE('09:20:00','HH24:MI:SS'),
  TO_DATE('01:20:00','HH24:MI:SS'),
  5,
  NULL,
  1
);

INSERT INTO entry (
  event_id,
  entry_no,
  entry_starttime,
  entry_finishtime,
  entry_elapsedtime,
  comp_no,
  team_id,
  char_id
) VALUES (
  9,
  2,
  TO_DATE('08:00:00','HH24:MI:SS'),
  TO_DATE('09:10:00','HH24:MI:SS'),
  TO_DATE('01:10:00','HH24:MI:SS'),
  9,
  NULL,
  2
);

INSERT INTO entry (
  event_id,
  entry_no,
  entry_starttime,
  entry_finishtime,
  entry_elapsedtime,
  comp_no,
  team_id,
  char_id
) VALUES (
  9,
  3,
  TO_DATE('08:00:00','HH24:MI:SS'),
  NULL,    
  NULL,
  14,
  NULL,
  3
);


INSERT INTO entry (
  event_id,
  entry_no,
  entry_starttime,
  entry_finishtime,
  entry_elapsedtime,
  comp_no,
  team_id,
  char_id
) VALUES (
  10,
  1,
  TO_DATE('08:00:00','HH24:MI:SS'),
  TO_DATE('08:50:00','HH24:MI:SS'),
  TO_DATE('00:50:00','HH24:MI:SS'),
  6,
  NULL,
  4
);

INSERT INTO entry (
  event_id,
  entry_no,
  entry_starttime,
  entry_finishtime,
  entry_elapsedtime,
  comp_no,
  team_id,
  char_id
) VALUES (
  10,
  2,
  TO_DATE('08:00:00','HH24:MI:SS'),
  TO_DATE('08:45:00','HH24:MI:SS'),
  TO_DATE('00:45:00','HH24:MI:SS'),
  10,
  NULL,
  2
);

INSERT INTO entry (
  event_id,
  entry_no,
  entry_starttime,
  entry_finishtime,
  entry_elapsedtime,
  comp_no,
  team_id,
  char_id
) VALUES (
  10,
  3,
  NULL,   
  NULL,
  NULL,
  15,
  NULL,
  1
);


INSERT INTO entry (
  event_id,
  entry_no,
  entry_starttime,
  entry_finishtime,
  entry_elapsedtime,
  comp_no,
  team_id,
  char_id
) VALUES (
  12,
  1,
  TO_DATE('08:45:00','HH24:MI:SS'),
  TO_DATE('09:55:00','HH24:MI:SS'),
  TO_DATE('01:10:00','HH24:MI:SS'),
  7,
  NULL,
  1
);

INSERT INTO entry (
  event_id,
  entry_no,
  entry_starttime,
  entry_finishtime,
  entry_elapsedtime,
  comp_no,
  team_id,
  char_id
) VALUES (
  12,
  2,
  TO_DATE('08:45:00','HH24:MI:SS'),
  TO_DATE('09:40:30','HH24:MI:SS'),
  TO_DATE('00:55:30','HH24:MI:SS'),
  8,
  NULL,
  2
);

INSERT INTO entry (
  event_id,
  entry_no,
  entry_starttime,
  entry_finishtime,
  entry_elapsedtime,
  comp_no,
  team_id,
  char_id
) VALUES (
  12,
  3,
  TO_DATE('08:45:00','HH24:MI:SS'),
  TO_DATE('10:05:00','HH24:MI:SS'),
  TO_DATE('01:20:00','HH24:MI:SS'),
  9,
  NULL,
  3
);

INSERT INTO entry (
  event_id,
  entry_no,
  entry_starttime,
  entry_finishtime,
  entry_elapsedtime,
  comp_no,
  team_id,
  char_id
) VALUES (
  12,
  4,
  NULL,   
  NULL,
  NULL,
  14,
  NULL,
  2
);


INSERT INTO entry (
  event_id,
  entry_no,
  entry_starttime,
  entry_finishtime,
  entry_elapsedtime,
  comp_no,
  team_id,
  char_id
) VALUES (
  13,
  1,
  TO_DATE('08:30:00','HH24:MI:SS'),
  TO_DATE('09:45:00','HH24:MI:SS'),
  TO_DATE('01:15:00','HH24:MI:SS'),
  10,
  NULL,
  1
);

INSERT INTO entry (
  event_id,
  entry_no,
  entry_starttime,
  entry_finishtime,
  entry_elapsedtime,
  comp_no,
  team_id,
  char_id
) VALUES (
  13,
  2,
  TO_DATE('08:30:00','HH24:MI:SS'),
  TO_DATE('09:40:00','HH24:MI:SS'),
  TO_DATE('01:10:00','HH24:MI:SS'),
  11,
  NULL,
  2
);

INSERT INTO entry (
  event_id,
  entry_no,
  entry_starttime,
  entry_finishtime,
  entry_elapsedtime,
  comp_no,
  team_id,
  char_id
) VALUES (
  13,
  3,
  TO_DATE('08:30:00','HH24:MI:SS'),
  TO_DATE('09:50:00','HH24:MI:SS'),
  TO_DATE('01:20:00','HH24:MI:SS'),
  12,
  NULL,
  3
);

-- =======================================
-- TEAM
-- =======================================
INSERT INTO team (
  team_id,
  team_name,
  carn_date,
  event_id,
  entry_no
) VALUES (
  1,
  'TrailBlazers',
  TO_DATE('22-SEP-2024','DD-MON-YYYY'),
  1,
  1
);

INSERT INTO team (
  team_id,
  team_name,
  carn_date,
  event_id,
  entry_no
) VALUES (
  2,
  'SpeedHunters',
  TO_DATE('22-SEP-2024','DD-MON-YYYY'),
  2,
  1
);

INSERT INTO team (
  team_id,
  team_name,
  carn_date,
  event_id,
  entry_no
) VALUES (
  3,
  'FlashRun',
  TO_DATE('05-OCT-2024','DD-MON-YYYY'),
  3,
  1
);

INSERT INTO team (
  team_id,
  team_name,
  carn_date,
  event_id,
  entry_no
) VALUES (
  4,
  'ThunderCrew',
  TO_DATE('05-OCT-2024','DD-MON-YYYY'),
  4,
  1
);

INSERT INTO team (
  team_id,
  team_name,
  carn_date,
  event_id,
  entry_no
) VALUES (
  5,
  'TrailBlazers',
  TO_DATE('15-MAR-2025','DD-MON-YYYY'),
  10,
  1
);


UPDATE entry 
SET team_id = 1 
WHERE event_id = 1 
AND entry_no = 1;

UPDATE entry 
SET team_id = 1 
WHERE event_id = 1 
AND entry_no = 2;

UPDATE entry 
SET team_id = 1 
WHERE event_id = 1 
AND entry_no = 3;


UPDATE entry 
SET team_id = 2 
WHERE event_id = 2 
AND entry_no = 1;

UPDATE entry 
SET team_id = 2 
WHERE event_id = 2 
AND entry_no = 2;

UPDATE entry 
SET team_id = 2 
WHERE event_id = 2 
AND entry_no = 3;

UPDATE entry 
SET team_id = 3 
WHERE event_id = 3 
AND entry_no = 1;

UPDATE entry 
SET team_id = 3 
WHERE event_id = 3 
AND entry_no = 2;


UPDATE entry 
SET team_id = 4 
WHERE event_id = 4 
AND entry_no = 1;


UPDATE entry 
SET team_id = 5 
WHERE event_id = 10 
AND entry_no = 1;

COMMIT;





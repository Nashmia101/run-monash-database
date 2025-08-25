/*****PLEASE ENTER YOUR DETAILS BELOW*****/
--T1-rm-schema.sql

--Student ID: 34091904
--Student Name: NASHMIA SHAKEEL

/* Comments for your marker:

*/

/* drop table statements - do not remove*/

DROP TABLE competitor CASCADE CONSTRAINTS PURGE;

DROP TABLE entry CASCADE CONSTRAINTS PURGE;

DROP TABLE team CASCADE CONSTRAINTS PURGE;

/* end of drop table statements*/

-- Task 1 Add Create table statements for the Missing TABLES below.
-- Ensure all column comments, and constraints (other than FK's)are included.
-- FK constraints are to be added at the end of this script

-- COMPETITOR

CREATE TABLE COMPETITOR (
    comp_no NUMBER(5) NOT NULL,
    comp_fname VARCHAR2(30) NOT NULL,
    comp_lname VARCHAR2(30) NOT NULL,
    comp_gender CHAR(1) CHECK (comp_gender IN ('M', 'F', 'U')) NOT NULL,
    comp_dob DATE NOT NULL,
    comp_email VARCHAR2(50) NOT NULL,
    comp_unistatus CHAR(1) CHECK (comp_unistatus IN ('Y', 'N')) NOT NULL,
    comp_phone CHAR(10) NOT NULL
);


COMMENT ON COLUMN COMPETITOR.comp_no IS 'Unique identifier for each competitor';
COMMENT ON COLUMN COMPETITOR.comp_fname IS 'Competitor''s first name';
COMMENT ON COLUMN COMPETITOR.comp_lname IS 'Competitor''s last name';
COMMENT ON COLUMN COMPETITOR.comp_gender IS 'Competitor''s gender (M for male, F for female, U for undisclosed)';
COMMENT ON COLUMN COMPETITOR.comp_dob IS 'Competitor''s date of birth';
COMMENT ON COLUMN COMPETITOR.comp_email IS 'Competitor''s email address';
COMMENT ON COLUMN COMPETITOR.comp_unistatus IS 'Competitor''s university status (Y for Yes, N for No)';
COMMENT ON COLUMN COMPETITOR.comp_phone IS 'Competitor''s phone number';


ALTER TABLE COMPETITOR ADD CONSTRAINT competitor_pk PRIMARY KEY (comp_no);
ALTER TABLE COMPETITOR ADD CONSTRAINT comp_email_uk UNIQUE (comp_email);
ALTER TABLE COMPETITOR ADD CONSTRAINT comp_phone_uk UNIQUE (comp_phone);

--ENTRY
CREATE TABLE ENTRY (
    event_id NUMBER(6) NOT NULL,
    entry_no NUMBER(5) NOT NULL,
    entry_starttime DATE,
    entry_finishtime DATE ,
    entry_elapsedtime DATE,
    comp_no NUMBER(5) NOT NULL,
    team_id NUMBER(3),
    char_id NUMBER(3)
);


COMMENT ON COLUMN ENTRY.event_id IS 'Identifier of the event being entered';
COMMENT ON COLUMN ENTRY.entry_no IS 'Entry number (unique only within an event)';
COMMENT ON COLUMN ENTRY.entry_starttime IS 'The entrant''s start time (time only), stored using the format of hh24:mi:ss';
COMMENT ON COLUMN ENTRY.entry_finishtime IS 'The entrant''s finish time (time only), stored using the format of hh24:mi:ss';
COMMENT ON COLUMN ENTRY.entry_elapsedtime IS 'The time the entrant took to complete the event, stored using the format of hh24:mi:ss';
COMMENT ON COLUMN ENTRY.comp_no IS 'Competitor identifier';
COMMENT ON COLUMN ENTRY.team_id IS 'Team identifier';
COMMENT ON COLUMN ENTRY.char_id IS 'Charity identifier';


ALTER TABLE ENTRY ADD CONSTRAINT entry_pk PRIMARY KEY (event_id, entry_no);

--TEAM

CREATE TABLE TEAM (
    team_id NUMBER(3) NOT NULL,
    team_name VARCHAR2(30) NOT NULL,
    carn_date DATE NOT NULL,
    event_id NUMBER(6) NOT NULL,
    entry_no NUMBER(5) NOT NULL
);


COMMENT ON COLUMN TEAM.team_id IS 'Unique team identifier';
COMMENT ON COLUMN TEAM.team_name IS 'Name of the team';
COMMENT ON COLUMN TEAM.carn_date IS 'Carnival date';
COMMENT ON COLUMN TEAM.event_id IS 'Foreign key referencing the Event table';
COMMENT ON COLUMN TEAM.entry_no IS 'Entry number associated with the team';

ALTER TABLE TEAM ADD CONSTRAINT team_pk PRIMARY KEY (team_id);
ALTER TABLE TEAM ADD CONSTRAINT team_name_date_uk UNIQUE (team_name, carn_date);


-- Add all missing FK Constraints below here

ALTER TABLE ENTRY ADD CONSTRAINT competitor_entry_fk FOREIGN KEY (comp_no) REFERENCES COMPETITOR (comp_no);
ALTER TABLE ENTRY ADD CONSTRAINT team_entry_fk FOREIGN KEY (team_id) REFERENCES TEAM (team_id);
ALTER TABLE ENTRY ADD CONSTRAINT charity_entry_fk FOREIGN KEY (char_id) REFERENCES CHARITY (char_id);
ALTER TABLE ENTRY ADD CONSTRAINT event_entry_fk FOREIGN KEY (event_id) REFERENCES EVENT (event_id);
ALTER TABLE TEAM ADD CONSTRAINT event_team_fk FOREIGN KEY (event_id, entry_no) REFERENCES ENTRY (event_id, entry_no);
ALTER TABLE team ADD CONSTRAINT team_carnival_fk FOREIGN KEY(carn_date) REFERENCES carnival(carn_date);



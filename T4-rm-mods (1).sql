--****PLEASE ENTER YOUR DETAILS BELOW****
--T4-rm-mods.sql

--Student ID: 34091904
--Student Name: Nashmia Shakeel

/* Comments for your marker:




*/

--(a)

ALTER TABLE competitor
  ADD ( comp_events_completed NUMBER );

COMMENT ON COLUMN competitor.comp_events_completed IS
  'Number of events that this competitor has completed';

UPDATE competitor c
   SET comp_events_completed = (
     SELECT COUNT(*)
       FROM entry e
      WHERE e.comp_no = c.comp_no
        AND e.entry_finishtime IS NOT NULL
   );

COMMIT;

DESC competitor;

SELECT
  comp_no,
  comp_fname,
  comp_lname,
  comp_events_completed
FROM competitor;

--(b)

CREATE TABLE competitor_charity_pct (
    comp_no              NUMBER(5)  NOT NULL,
    carn_date            DATE       NOT NULL,
    char_id              NUMBER(3)  NOT NULL,
    percentage_allocated NUMBER(3)  NOT NULL
);


COMMENT ON COLUMN competitor_charity_pct.comp_no              IS 'Identifier of the competitor';
COMMENT ON COLUMN competitor_charity_pct.carn_date            IS 'Carnival date';
COMMENT ON COLUMN competitor_charity_pct.char_id              IS 'Identifier of the charity';
COMMENT ON COLUMN competitor_charity_pct.percentage_allocated IS 'Percentage (0-100) of funds allocated to this charity';


ALTER TABLE competitor_charity_pct ADD CONSTRAINT pk_comp_char_pct
  PRIMARY KEY (comp_no, carn_date, char_id);

ALTER TABLE competitor_charity_pct ADD CONSTRAINT chk_pct_alloc_range
  CHECK (percentage_allocated BETWEEN 0 AND 100);

ALTER TABLE competitor_charity_pct ADD CONSTRAINT fk_ccp_comp
  FOREIGN KEY (comp_no)   REFERENCES competitor(comp_no);

ALTER TABLE competitor_charity_pct ADD CONSTRAINT fk_ccp_carn
  FOREIGN KEY (carn_date) REFERENCES carnival(carn_date);

ALTER TABLE competitor_charity_pct ADD CONSTRAINT fk_ccp_char
  FOREIGN KEY (char_id)   REFERENCES charity(char_id);


INSERT INTO competitor_charity_pct (comp_no, carn_date, char_id, percentage_allocated)
SELECT DISTINCT
    en.comp_no,
    ev.carn_date,
    en.char_id,
    100
  FROM entry en
  JOIN event ev ON en.event_id = ev.event_id
 WHERE en.char_id IS NOT NULL;


COMMIT;


DESC competitor_charity_pct;


SELECT
  comp_no,
  carn_date,
  char_id,
  percentage_allocated
FROM competitor_charity_pct
ORDER BY comp_no, carn_date, char_id;

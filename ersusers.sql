CREATE TABLE ersusers (
  id      NUMBER(10)    NOT NULL,
  fname   VARCHAR2(100),
  lname   VARCHAR2(100),
  email   VARCHAR2(100),
  pass   VARCHAR2(100)
);
ALTER TABLE ersusers
  ADD (
    CONSTRAINT id_pk PRIMARY KEY (id)
  );
CREATE SEQUENCE ersusers_sequence;
CREATE OR REPLACE TRIGGER ersusers_on_insert
  BEFORE INSERT ON ersusers
  FOR EACH ROW
BEGIN
  SELECT ersusers_sequence.nextval
  INTO :new.id
  FROM dual;
END;

INSERT INTO ersusers(id, fname, lname, email, pass) VALUES (1, 'Feels', 'Goodman', 'rexhavoc69@gmail.com', 'skeleton');
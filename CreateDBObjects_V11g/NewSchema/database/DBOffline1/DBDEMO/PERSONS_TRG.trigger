CREATE TRIGGER PERSONS_TRG 
BEFORE INSERT ON PERSONS 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF :NEW.PERSON_ID IS NULL THEN
      SELECT PERSONS_SEQ.NEXTVAL INTO :NEW.PERSON_ID FROM DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/

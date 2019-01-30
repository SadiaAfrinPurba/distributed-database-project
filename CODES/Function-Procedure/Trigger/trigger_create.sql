SET SERVEROUTPUT ON;

CREATE OR REPLACE TRIGGER display_changes_student 
AFTER INSERT ON student
FOR EACH ROW
ENABLE

DECLARE
   
pragma autonomous_transaction;
   cardStudent integer;
   sID integer;
   sName integer;
   sDept integer;
   sCred integer;
BEGIN 

  SELECT COUNT(id) INTO cardStudent FROM student;
  SELECT COUNT (DISTINCT id),COUNT (DISTINCT name),COUNT (DISTINCT dept_name),COUNT (DISTINCT tot_cred) INTO sID,sName,sDept,sCred FROM student;
  dbms_output.put_line('Card(student)');
  dbms_output.put_line(cardStudent);
  dbms_output.put_line('ID--Name--DEPT_NAME--TOT_CRED');
  dbms_output.put_line(sID || '   ' || sName || '  ' || sDept || '  ' || sCred);
END; 
/

SET SERVEROUTPUT ON;

CREATE OR REPLACE TRIGGER display_salary_changes 
BEFORE DELETE OR INSERT OR UPDATE ON teacher 
FOR EACH ROW
ENABLE
DECLARE 
   sal_diff number; 
BEGIN 
   sal_diff := ABS(:NEW.salary  - :OLD.salary); 
   dbms_output.put_line('Old salary: ' || :OLD.salary); 
   dbms_output.put_line('New salary: ' || :NEW.salary); 
   dbms_output.put_line('Salary difference: ' || sal_diff); 
END; 
/ 
commit;


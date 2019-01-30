set serveroutput on;

declare
  
  cardStudent integer;
  cardStudentCSE integer;
  cardStudentEEE integer;
  
  sID integer;
  sName integer;
  sDept integer;
  sCred integer;
  
  cseID integer;
  cseName integer;
  cseDept integer;
  cseCred integer; 
  
  eeeID integer;
  eeeName integer;
  eeeDept integer;
  eeeCred integer; 
  
  
  
begin
  SELECT COUNT(id) INTO cardStudent FROM student;
  SELECT COUNT (DISTINCT id),COUNT (DISTINCT name),COUNT (DISTINCT dept_name),COUNT (DISTINCT tot_cred) INTO sID,sName,sDept,sCred FROM student;
  dbms_output.put_line('Card(student)');
  dbms_output.put_line(cardStudent);
  dbms_output.put_line('ID-----Name---DEPT_NAME---TOT_CRED');
  dbms_output.put_line(sID || '      ' || sName || '     ' || sDept || '           ' || sCred);

  SELECT COUNT(id) INTO cardStudentCSE FROM student_cse@s_link;
  SELECT COUNT (DISTINCT id),COUNT (DISTINCT name),COUNT (DISTINCT dept_name),COUNT (DISTINCT tot_cred) INTO cseID,cseName,cseDept,cseCred FROM  student_cse@s_link;
  dbms_output.put_line('Card(student_cse)');
  dbms_output.put_line(cardStudentCSE);
  dbms_output.put_line('ID-----Name---DEPT_NAME---TOT_CRED');
  dbms_output.put_line(cseID || '      ' || cseName || '     ' || cseDept || '           ' || cseCred);

  SELECT COUNT(id) INTO cardStudentEEE FROM student_eee@n_link;
  SELECT COUNT (DISTINCT id),COUNT (DISTINCT name),COUNT (DISTINCT dept_name),COUNT (DISTINCT tot_cred) INTO eeeID,eeeName,eeeDept,eeeCred FROM  student_eee@n_link;
  dbms_output.put_line('Card(student_eee)');
  dbms_output.put_line(cardStudentEEE);
  dbms_output.put_line('ID-----Name---DEPT_NAME---TOT_CRED');
  dbms_output.put_line(eeeID || '      ' || eeeName || '     ' || eeeDept || '           ' || eeeCred);
end;
/


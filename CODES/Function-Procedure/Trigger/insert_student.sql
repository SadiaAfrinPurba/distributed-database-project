CREATE OR REPLACE PROCEDURE insert_student(s_id IN VARCHAR2,s_name IN VARCHAR2,s_dept IN VARCHAR2,s_totcred IN VARCHAR2) 
IS
BEGIN
       insert into student values (s_id,s_name,s_dept,s_totcred);
       if s_dept ='CSE'
		then
		insert into student_cse@s_link values (s_id,s_name,s_dept,s_totcred);
                dbms_output.put_line('Successfully Enrolled');

	elsif s_dept ='EEE'
		then
		insert into student_eee@n_link values (s_id,s_name,s_dept,s_totcred);
                dbms_output.put_line('Successfully Enrolled');

	else
		insert into student_rest@n_link values (s_id,s_name,s_dept,s_totcred);
                dbms_output.put_line('Successfully Enrolled');

	end if;

END;
/



DECLARE
    s_id student.ID%TYPE;
    s_name student.NAME%TYPE;
    s_dept student.dept_name%TYPE;
    s_totcred student.tot_cred%TYPE;
   
   
BEGIN
   
             s_id := '&StudentID';
             s_name := '&Name';
             s_dept := '&Department';
             s_totcred := &Total_Credit;
             insert_student(s_id,s_name,s_dept,s_totcred);
             
END;
/




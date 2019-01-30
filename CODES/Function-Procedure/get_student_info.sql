create or replace function get_total_studentCount
	(inputCourseID in varchar2,inputDept in varchar2)
	return varchar2
	is
student_count number;

    begin
	
        if inputDept ='CSE'
		then
		SELECT count(id) INTO student_count FROM takes1_cse@s_link WHERE course_id=inputCourseID;

	elsif inputDept ='EEE'
		then
		SELECT count(id) INTO student_count FROM takes1_eee@n_link WHERE course_id=inputCourseID;

	else
		SELECT count(id) INTO student_count FROM takes3@n_link WHERE course_id=inputCourseID;
	end if;

        return student_count;
end;
/


create or replace procedure proc_get_studentID
(inputCourseID in varchar2,inputDept in varchar2)
is


	var_studentID varchar2(20);
        var_studentName varchar2(20);
        var_studentDeptName varchar2(20);
     
        cursor student_cursor1 IS
        SELECT student_cse.id,student_cse.name,student_cse.dept_name
        FROM student_cse@s_link
        INNER JOIN takes1_cse@s_link ON takes1_cse.id=student_cse.id
        WHERE takes1_cse.course_id=inputCourseID
        ORDER BY student_cse.id;

        cursor student_cursor2 IS
        SELECT student_eee.id,student_eee.name,student_eee.dept_name
        FROM student_eee@n_link
        INNER JOIN takes1_eee@n_link ON takes1_eee.id=student_eee.id
        WHERE takes1_eee.course_id=inputCourseID
        ORDER BY student_eee.id;

        cursor student_cursor3 IS
        SELECT student_rest.id,student_rest.name,student_rest.dept_name
        FROM student_rest@n_link
        INNER JOIN takes3@n_link ON takes3.id=student_rest.id
        WHERE takes3.course_id=inputCourseID
        ORDER BY student_rest.id;
  
begin
        if inputDept ='CSE'
		then
		open student_cursor1;
                dbms_output.put_line('Student ID--Name--Department Name');
                loop
	           fetch student_cursor1 INTO var_studentID,var_studentName,var_studentDeptName;
                   dbms_output.put_line(var_studentID || '   ' ||var_studentName || '  ' ||var_studentDeptName);
                   exit when student_cursor1%notfound;
                 end loop;
        close student_cursor1;

	elsif inputDept ='EEE'
		then
		open student_cursor2;
                dbms_output.put_line('Student ID--Name--Department Name');
                loop
	           fetch student_cursor2 INTO var_studentID,var_studentName,var_studentDeptName;
                   dbms_output.put_line(var_studentID || '   ' ||var_studentName || '  ' ||var_studentDeptName);
                   exit when student_cursor2%notfound;
                 end loop;
        close student_cursor2;

	else
		open student_cursor3;
                dbms_output.put_line('Student ID--Name--Department Name');
                loop
	           fetch student_cursor3 INTO var_studentID,var_studentName,var_studentDeptName;
                   dbms_output.put_line(var_studentID || '   ' ||var_studentName || '  ' ||var_studentDeptName);
                   exit when student_cursor3%notfound;
                 end loop;
        close student_cursor3;

	end if;
     
  
end;
/

set serveroutput on;

declare
  inputCourseID varchar2(10);
  inputDept varchar2(10);
  totalStudent number;
  
begin
  inputCourseID := '&CourseID';
  inputDept :='&dept_name';
  totalStudent :=get_total_studentCount(inputCourseID,inputDept);
  dbms_output.put_line('Total Student in '||inputCourseID ||' are :' || totalStudent);
  proc_get_studentID(inputCourseID,inputDept);
end;
/


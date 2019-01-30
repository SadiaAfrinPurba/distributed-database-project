create or replace procedure get_course_info
(inputID in varchar2, inputSemester in varchar2, inputYear in varchar2,inputDept in varchar2)
is

        var_courseID varchar2(20);
        var_grade varchar2(20);


        cursor cse_cursor IS
        SELECT DISTINCT takes1_cse.course_id,takes1_cse.grade
        FROM takes1_cse@s_link,takes2_cse@s_link
        WHERE takes1_cse.course_id=takes2_cse.course_id
        AND takes2_cse.semester=inputSemester
        AND takes2_cse.year=inputYear
        AND takes1_cse.id=inputID
        ORDER BY takes1_cse.grade;

        cursor eee_cursor IS
        SELECT DISTINCT takes1_eee.course_id,takes1_eee.grade
        FROM takes1_eee@n_link,takes2_eee@n_link
        WHERE takes1_eee.course_id=takes2_eee.course_id
        AND takes2_eee.semester=inputSemester
        AND takes2_eee.year=inputYear
        AND takes1_eee.id=inputID
        ORDER BY takes1_eee.grade;
       
        cursor rest_cursor IS
        SELECT DISTINCT takes3.course_id takes3.grade
        FROM takes3@n_link
        WHERE 
        takes3.semester=inputSemester
        AND takes3.year=inputYear
        AND takes3.id=inputID
        ORDER BY takes3.grade;
begin

        if inputDept ='CSE'
		then
		open cse_cursor;
                dbms_output.put_line('Course ID--Grade');
                loop
	          fetch cse_cursor INTO var_courseID,var_grade;
                  exit when cse_cursor%notfound;
                  dbms_output.put_line(var_courseID || '  ' || var_grade);
	        end loop;
               close cse_cursor;

	elsif inputDept ='EEE'
		then
	        open eee_cursor;
                dbms_output.put_line('Course ID--Grade');
                loop
	          fetch eee_cursor INTO var_courseID,var_grade;
                  exit when eee_cursor%notfound;
                  dbms_output.put_line(var_courseID || '  ' || var_grade);
	        end loop;
                close eee_cursor;


	else
	        open rest_cursor;
                dbms_output.put_line('Course ID--Grade');
                loop
	          fetch rest_cursor INTO var_courseID,var_grade;
                  exit when rest_cursor%notfound;
                  dbms_output.put_line(var_courseID || '  ' || var_grade);
	        end loop;
                close rest_cursor;
	end if;

end;
/
set serveroutput on;

declare
  inputID varchar2(10);
  inputSemester varchar2(10);
  inputYear varchar2(10);
  inputDept varchar2(10);
begin
  inputID := '&StudentID';
  inputSemester := '&Semester'; 
  inputYear := '&Year';
  inputDept :='&dept_name';
  get_course_info(inputID,inputSemester,inputYear,inputDept);
  
end;
/


create or replace procedure get_student_routine
(inputID in varchar2, inputSemester in varchar2, inputYear in varchar2,inputDept in varchar2)
is


        
	var_day varchar2(20);
        var_startTime varchar2(20);
        var_endTime varchar2(20);
        var_courseID varchar2(20);
        var_roomNO varchar2(20);
        var_building varchar2(20);


        cursor cse_cursor IS
        SELECT time_slot.day,time_slot.start_time,time_slot.end_time,section_cse.course_id,section_cse.building,section_cse.room_no
        FROM time_slot
        INNER JOIN section_cse@s_link ON section_cse.time_slot_id=time_slot.time_slot_id
        INNER JOIN takes1_cse@s_link ON section_cse.course_id=takes1_cse.course_id
        INNER JOIN student_cse@s_link ON student_cse.id=takes1_cse.id
        WHERE section_cse.year=inputYear
        AND section_cse.semester=inputSemester
        AND takes1_cse.id=inputID
        ORDER BY day;

        cursor eee_cursor IS
        SELECT time_slot.day,time_slot.start_time,time_slot.end_time,section_eee.course_id,section_eee.building,section_eee.room_no
        FROM time_slot
        INNER JOIN section_eee@n_link ON section_eee.time_slot_id=time_slot.time_slot_id
        INNER JOIN takes1_eee@n_link ON section_eee.course_id=takes1_eee.course_id
        INNER JOIN student_eee@n_link ON student_eee.id=takes1_eee.id
        WHERE section_eee.year=inputYear
        AND section_eee.semester=inputSemester
        AND takes1_eee.id=inputID
        ORDER BY day;

        cursor rest_cursor IS
        SELECT time_slot.day,time_slot.start_time,time_slot.end_time,section_rest.course_id,section_rest.building,section_rest.room_no
        FROM time_slot
        INNER JOIN section_rest@n_link ON section_rest.time_slot_id=time_slot.time_slot_id
        INNER JOIN takes3@n_link ON section_rest.course_id=takes3.course_id
        INNER JOIN student_rest@n_link ON student_rest.id=takes3.id
        WHERE section_rest.year=inputYear
        AND section_rest.semester=inputSemester
        AND takes3.id=inputID
        ORDER BY day;
  
       
	
        
begin

        if inputDept ='CSE'
		then
		open cse_cursor;
                dbms_output.put_line('Course ID--Day--Start Time--End Time--Building--Room No');
                loop
	           fetch cse_cursor INTO var_day,var_startTime,var_endTime,var_courseID,var_building,var_roomNO;
                   exit when cse_cursor%notfound;
                   dbms_output.put_line(var_courseID || '   ' || var_day || '  ' || var_startTime || '  ' || var_endTime || '  ' ||var_building ||' '||    var_roomNO );
	
               end loop;
               close cse_cursor;


	elsif inputDept ='EEE'
		then
		open eee_cursor;
                dbms_output.put_line('Course ID--Day--Start Time--End Time--Building--Room No');
                loop
	           fetch eee_cursor INTO var_day,var_startTime,var_endTime,var_courseID,var_building,var_roomNO;
                   exit when eee_cursor%notfound;
                   dbms_output.put_line(var_courseID || '   ' || var_day || '  ' || var_startTime || '  ' || var_endTime || '  ' ||var_building ||' '||    var_roomNO );
	
               end loop;
               close eee_cursor;

	else
		open rest_cursor;
                dbms_output.put_line('Course ID--Day--Start Time--End Time--Building--Room No');
                loop
	           fetch rest_cursor INTO var_day,var_startTime,var_endTime,var_courseID,var_building,var_roomNO;
                   exit when rest_cursor%notfound;
                   dbms_output.put_line(var_courseID || '   ' || var_day || '  ' || var_startTime || '  ' || var_endTime || '  ' ||var_building ||' '||    var_roomNO );
	
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
  get_student_routine(inputID,inputSemester,inputYear,inputDept);
  
end;
/


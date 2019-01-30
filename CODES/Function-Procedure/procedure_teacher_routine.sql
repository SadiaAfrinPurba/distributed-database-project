create or replace procedure get_teacher_routine
(inputID in varchar2,inputDept in varchar2)
is

        var_day varchar2(20);
        var_startTime varchar2(20);
        var_endTime varchar2(20);
        var_courseID varchar2(20);
        var_roomNO varchar2(20);
        var_building varchar2(20);
        var_semester varchar2(20);
        var_year varchar2(20);

        cursor cse_cursor IS
        SELECT  time_slot.day,time_slot.start_time,time_slot.end_time,section_cse.course_id,section_cse.building,section_cse.room_no,section_cse.semester,section_cse.year 
        FROM time_slot
        INNER JOIN section_cse@s_link ON section_cse.time_slot_id=time_slot.time_slot_id
        INNER JOIN teaches_cse@s_link ON section_cse.course_id=teaches_cse.course_id
        WHERE teaches_cse.id=inputID
        ORDER BY day;

        cursor eee_cursor IS
        SELECT  time_slot.day,time_slot.start_time,time_slot.end_time,section_eee.course_id,section_eee.building,section_eee.room_no,section_eee.semester,section_eee.year 
        FROM time_slot
        INNER JOIN section_eee@n_link ON section_eee.time_slot_id=time_slot.time_slot_id
        INNER JOIN teaches_eee@n_link ON section_eee.course_id=teaches_eee.course_id
        WHERE teaches_eee.id=inputID
        ORDER BY day;

        cursor rest_cursor IS
        SELECT  time_slot.day,time_slot.start_time,time_slot.end_time,section_rest.course_id,section_rest.building,section_rest.room_no,section_rest.semester,section_rest.year 
        FROM time_slot
        INNER JOIN section_rest@n_link ON section_rest.time_slot_id=time_slot.time_slot_id
        INNER JOIN teaches_rest@n_link ON section_rest.course_id=teaches_rest.course_id
        WHERE teaches_rest.id=inputID
        ORDER BY day;
  
    
	
        
begin

   if inputDept ='CSE'
		then
		open cse_cursor;
                dbms_output.put_line('Course--Day--Start Time--End Time--Building--Room No--Semester--Year');
                loop
	           fetch cse_cursor INTO var_day,var_startTime,var_endTime,var_courseID,var_building,var_roomNO,var_semester,var_year;
                   exit when cse_cursor%notfound;
                   dbms_output.put_line(var_courseID || '   ' || var_day || '  ' || var_startTime || '  ' || var_endTime || '  ' ||var_building ||'  '||     var_roomNO||' '||var_semester ||' '||var_year  );
	 
                end loop;
               close cse_cursor;



	elsif inputDept ='EEE'
		then
		open eee_cursor;
                dbms_output.put_line('Course--Day--Start Time--End Time--Building--Room No--Semester--Year');
                loop
	           fetch eee_cursor INTO var_day,var_startTime,var_endTime,var_courseID,var_building,var_roomNO,var_semester,var_year;
                   exit when eee_cursor%notfound;
                   dbms_output.put_line(var_courseID || '   ' || var_day || '  ' || var_startTime || '  ' || var_endTime || '  ' ||var_building ||'  '||     var_roomNO||' '||var_semester ||' '||var_year  );
	 
                end loop;
               close eee_cursor;

	else
		open rest_cursor;
                dbms_output.put_line('Course--Day--Start Time--End Time--Building--Room No--Semester--Year');
                loop
	           fetch rest_cursor INTO var_day,var_startTime,var_endTime,var_courseID,var_building,var_roomNO,var_semester,var_year;
                   exit when rest_cursor%notfound;
                   dbms_output.put_line(var_courseID || '   ' || var_day || '  ' || var_startTime || '  ' || var_endTime || '  ' ||var_building ||'  '||     var_roomNO||' '||var_semester ||' '||var_year  );
	 
                end loop;
               close rest_cursor;
	end if;
  
 
  
end;
/
set serveroutput on;

declare
  inputID varchar2(10);
  inputDept varchar2(10);
  
begin
  inputID := '&TeacherID';
  inputDept :='&dept_name';
 
  get_teacher_routine(inputID,inputDept);
  
end;
/


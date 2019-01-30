set serveroutput on;
DECLARE 
   vdept_Name varchar2(20) := 'CSE'; 
BEGIN 
   dbms_output.put_line('************Students of '|| vdept_Name||' Department:     ');
   dbms_output.new_line;
   dept_activities.dept_student(vdept_Name); 
   
   dbms_output.put_line('************Teachers of '|| vdept_Name||' Department:     ');
   dept_activities.dept_teacher(vdept_Name);

   dbms_output.put_line('************Courses of '|| vdept_Name||' Department:      ');   
   dept_activities.dept_course(vdept_Name); 
END; 
/
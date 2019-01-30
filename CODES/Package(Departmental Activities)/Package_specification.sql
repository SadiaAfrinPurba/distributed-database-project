CREATE OR REPLACE PACKAGE dept_activities AS 
 
   -- show all the students of given department
   PROCEDURE dept_student(vdept_name in VARCHAR2); --(vdept_name student_cse.dept_name%type); --id out varchar2(20), name out varchar2(20), dept_name in varchar2(20), tot_cred out decimal(5,2)
   
   -- show all the teachers of given department
  
   PROCEDURE dept_teacher(vdept_name in VARCHAR2); 

   -- show all the courses of given department
  
   PROCEDURE dept_course(vdept_name in VARCHAR2); 
  
END dept_activities;
/

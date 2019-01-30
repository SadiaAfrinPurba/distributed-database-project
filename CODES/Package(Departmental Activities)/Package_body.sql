set serveroutput on;
CREATE OR REPLACE PACKAGE BODY dept_activities AS 

   PROCEDURE dept_student(vdept_name in VARCHAR2)
   IS 
   vid varchar2(20);
   vname varchar2(20);
   v_tot_cred decimal(5,2);
   
   Cursor student_cse_cur is
   select id,name,tot_cred from student_cse@s_link;
   Cursor student_eee_cur is
   select id,name,tot_cred from student_eee@s_link;
   Cursor student_rest_cur is
   select id,name,tot_cred from student_rest@s_link;
   
      
   BEGIN 
   if vdept_name = 'CSE'
   then 
	 open student_cse_cur;
     loop
     fetch student_cse_cur into vid,vname,v_tot_cred; 
     exit when student_cse_cur%NOTFOUND;
     dbms_output.put_line(vid||' '|| vname||' '||v_tot_cred);
     end loop;
    close student_cse_cur;
   
   elsif vdept_name='EEE'
   then   
   open student_eee_cur;
     loop
     fetch student_eee_cur into vid,vname,v_tot_cred; 
     exit when student_eee_cur%NOTFOUND;
     dbms_output.put_line(vid||' '|| vname||' '||v_tot_cred);
     end loop;
    close student_eee_cur;
   else
   open student_rest_cur;
     loop
     fetch student_rest_cur into vid,vname,v_tot_cred; 
     exit when student_rest_cur%NOTFOUND;
     dbms_output.put_line(vid||' '|| vname||' '||v_tot_cred);
     end loop;
    close student_rest_cur;
   end if;
   END dept_student; 
   
   
   PROCEDURE dept_teacher(vdept_name in VARCHAR2)
   IS 
   tid varchar2(20);
   tname varchar2(20);
   t_salary int;
   
   Cursor teacher_cse_cur is
   select id,name,salary from teacher_cse@s_link;
   Cursor teacher_eee_cur is
   select id,name,salary from teacher_eee@s_link;
   Cursor teacher_rest_cur is
   select id,name,salary from teacher_rest@s_link;
   
      
   BEGIN 
   if vdept_name = 'CSE'
   then 
	 open teacher_cse_cur;
     loop
     fetch teacher_cse_cur into tid,tname,t_salary; 
     exit when teacher_cse_cur%NOTFOUND;
     dbms_output.put_line(tid||' '|| tname||' '||t_salary);
     end loop;
    close teacher_cse_cur;
   
   elsif vdept_name='EEE'
   then   
   open teacher_eee_cur;
     loop
     fetch teacher_eee_cur into tid,tname,t_salary; 
     exit when teacher_eee_cur%NOTFOUND;
     dbms_output.put_line(tid||' '|| tname||' '||t_salary);
     end loop;
    close teacher_eee_cur;
   else
   open teacher_rest_cur;
     loop
     fetch teacher_rest_cur into tid,tname,t_salary; 
     exit when teacher_rest_cur%NOTFOUND;
     dbms_output.put_line(tid||' '|| tname||' '||t_salary);
     end loop;
    close teacher_rest_cur;
   end if;
   END dept_teacher; 
   
   PROCEDURE dept_course(vdept_name in VARCHAR2)
   IS 
   cid varchar2(20);
   c_title varchar2(50);
   c_credit int;
   
   Cursor course_cse_cur is
   select course_id,title,credits from course_cse@s_link;
   Cursor course_eee_cur is
   select course_id,title,credits from course_eee@s_link;
   Cursor course_rest_cur is
   select course_id,title,credits from course_rest@s_link;
   
      
   BEGIN 
   if vdept_name = 'CSE'
   then 
	 open course_cse_cur;
     loop
     fetch course_cse_cur into cid,c_title,c_credit; 
     exit when course_cse_cur%NOTFOUND;
     dbms_output.put_line(cid||' '|| c_title||' '||c_credit);
     end loop;
    close course_cse_cur;
   
   elsif vdept_name='EEE'
   then   
   open course_eee_cur;
     loop
     fetch course_eee_cur into cid,c_title,c_credit; 
     exit when course_eee_cur%NOTFOUND;
     dbms_output.put_line(cid||' '|| c_title||' '||c_credit);
     end loop;
    close course_eee_cur;
   else
   open course_rest_cur;
     loop
     fetch course_rest_cur into cid,c_title,c_credit; 
     exit when course_rest_cur%NOTFOUND;
     dbms_output.put_line(cid||' '|| c_title||' '||c_credit);
     end loop;
    close course_rest_cur;
   end if;
   END dept_course; 
   
   
  end dept_activities;

/
  

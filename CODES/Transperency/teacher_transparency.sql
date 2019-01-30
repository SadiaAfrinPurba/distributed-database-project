set serveroutput on;

Declare

   v_id varchar2(20);
   v_name varchar2(20);
   v_dept_name varchar(20);
   v_salary int DEFAULT NULL;
   Cursor cur is
   select * from teacher_rest@s_link where salary >='60000'
   union 
   select * from teacher_eee@s_link  where salary >='60000'
   union
   select * from teacher_cse@s_link where salary >='60000';

Begin

   open cur;
   loop
   fetch cur into v_id,v_name,v_dept_name,v_salary;
   exit when cur%notFound;
   dbms_output.put_line('ID  :'||v_id ||'  Name  :'|| v_name ||'  Dept name  :'||v_dept_name ||'  Salary  :' ||v_salary);
   end loop;
   close cur; 
   
End;
/

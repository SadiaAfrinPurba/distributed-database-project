create or replace procedure update_teacher_salary
(inputID in varchar2,inputSalary in int)
is

        
begin
  
   UPDATE teacher
   SET salary = salary + inputSalary 
   WHERE id = inputID; 
  
end;
/
set serveroutput on;

declare
  inputID varchar2(10);
  inputSalary number;
  
begin
  inputID := '&TeacherID';
  inputSalary:=&New_Salary;
  update_teacher_salary(inputID,inputSalary);
  
end;
/

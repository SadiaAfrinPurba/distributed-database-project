create or replace function A_Plus_in_a_subject
	(c_title in varchar2)
	return number
	is
student_count number;

c_cse number;
c_eee number;
c_rest number;

begin
	select count(takes1_cse.ID) into c_cse from takes1_cse@s_link inner join course_cse@s_link on takes1_cse.course_id=course_cse.course_id where takes1_cse.grade='A' and course_cse.title=c_title;
	
	select count(takes1_eee.ID) into c_eee from takes1_eee@s_link inner join course_eee@s_link on takes1_eee.course_id=course_eee.course_id where takes1_eee.grade='A' and course_eee.title=c_title;
	
	select count(takes3.ID) into c_rest from takes3@s_link inner join course_rest@s_link on takes3.course_id=course_rest.course_id where takes3.grade='A' and course_rest.title=c_title;
	student_count := c_rest+c_cse+c_eee;
	
return student_count;
end;
/

set serveroutput on;
declare

	c_title varchar2(50);
	student_count number;
	
begin
	
	/*Fuction for getting the total students who has obtained A+ in a particular subject*/
	c_title :='Robotics';
	student_count:=A_Plus_in_a_subject(c_title);

	dbms_output.put_line('...//Function call for A plus in a subject///...');
	dbms_output.put_line('Total number of students who has secured A in ' || c_title||' : ' || student_count);
	end;
/
	

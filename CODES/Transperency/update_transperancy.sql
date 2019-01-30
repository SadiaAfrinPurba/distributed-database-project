declare
	vID varchar2(20);
        vname varchar2(20);
        vtot_cred decimal(5,2);
begin
	select name,tot_cred into vname,vtot_cred from student_cse@s_link where id='10000';
        insert into student_eee@s_link values ('10000',vname,'EEE',vtot_cred);
        insert into takes1_eee@s_link values ('10000','EE-181','A+');
        insert into takes2_eee@s_link values ('10000','EE-181','A','Fall','2017');
        delete from student_cse@s_link where id='10000';
        delete from takes1_cse@s_link where id='10000';
        delete from takes2_cse@s_link where id='10000';
        
	commit;

end;
/

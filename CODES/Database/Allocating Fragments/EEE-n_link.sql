clear screen;


DROP TABLE student_rest;
DROP TABLE STUDENT_EEE;

DROP TABLE TEACHER_rest;
DROP TABLE teacher_EEE ;

DROP TABLE teaches_rest;
DROP TABLE teaches_EEE;


DROP TABLE takes3 ;
DROP TABLE takes1_eee;
DROP TABLE takes2_eee ;

DROP TABLE COURSE_rest;
DROP TABLE COURSE_eee;

DROP TABLE section_eee;
DROP TABLE section_rest;

CREATE TABLE student_rest(
  ID varchar2(20) NOT NULL,
  name varchar2(20) DEFAULT NULL,
  dept_name varchar2(20) DEFAULT NULL,
  tot_cred decimal(5,2) DEFAULT NULL
);
CREATE TABLE student_eee(
  ID varchar2(20) NOT NULL,
  name varchar2(20) DEFAULT NULL,
  dept_name varchar2(20) DEFAULT NULL,
  tot_cred decimal(5,2) DEFAULT NULL
);
CREATE TABLE teacher_rest(
  ID varchar2(20) NOT NULL,
  name varchar2(20) DEFAULT NULL,
  dept_name varchar2(20) DEFAULT NULL,
  salary int DEFAULT NULL
);
CREATE TABLE teacher_EEE(
  ID varchar2(20) NOT NULL,
  name varchar2(20) DEFAULT NULL,
  dept_name varchar2(20) DEFAULT NULL,
  salary int DEFAULT NULL
);
CREATE TABLE teaches_rest(
  ID varchar2(20) NOT NULL,
  course_id varchar2(20) NOT NULL,
  sec_id varchar2(20) NOT NULL,
  semester varchar2(20) NOT NULL,
  YEAR varchar2(20) NOT NULL
);
CREATE TABLE teaches_EEE(
  ID varchar2(20) NOT NULL,
  course_id varchar2(20) NOT NULL,
  sec_id varchar2(20) NOT NULL,
  semester varchar2(20) NOT NULL,
  YEAR varchar2(20) NOT NULL
);
CREATE TABLE takes3(
  ID varchar2(20) NOT NULL,
  course_id varchar2(20) NOT NULL,
  sec_id varchar2(20) NOT NULL,
  semester varchar2(20) NOT NULL,
  year varchar2(20) NOT NULL,
  grade varchar2(20) NOT NULL
);

CREATE TABLE takes1_eee(
  ID varchar2(20) NOT NULL,
  course_id varchar2(20) NOT NULL,
  grade varchar2(20) NOT NULL
);

CREATE TABLE takes2_eee(
  ID varchar2(20) NOT NULL,
  course_id varchar2(20) NOT NULL,
  sec_id varchar2(20) NOT NULL,
  semester varchar2(20) NOT NULL,
  year varchar2(20) NOT NULL
);
CREATE TABLE course_rest (
  course_id varchar2(20) NOT NULL,
  title varchar2(50) DEFAULT NULL,
  dept_name varchar2(20) DEFAULT NULL,
  credits int DEFAULT NULL,
  PRIMARY KEY (course_id)
);
CREATE TABLE course_eee (
  course_id varchar2(20) NOT NULL,
  title varchar2(50) DEFAULT NULL,
  dept_name varchar2(20) DEFAULT NULL,
  credits int DEFAULT NULL
);
CREATE TABLE section_eee (
  course_id varchar2(20) NOT NULL,
  sec_id varchar2(20) NOT NULL,
  semester varchar2(20) NOT NULL,
  year varchar2(20) NOT NULL,
  building varchar2(20) DEFAULT NULL,
  room_no varchar2(20) DEFAULT NULL,
  time_slot_id varchar2(20) DEFAULT NULL
);
CREATE TABLE section_rest (
  course_id varchar2(20) NOT NULL,
  sec_id varchar2(20) NOT NULL,
  semester varchar2(20) NOT NULL,
  year varchar2(20) NOT NULL,
  building varchar2(20) DEFAULT NULL,
  room_no varchar2(20) DEFAULT NULL,
  time_slot_id varchar2(20) DEFAULT NULL
);
insert into teacher_rest values ('12121', 'Nafi Chowdhury', 'IPE', '90000');
insert into teacher_rest values ('76543', 'Nipu', 'IPE', '80000');
insert into teacher_rest values ('76544', 'Alom', 'IPE', '80000');
insert into teacher_rest values ('76545', 'Rita', 'IPE', '80000');
insert into teacher_rest values ('76546', 'Meena', 'IPE', '80000');
insert into teacher_rest values ('15151', 'Abdullah Al Mamum', 'Texile', '40000');
insert into teacher_rest values ('15152', 'Orochimaru', 'Texile', '40000');
insert into teacher_rest values ('15153', 'Fizza', 'Texile', '40000');
insert into teacher_rest values ('15154', 'Razzak', 'Texile', '40000');
insert into teacher_rest values ('15155', 'Chadni', 'Texile', '40000');
insert into teacher_rest values ('32343', 'Al Said', 'ME', '60000');
insert into teacher_rest values ('58583', 'Chowdhury Buyian', 'ME', '62000');
insert into teacher_rest values ('58584', 'Purba', 'ME', '62000');
insert into teacher_rest values ('58585', 'Tasnim', 'ME', '62000');
insert into teacher_rest values ('58586', 'Sadia', 'ME', '62000');
insert into teacher_rest values ('33456', 'Sami Ansari', 'Architecture', '87000');
insert into teacher_rest values ('22222', 'Mizan Ahemd', 'Architecture', '95000');
insert into teacher_rest values ('22223', 'Imtiyaz', 'Architecture', '95000');
insert into teacher_rest values ('22224', 'Tuhin', 'Architecture', '95000');
insert into teacher_rest values ('22225', 'Biva', 'Architecture', '95000');
insert into teacher_rest values ('76766', 'Kamal Ahmed', 'BBA', '72000');
insert into teacher_rest values ('76767', 'Tahiat', 'BBA', '72000');
insert into teacher_rest values ('76768', 'Hinata', 'BBA', '72000');
insert into teacher_rest values ('76769', 'Jesmin', 'BBA', '72000');
insert into teacher_rest values ('76780', 'Hira', 'BBA', '72000');

insert into teacher_EEE values ('98345', 'Munmun', 'EEE', '80000');
insert into teacher_EEE values ('98346', 'Anika', 'EEE', '80000');
insert into teacher_EEE values ('98347', 'Rajon', 'EEE', '80000');
insert into teacher_EEE values ('98348', 'Imrul Kayes', 'EEE', '80000');
insert into teacher_EEE values ('98349', 'Foysal Kabir', 'EEE', '80000');

insert into teaches_EEE values ('98345', 'EE-181', 'A', 'Spring', '2016');
insert into teaches_EEE values ('98346', 'EE-181', 'A', 'Spring', '2016');
insert into teaches_EEE values ('98347', 'EE-181', 'A', 'Spring', '2016');
insert into teaches_EEE values ('98348', 'EE-181', 'A', 'Spring', '2016');
insert into teaches_EEE values ('98349', 'EE-181', 'A', 'Spring', '2016');

insert into teaches_rest values ('12121', 'FIN-201', 'A', 'Spring', '2017');
insert into teaches_rest values ('76544', 'FIN-201', 'A', 'Spring', '2017');
insert into teaches_rest values ('76545', 'FIN-201', 'A', 'Spring', '2017');
insert into teaches_rest values ('76546', 'FIN-201', 'A', 'Spring', '2017');
insert into teaches_rest values ('15151', 'MU-199', 'A', 'Spring', '2017');
insert into teaches_rest values ('15152', 'MU-199', 'A', 'Spring', '2017');
insert into teaches_rest values ('15153', 'MU-199', 'A', 'Spring', '2017');
insert into teaches_rest values ('15154', 'MU-199', 'A', 'Spring', '2017');
insert into teaches_rest values ('15155', 'MU-199', 'A', 'Spring', '2017');
insert into teaches_rest values ('22222', 'PHY-101', 'A', 'Fall', '2016');
insert into teaches_rest values ('22223', 'PHY-101', 'A', 'Fall', '2016');
insert into teaches_rest values ('22224', 'PHY-101', 'A', 'Fall', '2016');
insert into teaches_rest values ('22225', 'PHY-101', 'A', 'Fall', '2016');
insert into teaches_rest values ('32343', 'HIS-351', 'A', 'Spring', '2017');
insert into teaches_rest values ('58583', 'HIS-351', 'A', 'Spring', '2017');
insert into teaches_rest values ('58584', 'HIS-351', 'A', 'Spring', '2017');
insert into teaches_rest values ('58585', 'HIS-351', 'A', 'Spring', '2017');
insert into teaches_rest values ('58586', 'HIS-351', 'A', 'Spring', '2017');
insert into teaches_rest values ('76766', 'BIO-101', 'A', 'Fall', '2016');
insert into teaches_rest values ('76766', 'BIO-301', 'A', 'Spring', '2017');
insert into teaches_rest values ('76767', 'BIO-101', 'A', 'Fall', '2016');
insert into teaches_rest values ('76768', 'BIO-301', 'A', 'Spring', '2017');
insert into teaches_rest values ('76769', 'BIO-101', 'A', 'Fall', '2016');
insert into teaches_rest values ('76780', 'BIO-301', 'A', 'Spring', '2017');




insert into student_rest values ('19991', 'Purba', 'ME', '80');
insert into student_rest values ('23121', 'Saima', 'IPE', '110');
insert into student_rest values ('44553', 'Faiza', 'Architecture', '56');
insert into student_rest values ('45678', 'Azwad', 'Architecture', '46');
insert into student_rest values ('55739', 'Rakib', 'Texile', '38');
insert into student_rest values ('70557', 'Minhaj', 'Architecture', '0');
insert into student_rest values ('98988', 'Rubana', 'BBA', '120');
insert into student_rest values ('19992', 'Nuf', 'ME', '80');
insert into student_rest values ('19993', 'Imtiyaz', 'ME', '100');
insert into student_rest values ('19994', 'Orpa', 'ME', '180');
insert into student_rest values ('19995', 'Mamun', 'ME', '112');
insert into student_rest values ('23122', 'Labib', 'IPE', '110');
insert into student_rest values ('23123', 'Labiba', 'IPE', '96');
insert into student_rest values ('23124', 'Arefin', 'IPE', '112');
insert into student_rest values ('23125', 'Fabliha', 'IPE', '118');
insert into student_rest values ('44554', 'Rafsan', 'Architecture', '156');
insert into student_rest values ('44555', 'Riyad', 'Architecture', '61');
insert into student_rest values ('55740', 'Bapon', 'Texile', '119');
insert into student_rest values ('55741', 'Dihan', 'Texile', '138');
insert into student_rest values ('55742', 'Safia', 'Texile', '123');
insert into student_rest values ('55743', 'Hafsha', 'Texile', '138');
insert into student_rest values ('98989', 'Ruba', 'BBA', '120');
insert into student_rest values ('98990', 'Hossain', 'BBA', '112');
insert into student_rest values ('98991', 'Tasnim', 'BBA', '105');
insert into student_rest values ('98992', 'Murad', 'BBA', '101');

insert into student_eee values ('76653', 'Maliha', 'EEE', '60');
insert into student_eee values ('98765', 'Senjuti', 'EEE', '98');
insert into student_eee values ('76654', 'Tabassum', 'EEE', '110');
insert into student_eee values ('76655', 'Rita', 'EEE', '105');
insert into student_eee values ('76656', 'Mita', 'EEE', '130');



insert into takes1_eee values ('76654', 'EE-181','C+');
insert into takes1_eee values ('76655', 'EE-181','B');
insert into takes1_eee values ('76656', 'EE-181','A');
insert into takes1_eee values ('76653', 'EE-181','C');

insert into takes2_eee values ('76654','EE-181','A', 'Spring', '2016');
insert into takes2_eee values ('76655','EE-181','A', 'Spring', '2016');
insert into takes2_eee values ('76656','EE-181','A', 'Spring', '2016');
insert into takes2_eee values ('76653','EE-181','A', 'Spring', '2016');




insert into takes3 values ('19991', 'HIS-351', 'A', 'Spring', '2017', 'B');
insert into takes3 values ('23121', 'FIN-201', 'A', 'Spring', '2017', 'C+');
insert into takes3 values ('44553', 'PHY-101', 'A', 'Fall', '2016', 'B-');
insert into takes3 values ('55739', 'MU-199', 'A', 'Spring', '2017', 'A-');
insert into takes3 values ('98988', 'BIO-101', 'A', 'Fall', '2016', 'A');
insert into takes3 values ('98988', 'BIO-301', 'A', 'Spring', '2017', 'A+');
insert into takes3 values ('98989', 'FIN-201', 'A', 'Spring', '2017', 'A');
insert into takes3 values ('98990', 'FIN-201', 'A', 'Spring', '2017', 'A');
insert into takes3 values ('98991', 'BIO-101', 'A', 'Spring', '2017', 'A-');
insert into takes3 values ('98992', 'BIO-301', 'A', 'Spring', '2017', 'C+');
insert into takes3 values ('55740', 'MU-199', 'A', 'Spring', '2017', 'A');
insert into takes3 values ('55741', 'MU-199', 'A', 'Spring', '2017', 'B+');
insert into takes3 values ('55742', 'MU-199', 'A', 'Spring', '2017', 'A-');
insert into takes3 values ('55743', 'MU-199', 'A', 'Spring', '2017', 'C+');
insert into takes3 values ('19992', 'HIS-351', 'A', 'Spring', '2017', 'A');
insert into takes3 values ('19993', 'HIS-351', 'A', 'Spring', '2017', 'A-');
insert into takes3 values ('19994', 'HIS-351', 'A', 'Spring', '2017', 'B');
insert into takes3 values ('19995', 'HIS-351', 'A', 'Spring', '2017', 'C+');
insert into takes3 values ('44554', 'PHY-101', 'A', 'Fall', '2016', 'B');
insert into takes3 values ('44555', 'PHY-101', 'A', 'Fall', '2016', 'A');
insert into takes3 values ('23122', 'FIN-201', 'A', 'Spring', '2017', 'C+');
insert into takes3 values ('23123', 'FIN-201', 'A', 'Spring', '2017', 'C+');
insert into takes3 values ('23124', 'FIN-201', 'A', 'Spring', '2017', 'C+');
insert into takes3 values ('23125', 'FIN-201', 'A', 'Spring', '2017', 'C+');

insert into course_eee values ('EE-181', 'Intro. to Digital Systems', 'EEE', '3');

insert into course_rest values ('BIO-101', 'Intro. to Biology', 'BBA', '4');
insert into course_rest values ('BIO-301', 'Genetics', 'BBA', '4');
insert into course_rest values ('BIO-399', 'Computational Biology', 'BBA', '3');
insert into course_rest values ('FIN-201', 'Investment Banking', 'IPE', '3');
insert into course_rest values ('HIS-351', 'World History', 'ME', '3');
insert into course_rest values ('MU-199', 'Music Video Production', 'Texile', '3');
insert into course_rest values ('PHY-101', 'Physical Principles', 'Architecture', '4');

insert into section_rest values ('BIO-101', 'A', 'Fall', '2016', 'Painter', '514', 'B');
insert into section_rest values ('BIO-301', 'A', 'Spring', '2017', 'Painter', '514', 'A');
insert into section_rest values ('FIN-201', 'A', 'Spring', '2017', 'Packard', '101', 'B');
insert into section_rest values ('HIS-351', 'A', 'Spring', '2017', 'Painter', '514', 'C');
insert into section_rest values ('MU-199', 'A', 'Spring', '2017', 'Packard', '101', 'D');
insert into section_rest values ('PHY-101', 'A', 'Fall', '2016', 'Watson', '100', 'A');

insert into section_eee values ('EE-181', 'A', 'Spring', '2016', 'Taylor', '3128', 'C');



commit;


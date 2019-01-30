clear screen;

DROP TABLE TEACHES CASCADE CONSTRAINTS;
DROP TABLE TIME_SLOT CASCADE CONSTRAINTS;
DROP TABLE CLASSROOM CASCADE CONSTRAINTS;
DROP TABLE DEPARTMENT CASCADE CONSTRAINTS;
DROP TABLE STUDENT CASCADE CONSTRAINTS;
DROP TABLE TEACHER CASCADE CONSTRAINTS;
DROP TABLE ADVISOR CASCADE CONSTRAINTS;
DROP TABLE COURSE CASCADE CONSTRAINTS;
DROP TABLE PREREQ CASCADE CONSTRAINTS;
DROP TABLE SECTION CASCADE CONSTRAINTS;
DROP TABLE TAKES CASCADE CONSTRAINTS;
CREATE TABLE department (
  dept_name varchar2(20) NOT NULL,
  building varchar2(20) DEFAULT NULL,
  budget int DEFAULT NULL,
  PRIMARY KEY (dept_name)
);
CREATE TABLE student (
  ID varchar2(20) NOT NULL,
  name varchar2(20) DEFAULT NULL,
  dept_name varchar2(20) DEFAULT NULL,
  tot_cred decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (ID),
  FOREIGN KEY (dept_name) REFERENCES department (dept_name)
);
CREATE TABLE teacher (
  ID varchar2(20) NOT NULL,
  name varchar2(20) DEFAULT NULL,
  dept_name varchar2(20) DEFAULT NULL,
  salary int DEFAULT NULL,
  PRIMARY KEY (ID),
  FOREIGN KEY (dept_name) REFERENCES department (dept_name)
);
CREATE TABLE course (
  course_id varchar2(20) NOT NULL,
  title varchar2(50) DEFAULT NULL,
  dept_name varchar2(20) DEFAULT NULL,
  credits int DEFAULT NULL,
  PRIMARY KEY (course_id),
  FOREIGN KEY (dept_name) REFERENCES department (dept_name)
);
CREATE TABLE advisor (
  s_id varchar2(20) NOT NULL,
  i_id varchar2(20) DEFAULT NULL,
  PRIMARY KEY (s_id),
  FOREIGN KEY (s_id) REFERENCES student (ID),
  FOREIGN KEY (i_id) REFERENCES teacher (ID)
);
CREATE TABLE teaches (
  ID varchar2(20) NOT NULL,
  course_id varchar2(20) NOT NULL,
  sec_id varchar2(20) NOT NULL,
  semester varchar2(20) NOT NULL,
  YEAR varchar2(20) NOT NULL,
  PRIMARY KEY (ID,course_id,sec_id,semester,YEAR),
  FOREIGN KEY (ID) REFERENCES teacher (ID)
);
CREATE TABLE takes (
  ID varchar2(20) NOT NULL,
  course_id varchar2(20) NOT NULL,
  sec_id varchar2(20) NOT NULL,
  semester varchar2(20) NOT NULL,
  year varchar2(20) NOT NULL,
  grade varchar2(20) NOT NULL,
  PRIMARY KEY (ID,course_id,sec_id,semester,year),
  FOREIGN KEY (ID) REFERENCES student (ID)
);
CREATE TABLE time_slot (
  time_slot_id varchar2(20) NOT NULL,
  day char(20) NOT NULL,
  start_time varchar2(20) NOT NULL,
  end_time varchar2(20) DEFAULT NULL,
  PRIMARY KEY (time_slot_id,day,start_time)
);

CREATE TABLE classroom (
  building varchar2(20) NOT NULL,
  room_no varchar2(20) NOT NULL,
  capacity int DEFAULT NULL,
  PRIMARY KEY (building,room_no)
);

CREATE TABLE prereq (
  course_id varchar2(20) NOT NULL,
  prereq_id varchar2(20) NOT NULL,
  PRIMARY KEY (course_id,prereq_id),
  FOREIGN KEY (course_id) REFERENCES course (course_id),
  FOREIGN KEY (prereq_id) REFERENCES course (course_id)
);
CREATE TABLE section (
  course_id varchar2(20) NOT NULL,
  sec_id varchar2(20) NOT NULL,
  semester varchar2(20) NOT NULL,
  year varchar2(20) NOT NULL,
  building varchar2(20) DEFAULT NULL,
  room_no varchar2(20) DEFAULT NULL,
  time_slot_id varchar2(20) DEFAULT NULL,
  PRIMARY KEY (course_id,sec_id,semester,year),
  FOREIGN KEY (building,room_no) REFERENCES classroom (building,room_no)
);


insert into classroom values ('Packard', '101', '500');
insert into classroom values ('Painter', '514', '10');
insert into classroom values ('Taylor', '3128', '70');
insert into classroom values ('Watson', '100', '30');
insert into classroom values ('Watson', '120', '50');
insert into department values ('BBA', 'Watson', '90000');
insert into department values ('CSE', 'Taylor', '100000');
insert into department values ('EEE', 'Taylor', '85000');
insert into department values ('IPE', 'Painter', '120000');
insert into department values ('ME', 'Painter', '50000');
insert into department values ('Texile', 'Packard', '80000');
insert into department values ('Architecture', 'Watson', '70000');
insert into course values ('BIO-101', 'Intro. to Biology', 'BBA', '4');
insert into course values ('BIO-301', 'Genetics', 'BBA', '4');
insert into course values ('BIO-399', 'Computational Biology', 'BBA', '3');
insert into course values ('CS-101', 'Intro. to Computer Science', 'CSE', '4');
insert into course values ('CS-190', 'Game Design', 'CSE', '4');
insert into course values ('CS-315', 'Robotics', 'CSE', '3');
insert into course values ('CS-319', 'Image Processing', 'CSE', '3');
insert into course values ('CS-347', 'Database System Concepts', 'CSE', '3');
insert into course values ('EE-181', 'Intro. to Digital Systems', 'EEE', '3');
insert into course values ('FIN-201', 'Investment Banking', 'IPE', '3');
insert into course values ('HIS-351', 'World History', 'ME', '3');
insert into course values ('MU-199', 'Music Video Production', 'Texile', '3');
insert into course values ('PHY-101', 'Physical Principles', 'Architecture', '4');
insert into teacher values ('12121', 'Nafi Chowdhury', 'IPE', '90000');
insert into teacher values ('76543', 'Nipu', 'IPE', '80000');
insert into teacher values ('76544', 'Alom', 'IPE', '80000');
insert into teacher values ('76545', 'Rita', 'IPE', '80000');
insert into teacher values ('76546', 'Meena', 'IPE', '80000');
insert into teacher values ('15151', 'Abdullah Al Mamum', 'Texile', '40000');
insert into teacher values ('15152', 'Orochimaru', 'Texile', '40000');
insert into teacher values ('15153', 'Fizza', 'Texile', '40000');
insert into teacher values ('15154', 'Razzak', 'Texile', '40000');
insert into teacher values ('15155', 'Chadni', 'Texile', '40000');
insert into teacher values ('32343', 'Al Said', 'ME', '60000');
insert into teacher values ('58583', 'Chowdhury Buyian', 'ME', '62000');
insert into teacher values ('58584', 'Purba', 'ME', '62000');
insert into teacher values ('58585', 'Tasnim', 'ME', '62000');
insert into teacher values ('58586', 'Sadia', 'ME', '62000');
insert into teacher values ('33456', 'Sami Ansari', 'Architecture', '87000');
insert into teacher values ('22222', 'Mizan Ahemd', 'Architecture', '95000');
insert into teacher values ('22223', 'Imtiyaz', 'Architecture', '95000');
insert into teacher values ('22224', 'Tuhin', 'Architecture', '95000');
insert into teacher values ('22225', 'Biva', 'Architecture', '95000');
insert into teacher values ('76766', 'Kamal Ahmed', 'BBA', '72000');
insert into teacher values ('76767', 'Tahiat', 'BBA', '72000');
insert into teacher values ('76768', 'Hinata', 'BBA', '72000');
insert into teacher values ('76769', 'Jesmin', 'BBA', '72000');
insert into teacher values ('76780', 'Hira', 'BBA', '72000');
insert into teacher values ('10101', 'Srinivasan', 'CSE', '65000');
insert into teacher values ('83821', 'Jamal Ahemd', 'CSE', '92000');
insert into teacher values ('45565', 'Kazi Muhammad', 'CSE', '75000');
insert into teacher values ('45566', 'Imrul Jubair', 'CSE', '75000');
insert into teacher values ('45567', 'Anika Saiyara', 'CSE', '75000');
insert into teacher values ('98345', 'Munmun', 'EEE', '80000');
insert into teacher values ('98346', 'Anika', 'EEE', '80000');
insert into teacher values ('98347', 'Rajon', 'EEE', '80000');
insert into teacher values ('98348', 'Imrul Kayes', 'EEE', '80000');
insert into teacher values ('98349', 'Foysal Kabir', 'EEE', '80000');
insert into section values ('BIO-101', 'A', 'Fall', '2016', 'Painter', '514', 'B');
insert into section values ('BIO-301', 'A', 'Spring', '2017', 'Painter', '514', 'A');
insert into section values ('CS-101', 'A', 'Fall', '2016', 'Packard', '101', 'H');
insert into section values ('CS-101', 'A', 'Spring', '2017', 'Packard', '101', 'F');
insert into section values ('CS-190', 'A', 'Spring', '2016', 'Taylor', '3128', 'E');
insert into section values ('CS-190', 'B', 'Spring', '2016', 'Taylor', '3128', 'A');
insert into section values ('CS-315', 'A', 'Spring', '2017', 'Watson', '120', 'D');
insert into section values ('CS-319', 'A', 'Spring', '2017', 'Watson', '100', 'B');
insert into section values ('CS-319', 'B', 'Spring', '2017', 'Taylor', '3128', 'C');
insert into section values ('CS-347', 'A', 'Fall', '2016', 'Taylor', '3128', 'A');
insert into section values ('EE-181', 'A', 'Spring', '2016', 'Taylor', '3128', 'C');
insert into section values ('FIN-201', 'A', 'Spring', '2017', 'Packard', '101', 'B');
insert into section values ('HIS-351', 'A', 'Spring', '2017', 'Painter', '514', 'C');
insert into section values ('MU-199', 'A', 'Spring', '2017', 'Packard', '101', 'D');
insert into section values ('PHY-101', 'A', 'Fall', '2016', 'Watson', '100', 'A');
insert into teaches values ('10101', 'CS-101', 'A', 'Fall', '2016');
insert into teaches values ('10101', 'CS-315', 'A', 'Spring', '2017');
insert into teaches values ('10101', 'CS-347', 'A', 'Fall', '2016');
insert into teaches values ('45565', 'CS-101', 'A', 'Spring', '2017');
insert into teaches values ('45565', 'CS-319', 'A', 'Spring', '2017');
insert into teaches values ('83821', 'CS-190', 'A', 'Spring', '2016');
insert into teaches values ('83821', 'CS-190', 'B', 'Spring', '2016');
insert into teaches values ('83821', 'CS-319', 'B', 'Spring', '2017');
insert into teaches values ('45566', 'CS-347', 'A', 'Fall', '2016');
insert into teaches values ('45567', 'CS-347', 'A', 'Fall', '2016');
insert into teaches values ('98345', 'EE-181', 'A', 'Spring', '2016');
insert into teaches values ('98346', 'EE-181', 'A', 'Spring', '2016');
insert into teaches values ('98347', 'EE-181', 'A', 'Spring', '2016');
insert into teaches values ('98348', 'EE-181', 'A', 'Spring', '2016');
insert into teaches values ('98349', 'EE-181', 'A', 'Spring', '2016');
insert into teaches values ('12121', 'FIN-201', 'A', 'Spring', '2017');
insert into teaches values ('76544', 'FIN-201', 'A', 'Spring', '2017');
insert into teaches values ('76545', 'FIN-201', 'A', 'Spring', '2017');
insert into teaches values ('76546', 'FIN-201', 'A', 'Spring', '2017');
insert into teaches values ('15151', 'MU-199', 'A', 'Spring', '2017');
insert into teaches values ('15152', 'MU-199', 'A', 'Spring', '2017');
insert into teaches values ('15153', 'MU-199', 'A', 'Spring', '2017');
insert into teaches values ('15154', 'MU-199', 'A', 'Spring', '2017');
insert into teaches values ('15155', 'MU-199', 'A', 'Spring', '2017');
insert into teaches values ('22222', 'PHY-101', 'A', 'Fall', '2016');
insert into teaches values ('22223', 'PHY-101', 'A', 'Fall', '2016');
insert into teaches values ('22224', 'PHY-101', 'A', 'Fall', '2016');
insert into teaches values ('22225', 'PHY-101', 'A', 'Fall', '2016');
insert into teaches values ('32343', 'HIS-351', 'A', 'Spring', '2017');
insert into teaches values ('58583', 'HIS-351', 'A', 'Spring', '2017');
insert into teaches values ('58584', 'HIS-351', 'A', 'Spring', '2017');
insert into teaches values ('58585', 'HIS-351', 'A', 'Spring', '2017');
insert into teaches values ('58586', 'HIS-351', 'A', 'Spring', '2017');
insert into teaches values ('76766', 'BIO-101', 'A', 'Fall', '2016');
insert into teaches values ('76766', 'BIO-301', 'A', 'Spring', '2017');
insert into teaches values ('76767', 'BIO-101', 'A', 'Fall', '2016');
insert into teaches values ('76768', 'BIO-301', 'A', 'Spring', '2017');
insert into teaches values ('76769', 'BIO-101', 'A', 'Fall', '2016');
insert into teaches values ('76780', 'BIO-301', 'A', 'Spring', '2017');
insert into student values ('10000', 'Sadia', 'CSE', '102');
insert into student values ('12345', 'Afrin', 'CSE', '32');
insert into student values ('19991', 'Purba', 'ME', '80');
insert into student values ('23121', 'Saima', 'IPE', '110');
insert into student values ('44553', 'Faiza', 'Architecture', '56');
insert into student values ('45678', 'Azwad', 'Architecture', '46');
insert into student values ('54321', 'Sakib', 'CSE', '54');
insert into student values ('55739', 'Rakib', 'Texile', '38');
insert into student values ('70557', 'Minhaj', 'Architecture', '0');
insert into student values ('76543', 'Rafa', 'CSE', '58');
insert into student values ('76653', 'Maliha', 'EEE', '60');
insert into student values ('98765', 'Senjuti', 'EEE', '98');
insert into student values ('98988', 'Rubana', 'BBA', '120');
insert into student values ('10001', 'Tanim', 'CSE', '23');
insert into student values ('10002', 'Sakib', 'CSE', '121');
insert into student values ('10003', 'Rifa', 'CSE', '196');
insert into student values ('10004', 'Afia', 'CSE', '127');
insert into student values ('10005', 'Islam', 'CSE', '102');
insert into student values ('10006', 'Nadia', 'CSE', '112');
insert into student values ('10007', 'Arko', 'CSE', '172');
insert into student values ('19992', 'Nuf', 'ME', '80');
insert into student values ('19993', 'Imtiyaz', 'ME', '100');
insert into student values ('19994', 'Orpa', 'ME', '180');
insert into student values ('19995', 'Mamun', 'ME', '112');
insert into student values ('23122', 'Labib', 'IPE', '110');
insert into student values ('23123', 'Labiba', 'IPE', '96');
insert into student values ('23124', 'Arefin', 'IPE', '112');
insert into student values ('23125', 'Fabliha', 'IPE', '118');
insert into student values ('44554', 'Rafsan', 'Architecture', '156');
insert into student values ('44555', 'Riyad', 'Architecture', '61');
insert into student values ('55740', 'Bapon', 'Texile', '119');
insert into student values ('55741', 'Dihan', 'Texile', '138');
insert into student values ('55742', 'Safia', 'Texile', '123');
insert into student values ('55743', 'Hafsha', 'Texile', '138');
insert into student values ('76654', 'Tabassum', 'EEE', '110');
insert into student values ('76655', 'Rita', 'EEE', '105');
insert into student values ('76656', 'Mita', 'EEE', '130');
insert into student values ('98989', 'Ruba', 'BBA', '120');
insert into student values ('98990', 'Hossain', 'BBA', '112');
insert into student values ('98991', 'Tasnim', 'BBA', '105');
insert into student values ('98992', 'Murad', 'BBA', '101');
insert into takes values ('10000', 'CS-101', 'A', 'Fall', '2016', 'A');
insert into takes values ('10000', 'CS-347', 'A', 'Fall', '2016', 'A-');
insert into takes values ('12345', 'CS-101', 'A', 'Fall', '2016', 'C');
insert into takes values ('12345', 'CS-190', 'B', 'Spring', '2016', 'A');
insert into takes values ('12345', 'CS-315', 'A', 'Spring', '2017', 'A');
insert into takes values ('12345', 'CS-347', 'A', 'Fall', '2016', 'A');
insert into takes values ('19991', 'HIS-351', 'A', 'Spring', '2017', 'B');
insert into takes values ('23121', 'FIN-201', 'A', 'Spring', '2017', 'C+');
insert into takes values ('44553', 'PHY-101', 'A', 'Fall', '2016', 'B-');
insert into takes values ('45678', 'CS-101', 'A', 'Spring', '2017', 'B+');
insert into takes values ('45678', 'CS-319', 'A', 'Spring', '2017', 'B');
insert into takes values ('54321', 'CS-101', 'A', 'Fall', '2016', 'A-');
insert into takes values ('54321', 'CS-190', 'B', 'Spring', '2016', 'B+');
insert into takes values ('55739', 'MU-199', 'A', 'Spring', '2017', 'A-');
insert into takes values ('76543', 'CS-101', 'A', 'Fall', '2016', 'A');
insert into takes values ('76543', 'CS-319', 'B', 'Spring', '2017', 'A');
insert into takes values ('76653', 'EE-181', 'A', 'Spring', '2016', 'C');
insert into takes values ('98765', 'CS-101', 'A', 'Fall', '2016', 'C-');
insert into takes values ('98765', 'CS-315', 'A', 'Spring', '2017', 'B');
insert into takes values ('98988', 'BIO-101', 'A', 'Fall', '2016', 'A');
insert into takes values ('98988', 'BIO-301', 'A', 'Spring', '2017', 'A+');
insert into takes values ('10001', 'CS-101', 'A', 'Fall', '2016', 'A');
insert into takes values ('10001', 'CS-347', 'A', 'Fall', '2016', 'A-');
insert into takes values ('10002', 'CS-101', 'A', 'Fall', '2016', 'C');
insert into takes values ('10003', 'CS-190', 'B', 'Spring', '2016', 'A');
insert into takes values ('10004', 'CS-315', 'A', 'Spring', '2017', 'A');
insert into takes values ('10005', 'CS-347', 'A', 'Fall', '2016', 'A');
insert into takes values ('10006', 'CS-101', 'A', 'Fall', '2016', 'A');
insert into takes values ('10007', 'CS-190', 'B', 'Spring', '2016', 'A');
insert into takes values ('98989', 'FIN-201', 'A', 'Spring', '2017', 'A');
insert into takes values ('98990', 'FIN-201', 'A', 'Spring', '2017', 'A');
insert into takes values ('98991', 'BIO-101', 'A', 'Spring', '2017', 'A-');
insert into takes values ('98992', 'BIO-301', 'A', 'Spring', '2017', 'C+');
insert into takes values ('55740', 'MU-199', 'A', 'Spring', '2017', 'A');
insert into takes values ('55741', 'MU-199', 'A', 'Spring', '2017', 'B+');
insert into takes values ('55742', 'MU-199', 'A', 'Spring', '2017', 'A-');
insert into takes values ('55743', 'MU-199', 'A', 'Spring', '2017', 'C+');
insert into takes values ('19992', 'HIS-351', 'A', 'Spring', '2017', 'A');
insert into takes values ('19993', 'HIS-351', 'A', 'Spring', '2017', 'A-');
insert into takes values ('19994', 'HIS-351', 'A', 'Spring', '2017', 'B');
insert into takes values ('19995', 'HIS-351', 'A', 'Spring', '2017', 'C+');
insert into takes values ('76654', 'EE-181', 'A', 'Spring', '2016', 'C+');
insert into takes values ('76655', 'EE-181', 'A', 'Spring', '2016', 'B');
insert into takes values ('76656', 'EE-181', 'A', 'Spring', '2016', 'A');
insert into takes values ('44554', 'PHY-101', 'A', 'Fall', '2016', 'B');
insert into takes values ('44555', 'PHY-101', 'A', 'Fall', '2016', 'A');
insert into takes values ('23122', 'FIN-201', 'A', 'Spring', '2017', 'C+');
insert into takes values ('23123', 'FIN-201', 'A', 'Spring', '2017', 'C+');
insert into takes values ('23124', 'FIN-201', 'A', 'Spring', '2017', 'C+');
insert into takes values ('23125', 'FIN-201', 'A', 'Spring', '2017', 'C+');
insert into advisor values ('10000', '45565');
insert into advisor values ('12345', '10101');
insert into advisor values ('23121', '76543');
insert into advisor values ('44553', '22222');
insert into advisor values ('45678', '22222');
insert into advisor values ('76543', '45565');
insert into advisor values ('76653', '98345');
insert into advisor values ('98765', '98345');
insert into advisor values ('98988', '76766');
INSERT INTO time_slot VALUES ('A','Sunday','8:00','8:50');
INSERT INTO time_slot VALUES('A','Monday','8:00','8:50');
INSERT INTO time_slot VALUES('A','Wednesday','8:00','8:50');
INSERT INTO time_slot VALUES('B','Saturday','9:00','9:50');
INSERT INTO time_slot VALUES('B','Monday','9:00','9:50');
INSERT INTO time_slot VALUES('B','Wednesday','9:00','9:50');
INSERT INTO time_slot VALUES('C','Saturday','11:00','11:50');
INSERT INTO time_slot VALUES('C','Monday','11:00','11:50');
INSERT INTO time_slot VALUES('C','Thrusday','11:00','11:50');
INSERT INTO time_slot VALUES('D','Sunday','13:00','13:50');
INSERT INTO time_slot VALUES('D','Monday','13:00','13:50');
INSERT INTO time_slot VALUES('D','Wednesday','13:00','13:50');
INSERT INTO time_slot VALUES('E','Tuesday','10:30','11:45');
INSERT INTO time_slot VALUES('E','Saturday','10:30','11:45');
INSERT INTO time_slot VALUES('F','Sunday','2:30','3:45');
INSERT INTO time_slot VALUES('F','Tuesday','2:30','3:45');
INSERT INTO time_slot VALUES('G','Monday','4:00','5:50');
INSERT INTO time_slot VALUES('G','Saturday','4:00','5:50');
INSERT INTO time_slot VALUES('G','Wednesday','4:00','5:50');
INSERT INTO time_slot VALUES('H','Sunday','10:00','12:30');
insert into prereq values ('BIO-301', 'BIO-101');
insert into prereq values ('BIO-399', 'BIO-101');
insert into prereq values ('CS-190', 'CS-101');
insert into prereq values ('CS-315', 'CS-101');
insert into prereq values ('CS-319', 'CS-101');
insert into prereq values ('CS-347', 'CS-101');
insert into prereq values ('EE-181', 'PHY-101');
commit;


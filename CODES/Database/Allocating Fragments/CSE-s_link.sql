clear screen;

DROP TABLE STUDENT_CSE;
DROP TABLE teacher_CSE;
DROP TABLE teaches_CSE;
DROP TABLE takes3 ;
DROP TABLE takes1_cse ;
DROP TABLE takes2_cse ;
DROP TABLE COURSE_cse;
DROP TABLE section_cse;
CREATE TABLE student_cse(
  ID varchar2(20) NOT NULL,
  name varchar2(20) DEFAULT NULL,
  dept_name varchar2(20) DEFAULT NULL,
  tot_cred decimal(5,2) DEFAULT NULL
);

CREATE TABLE teacher_CSE(
  ID varchar2(20) NOT NULL,
  name varchar2(20) DEFAULT NULL,
  dept_name varchar2(20) DEFAULT NULL,
  salary int DEFAULT NULL
);

CREATE TABLE teaches_CSE(
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

CREATE TABLE takes1_cse(
  ID varchar2(20) NOT NULL,
  course_id varchar2(20) NOT NULL,
  grade varchar2(20) NOT NULL
);

CREATE TABLE takes2_cse(
  ID varchar2(20) NOT NULL,
  course_id varchar2(20) NOT NULL,
  sec_id varchar2(20) NOT NULL,
  semester varchar2(20) NOT NULL,
  year varchar2(20) NOT NULL
);

CREATE TABLE course_cse (
  course_id varchar2(20) NOT NULL,
  title varchar2(50) DEFAULT NULL,
  dept_name varchar2(20) DEFAULT NULL,
  credits int DEFAULT NULL
);

CREATE TABLE section_cse (
  course_id varchar2(20) NOT NULL,
  sec_id varchar2(20) NOT NULL,
  semester varchar2(20) NOT NULL,
  year varchar2(20) NOT NULL,
  building varchar2(20) DEFAULT NULL,
  room_no varchar2(20) DEFAULT NULL,
  time_slot_id varchar2(20) DEFAULT NULL
);

insert into teacher_CSE values ('10101', 'Srinivasan', 'CSE', '65000');
insert into teacher_CSE values ('83821', 'Jamal Ahemd', 'CSE', '92000');
insert into teacher_CSE values ('45565', 'Kazi Muhammad', 'CSE', '75000');
insert into teacher_CSE values ('45566', 'Imrul Jubair', 'CSE', '75000');
insert into teacher_CSE values ('45567', 'Anika Saiyara', 'CSE', '75000');

insert into teaches_CSE values ('10101', 'CS-101', 'A', 'Fall', '2016');
insert into teaches_CSE values ('10101', 'CS-315', 'A', 'Spring', '2017');
insert into teaches_CSE values ('10101', 'CS-347', 'A', 'Fall', '2016');
insert into teaches_CSE values ('45565', 'CS-101', 'A', 'Spring', '2017');
insert into teaches_CSE values ('45565', 'CS-319', 'A', 'Spring', '2017');
insert into teaches_CSE values ('83821', 'CS-190', 'A', 'Spring', '2016');
insert into teaches_CSE values ('83821', 'CS-190', 'B', 'Spring', '2016');
insert into teaches_CSE values ('83821', 'CS-319', 'B', 'Spring', '2017');
insert into teaches_CSE values ('45566', 'CS-347', 'A', 'Fall', '2016');
insert into teaches_CSE values ('45567', 'CS-347', 'A', 'Fall', '2016');

insert into student_cse values ('10000', 'Sadia', 'CSE', '102');
insert into student_cse values ('12345', 'Afrin', 'CSE', '32');
insert into student_cse values ('54321', 'Sakib', 'CSE', '54');
insert into student_cse values ('76543', 'Rafa', 'CSE', '58');
insert into student_cse values ('10001', 'Tanim', 'CSE', '23');
insert into student_cse values ('10002', 'Sakib', 'CSE', '121');
insert into student_cse values ('10003', 'Rifa', 'CSE', '196');
insert into student_cse values ('10004', 'Afia', 'CSE', '127');
insert into student_cse values ('10005', 'Islam', 'CSE', '102');
insert into student_cse values ('10006', 'Nadia', 'CSE', '112');
insert into student_cse values ('10007', 'Arko', 'CSE', '172');

insert into takes1_cse values ('10000', 'CS-101','A');
insert into takes1_cse values ('10000', 'CS-347','A-');
insert into takes1_cse values ('12345', 'CS-101','C');
insert into takes1_cse values ('12345', 'CS-190', 'A');
insert into takes1_cse values ('12345', 'CS-315', 'A');
insert into takes1_cse values ('12345', 'CS-347','A');
insert into takes1_cse values ('45678', 'CS-101', 'B+');
insert into takes1_cse values ('45678', 'CS-319', 'B');
insert into takes1_cse values ('54321', 'CS-101','A-');
insert into takes1_cse values ('54321', 'CS-190', 'B+');
insert into takes1_cse values ('76543', 'CS-101','A');
insert into takes1_cse values ('76543', 'CS-319', 'A');
insert into takes1_cse values ('98765', 'CS-101','C-');
insert into takes1_cse values ('98765', 'CS-315', 'B');
insert into takes1_cse values ('10001', 'CS-101','A');
insert into takes1_cse values ('10001', 'CS-347','A-');
insert into takes1_cse values ('10002', 'CS-101','C');
insert into takes1_cse values ('10003', 'CS-190', 'A');
insert into takes1_cse values ('10004', 'CS-315', 'A');
insert into takes1_cse values ('10005', 'CS-347','A');
insert into takes1_cse values ('10006', 'CS-101','A');
insert into takes1_cse values ('10007', 'CS-190', 'A');

insert into takes2_cse values ('10000', 'CS-101', 'A', 'Fall', '2016');
insert into takes2_cse values ('10000', 'CS-347', 'A', 'Fall', '2016');
insert into takes2_cse values ('12345', 'CS-101', 'A', 'Fall', '2016');
insert into takes2_cse values ('12345', 'CS-190', 'B', 'Spring', '2016');
insert into takes2_cse values ('12345', 'CS-315','A', 'Spring', '2017');
insert into takes2_cse values ('12345', 'CS-347','A', 'Fall', '2016');

insert into takes2_cse values ('45678', 'CS-101','A', 'Spring', '2017');
insert into takes2_cse values ('45678', 'CS-319','A', 'Spring', '2017');
insert into takes2_cse values ('54321', 'CS-101','A', 'Fall', '2016');
insert into takes2_cse values ('54321', 'CS-190','B', 'Spring', '2016');
insert into takes2_cse values ('76543', 'CS-101','A', 'Fall', '2016');
insert into takes2_cse values ('76543', 'CS-319', 'B', 'Spring', '2017');
insert into takes2_cse values ('98765', 'CS-101','A', 'Fall', '2016');
insert into takes2_cse values ('98765', 'CS-315', 'A', 'Spring', '2017');
insert into takes2_cse values ('10001', 'CS-101','A', 'Fall', '2016');
insert into takes2_cse values ('10001', 'CS-347','A', 'Fall', '2016');
insert into takes2_cse values ('10002', 'CS-101','A', 'Fall', '2016');
insert into takes2_cse values ('10003', 'CS-190','B', 'Spring', '2016');
insert into takes2_cse values ('10004', 'CS-315','A', 'Spring', '2017');
insert into takes2_cse values ('10005', 'CS-347','A', 'Fall', '2016');
insert into takes2_cse values ('10006', 'CS-101','A', 'Fall', '2016');
insert into takes2_cse values ('10007', 'CS-190','B', 'Spring', '2016');

insert into course_cse values ('CS-101', 'Intro. to Computer Science', 'CSE', '4');
insert into course_cse values ('CS-190', 'Game Design', 'CSE', '4');
insert into course_cse values ('CS-315', 'Robotics', 'CSE', '3');
insert into course_cse values ('CS-319', 'Image Processing', 'CSE', '3');
insert into course_cse values ('CS-347', 'Database System Concepts', 'CSE', '3');

insert into section_cse values ('CS-101', 'A', 'Fall', '2016', 'Packard', '101', 'H');
insert into section_cse values ('CS-101', 'A', 'Spring', '2017', 'Packard', '101', 'F');
insert into section_cse values ('CS-190', 'A', 'Spring', '2016', 'Taylor', '3128', 'E');
insert into section_cse values ('CS-190', 'B', 'Spring', '2016', 'Taylor', '3128', 'A');
insert into section_cse values ('CS-315', 'A', 'Spring', '2017', 'Watson', '120', 'D');
insert into section_cse values ('CS-319', 'A', 'Spring', '2017', 'Watson', '100', 'B');
insert into section_cse values ('CS-319', 'B', 'Spring', '2017', 'Taylor', '3128', 'C');
insert into section_cse values ('CS-347', 'A', 'Fall', '2016', 'Taylor', '3128', 'A');
commit;


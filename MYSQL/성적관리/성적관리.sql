CREATE DATABASE schoolDB2;
DROP DATABASE schoolDB2;
USE schooldb2;
CREATE TABLE tbl_student (
st_num	VARCHAR(10)		PRIMARY KEY,
st_name	VARCHAR(8)	NOT NULL	,
st_dept	VARCHAR(8)	NOT NULL	,
st_grade	VARCHAR(3)	NOT NULL,	
st_tel	VARCHAR(20)		,
st_addr	VARCHAR(250)		

);

CREATE TABLE tbl_subject (
    su_code	VARCHAR(10) PRIMARY KEY,
    su_name	VARCHAR(8)	NOT NULL	   
);

CREATE TABLE tbl_code(
r_stcode	VARCHAR(10)	NOT NULL,
r_sucode	VARCHAR(10)	NOT NULL,
r_score	VARCHAR(3)	NOT NULL,
 CONSTRAINT ah_pk PRIMARY KEY(r_stcode, r_sucode)	

);
SELECT * FROM tbl_student;
SELECT * FROM tbl_subject;
SELECT * FROM tbl_code;


ALTER TABLE tbl_code
ADD CONSTRAINT fk_sucode
FOREIGN KEY(r_sucode)
REFERENCES tbl_subject(su_code);

ALTER TABLE tbl_code
ADD CONSTRAINT fk_stcode
FOREIGN KEY(r_stcode)
REFERENCES tbl_student(st_num);



SELECT st_name, su_code ,r_score FROM tbl_student
    JOIN tbl_code
        ON st_num = r_stcode
    JOIN tbl_subject
        ON su_code = r_sucode;
        

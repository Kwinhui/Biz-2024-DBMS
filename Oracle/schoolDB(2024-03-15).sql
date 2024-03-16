DROP TABLE tbl_student;
CREATE TABLE tbl_student (
    st_num	VARCHAR2(5)		PRIMARY KEY,
    st_name	nVARCHAR2(8)	NOT NULL	,
    st_dept	nVARCHAR2(20)	NOT NULL	,
    st_grade	NUMBER	NOT NULL	,
    st_tel	VARCHAR2(20)		,
    st_addr	VARCHAR(250)		

);
DROP TABLE tbl_score;
CREATE TABLE tbl_score(
    sc_num	VARCHAR2(5)		PRIMARY KEY,

    sc_korea	NUMBER	NOT NULL,
sc_english	NUMBER	NOT NULL,
sc_math	NUMBER	NOT NULL,
sc_music	NUMBER	NOT NULL,
sc_art	NUMBER	NOT NULL,
sc_sw	NUMBER	NOT NULL,
sc_db	NUMBER	NOT NULL

);
DROP TABLE tbl_subject;
CREATE TABLE tbl_subject (
    su_code	VARCHAR2(10) PRIMARY KEY,
    su_name	nVARCHAR2(8)	NOT NULL	   
);


SELECT * FROM tbl_student;
SELECT * FROM tbl_score;

SELECT * FROM tbl_subject;



SELECT st_num, st_name, su_name AS subject, score
    FROM (SELECT
    st_num, st_name, sc_num, sc_korea, sc_english, sc_math, sc_music, sc_art, sc_sw, sc_db
    FROM tbl_student
    JOIN
    tbl_score ON tbl_student.st_num = tbl_score.sc_num) 
    UNPIVOT
    (score FOR su_name IN (sc_korea, sc_english, sc_math, sc_music, sc_art, sc_sw, sc_db));

DROP TABLE tbl_code;

CREATE TABLE tbl_code (
    r_stcode	VARCHAR2(10)	NOT NULL,
    r_sucode	VARCHAR2(10)	NOT NULL,
    
    CONSTRAINT ah_pk PRIMARY KEY(r_stcode, r_sucode)	,
    r_score	VARCHAR2(3)	NOT NULL
);


SELECT * FROM tbl_subject;

SELECT * FROM tbl_code;

ALTER TABLE tbl_code
ADD CONSTRAINT fk_stcode
FOREIGN KEY(r_stcode)
REFERENCES tbl_student(st_num);

ALTER TABLE tbl_code
ADD CONSTRAINT fk_sucode
FOREIGN KEY(r_sucode)
REFERENCES tbl_subject(su_code);


SELECT st_name, su_name ,r_score FROM tbl_student
    JOIN tbl_code
        ON st_num = r_stcode
    JOIN tbl_subject
        ON su_code = r_sucode;


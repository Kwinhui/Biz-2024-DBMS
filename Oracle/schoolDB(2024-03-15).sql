DROP TABLE tbl_student;
CREATE TABLE tbl_student (
    st_num	VARCHAR2(5)		PRIMARY KEY,
    st_name	nVARCHAR2(8)	NOT NULL	,
    st_dept	nVARCHAR2(20)	NOT NULL	,
    st_grade	NUMBER	NOT NULL	,
    st_tel	VARCHAR2(20)		,
    st_addr	VARCHAR(250)		

);
DROP TABLE tbl_subject;
CREATE TABLE tbl_subject (
    s_num	VARCHAR2(5)		PRIMARY KEY,

    s_korea	NUMBER	NOT NULL,
s_english	NUMBER	NOT NULL,
s_math	NUMBER	NOT NULL,
s_music	NUMBER	NOT NULL,
s_art	NUMBER	NOT NULL,
s_sw	NUMBER	NOT NULL,
s_db	NUMBER	NOT NULL

);

SELECT * FROM tbl_student;


    


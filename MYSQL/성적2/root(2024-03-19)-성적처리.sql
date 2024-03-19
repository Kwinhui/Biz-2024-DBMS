-- 성적데이터 처리
CREATE DATABASE scoreDB;
USE scoreDB;
CREATE TABLE tbl_temp_score (
s_stnum	VARCHAR(5),
s_kor	VARCHAR(10),
s_eng	VARCHAR(10),
s_math	VARCHAR(10),
s_music	VARCHAR(10),
s_art	VARCHAR(10),
s_sw	VARCHAR(10),
s_db	VARCHAR(10)
);
SELECT COUNT(*) FROM tbl_temp_score;


SELECT s_stnum,'국어', s_kor FROM tbl_temp_score
UNION
SELECT s_stnum,'영어', s_eng FROM tbl_temp_score
UNION
SELECT s_stnum, '수학',s_math FROM tbl_temp_score
UNION
SELECT s_stnum, '음악',s_music FROM tbl_temp_score
UNION
SELECT s_stnum, '미술',s_art FROM tbl_temp_score
UNION
SELECT s_stnum, '소프트웨어공학',s_sw FROM tbl_temp_score
UNION
SELECT s_stnum, '데이터베이스',s_db FROM tbl_temp_score;

CREATE TABLE tbl_score (
		s_stnum	VARCHAR(5),
		s_subject	VARCHAR(10),	
		s_score	INT	NOT NULL ,
		PRIMARY KEY(s_stnum,s_subject)	
);



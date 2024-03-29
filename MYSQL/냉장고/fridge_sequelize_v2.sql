DROP DATABASE fridgeDB;
CREATE DATABASE fridgeDB;
USE fridgeDB;

CREATE TABLE tbl_fridge(
f_seq	INT	AUTO_INCREMENT	PRIMARY KEY,
f_name	VARCHAR(10)	NOT NULL	,
f_div	VARCHAR(4)		,
f_memo	VARCHAR(125)	,	
f_photo	VARCHAR(255)	,	
f_image_name	VARCHAR(255),		
f_image_origin_name	VARCHAR(255)			
);

CREATE TABLE tbl_product(
p_seq	INT	AUTO_INCREMENT	PRIMARY KEY,
p_fseq	INT	NOT NULL	,
p_name	VARCHAR(125)	NOT NULL	,
p_exdate	VARCHAR(12)	NOT NULL	,
p_quan	INT	NOT NULL	,
p_date	VARCHAR(12)	NOT NULL	,
p_memo	VARCHAR(125)			
);

CREATE TABLE tbl_shopping (
s_seq	INT	AUTO_INCREMENT	PRIMARY KEY,
s_name	VARCHAR(125)	NOT NULL	,
s_quan	INT	NOT NULL	,
s_ox	INT		
);

CREATE TABLE tbl_user(
u_id	VARCHAR(35)		PRIMARY KEY,
u_pw	VARCHAR(255)	NOT NULL	,
u_name	VARCHAR(35)	NOT NULL	,
u_role	VARCHAR(35)	NOT NULL	
);

DROP TABLE tbl_user;

-- 외래키 설정
ALTER TABLE tbl_product
ADD CONSTRAINT FK_PSEQ
FOREIGN KEY (p_fseq)
REFERENCES tbl_fridge(f_seq);


-- ps_role 추가
INSERT INTO tbl_user(u_name, u_id, u_pw , u_role) VALUES('운영자', 'fridge', 'fridge','USER');


-- 임시 데이터
INSERT INTO tbl_product
(p_seq , p_fseq, p_name , p_exdate, p_quan, p_date, p_memo)
VALUE ('0001','1','당근','2024-10-01','3','2024-01-30', '당근임');


INSERT INTO tbl_product
(p_seq , p_fseq, p_name , p_exdate, p_quan, p_date, p_memo)
VALUE ('0002', '1', '도토리','2024-10-01','3','2024-01-30', '도토리임');
INSERT INTO tbl_product
(p_seq , p_fseq, p_name , p_exdate, p_quan, p_date, p_memo)
VALUE ('0003', '2','감자','2024-10-01','3','2024-01-30', '감자임');

INSERT INTO tbl_product
(p_seq , p_fseq, p_name , p_exdate, p_quan, p_date, p_memo)
VALUE ('0004', '1','사과','2024-10-01','3','2024-01-30', '사과임');

INSERT INTO tbl_product
(p_seq , p_fseq, p_name , p_exdate, p_quan, p_date, p_memo)
VALUE ('0005', '2','대파','2024-10-01','3','2024-01-30', '대파임');

INSERT INTO tbl_product
(p_seq , p_fseq, p_name , p_exdate, p_quan, p_date, p_memo)
VALUE ('0006', '2','마늘','2024-10-01','5','2024-01-30', '마늘임');

INSERT INTO tbl_product
(p_seq , p_fseq, p_name , p_exdate, p_quan, p_date, p_memo)
VALUE ('0007', '1', '토마토','2024-10-01','50','2024-01-30', '토마토임');

INSERT INTO tbl_product
(p_seq , p_fseq, p_name , p_exdate, p_quan, p_date, p_memo)
VALUE ('0008', '2', '커피','2024-10-01','50','2024-01-30', '커피임');

INSERT INTO tbl_product
(p_seq , p_fseq, p_name , p_exdate, p_quan, p_date, p_memo)
VALUE ('0009', '2', '바나나','2024-02-13','50','2024-01-30', '바나나임');

INSERT INTO tbl_product
(p_seq , p_fseq, p_name , p_exdate, p_quan, p_date, p_memo)
VALUE ('0010', '1', '생수','2024-02-08','50','2024-01-30', '물임');

INSERT INTO tbl_product
(p_seq , p_fseq, p_name , p_exdate, p_quan, p_date, p_memo)
VALUE ('0011', '1', '비요뜨','2024-02-17','50','2024-01-30', '비요뜨임');

INSERT INTO tbl_product
(p_seq , p_fseq, p_name , p_exdate, p_quan, p_date, p_memo)
VALUE ('0012', '2', '고구마','2024-02-10','50','2024-01-30', '고구마임');

SELECT * FROM tbl_product;
SELECT * FROM tbl_fridge;

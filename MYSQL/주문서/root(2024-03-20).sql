-- 주문서 프로젝트

/*
 주문서 excep 파일의 고객정보, 상품정보
 데이터를 참조하여
 1. 주문원장의 "상품코드" 칼럼에 데이터를 분리 후,
 2. "주문내역" 테이블로 이전하는 정규화 실행
 3. 주문원장, 주문내역, 고객정보, 상품정보
	4가지 Entity 의 개념적 모델링
 4. 논리적, 물리적 모델링
 5. Table 명세 생성
 
 Database : tmp_orderDB
*/

CREATE DATABASE tmp_orderDB;
USE tmp_orderDB;
CREATE TABLE tbl_tmp_order (
o_seq	VARCHAR(10)		PRIMARY KEY,
o_date	VARCHAR(10)		,
o_code	VARCHAR(10)		,
o_name	VARCHAR(10)		,
o_tel	VARCHAR(15)		,
o_stcode1	VARCHAR(10)	,	
o_stcode2	VARCHAR(10)	,	
o_stcode3	VARCHAR(10)		


);

SELECT * FROM tbl_tmp_order;




SELECT o_seq AS 코드, o_code, o_date, o_stcode1 AS 상품코드
FROM tbl_tmp_order WHERE o_stcode1 
IS NOT NULL GROUP BY o_seq, o_code, o_date, o_stcode1
UNION
SELECT o_seq AS 코드, o_code, o_date, o_stcode2 AS 상품코드
FROM tbl_tmp_order WHERE o_stcode3 
IS NOT NULL GROUP BY o_seq,o_code, o_date,  o_stcode2
UNION
SELECT o_seq AS 코드,o_code, o_date,  o_stcode3 AS 상품코드
FROM tbl_tmp_order WHERE o_stcode3 
IS NOT NULL GROUP BY o_seq,o_code, o_date,  o_stcode3    ;

DROP TABLE tbl_order;
CREATE table tbl_order (
o_seq	VARCHAR(10)		,
o_code	VARCHAR(10)		,
o_date	VARCHAR(10)		,
o_pcode	VARCHAR(10)		,
CONSTRAINT o_pk PRIMARY KEY(o_code,o_pcode)			

);


CREATE TABLE tbl_custom (
c_code	VARCHAR(10)		PRIMARY KEY,
c_name	VARCHAR(10)		,
c_tel	VARCHAR(15)		

);

CREATE TABLE tbl_product (
p_opcode	VARCHAR(10)		PRIMARY KEY,
p_name	VARCHAR(10)		,
p_code	VARCHAR(10)		,
p_price	INT		

);




SELECT * FROM tbl_order;
SELECT * FROM tbl_custom;
SELECT * FROM tbl_product;
DELETE FROM tbl_order
WHERE o_seq = "주문번호" AND o_code = "고객코드" AND o_date = "거래일자" AND o_pcode = "상품코드";

ALTER TABLE tbl_order
ADD CONSTRAINT fk_opcode
FOREIGN KEY(o_pcode)
REFERENCES tbl_product(p_opcode);


ALTER TABLE tbl_order
ADD CONSTRAINT fk_ocode
FOREIGN KEY(o_code)
REFERENCES tbl_custom(c_code);

SELECT COUNT(*) FROM tbl_order;
SELECT COUNT(*) FROM tbl_product;
SELECT COUNT(*) FROM tbl_custom;

SELECT o_seq, p_opcode,c_code 
	FROM tbl_order
		JOIN tbl_product
			ON o_pcode = p_opcode
		JOIN tbl_custom
			ON o_code = c_code;
	
	


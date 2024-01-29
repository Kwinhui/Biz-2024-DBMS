CREATE DATABASE booksdb;
USE booksdb;

CREATE TABLE tbl_books (
	bk_isbn			VARCHAR(13)			PRIMARY KEY,
	bk_title		VARCHAR(50)			NOT NULL	,
	bk_author		VARCHAR(50)			NOT NULL	,
	bk_publisher	VARCHAR(50)		,
	bk_price		INT(10)				NOT NULL	,
	bk_discount		INT(10)		,
	bk_description	VARCHAR(4000)		,
	bk_pubdate		VARCHAR(10)		,
	bk_link			VARCHAR(125)	,	
	bk_image		VARCHAR(125)		

);

CREATE TABLE tbl_members (
	m_id		VARCHAR(20)		PRIMARY KEY,
	m_password	VARCHAR(125)	NOT NULL,
	m_email		VARCHAR(125)	NOT NULL,
	m_name		VARCHAR(12)		NOT NULL	
);
INSERT INTO tbl_members (m_id, m_password, m_email, m_name)
VALUES ('n96js', '1234', 'n96js@naver.com', '김승희');
SELECT * FROM tbl_members



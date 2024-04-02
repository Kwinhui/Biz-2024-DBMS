CREATE DATABASE orderDB2;
USE orderDB2;
DROP TABLE tbl_iolist;
CREATE TABLE tbl_iolist(
io_seq	INT	AUTO_INCREMENT	PRIMARY KEY,
io_date DATE	DEFAULT		CURRENT_DATE,
io_time	TIME DEFAULT CURRENT_TIME,
io_pname	VARCHAR(30)	,	
io_input	VARCHAR(1)	,	
io_iprice	INT		,
io_oprice	INT		,
io_quan	INT		,
io_total	INT		

);

INSERT INTO tbl_iolist (io_seq, io_date, io_time,
 io_pname, io_input, io_iprice, io_oprice, io_quan)
 VALUES
 ("1", "2020-03-22", "09:30:00", "후드티", "1", "12000", "15000", "5"),
 ("2", "2020-03-24", "12:00:00", "롱팬츠", "1", "49000", "57000", "5"),
("3", "2020-03-29", "11:22:30", "후드티", "2",    "20000", "27000", "1"),
("4", "2020-04-01", "15:23:12", "카디건", "1",   "59000", "70000", "10"),
("5", "2020-04-01", "17:10:22", "롱팬츠", "2",   "68000", "80000", "1"),
("6", "2020-04-02", "11:10:11", "패딩자켓", "1", "115000", "150000", "6"),
("7", "2020-04-10", "09:10:22", "롱패딩", "1",   "299000", "380000", "3"),
("8", "2020-04-10", "12:00:01", "패딩자켓", "2", "190000", "250000", "1"),
("9", "2020-04-11", "15:12:00", "프린트T", "1",  "15000", "25000", "20");

SELECT * FROM tbl_iolist; 

    SELECT 
        io_seq, 
        io_date, 
        io_time, 
        io_pname, 
        (CASE 
            WHEN io_input = '1' THEN '매입'
            ELSE '매출'
        END ) io_input ,
        io_iprice, 
        io_oprice, 
        io_quan, 
        io_total
        
    FROM tbl_iolist;
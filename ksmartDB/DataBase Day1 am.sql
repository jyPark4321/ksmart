/*
	데이터 베이스 구축 절차
	1.데이터베이스를 만들자.
	2.테이블을 만들자.
	3.데이터를 다룰 수 있다.
*/
-- 데이터 베이스를 만들자.
-- CREATE DATABASE ksmart51db;
-- mysql CREATE USER 'ksmart51id'@'%'IDENTIFIED BY 'ksmart51pw';
-- GRANT ALL PRIVILEGES ON ksmart51db.* TO 'ksmart51id'@'%';
-- FLUSH PRIVILEGES;
-- 테이블 만들기
 CREATE TABLE tb_user(
	u_id VARCHAR(100) NOT NULL PRIMARY KEY COMMENT '사용자 아이디',
	u_pw VARCHAR(100) NOT NULL COMMENT '사용자 비번',
	u_name VARCHAR(100) NOT NULL COMMENT '이름',
	u_birth DATE COMMENT '생년월일',
	u_addr VARCHAR(100) NOT NULL COMMENT '주소',
	u_mobile1 VARCHAR(100) NOT NULL COMMENT '연락처1',
	u_mobile2 VARCHAR(100) NOT NULL COMMENT '연락처2',
	u_date DATE COMMENT '등록일자'
);




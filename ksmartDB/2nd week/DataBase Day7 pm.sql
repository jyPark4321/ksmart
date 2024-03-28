/*
	회원의 아이디와 비밀번호를 입력하면 회원의 이메일을 조회하는 프로시저 생성
*/
DELIMITER $$
CREATE PROCEDURE sp_member_email(IN mem_id VARCHAR(20),mem_pw VARCHAR(20))
BEGIN
	-- SQL문을 작성

	SELECT
		m.m_email
	FROM
		tb_member AS m
	WHERE
		m.m_id = mem_id
		AND
		m.m_pw = mem_pw;
END $$

DELIMITER ;

CALL sp_member_email('id001','pw001');

-- CASE문 연습

SELECT
	g.g_code,
	g.g_name,
	(CASE
		WHEN g.g_price > 500000 THEN 'Expensive'
		WHEN g.g_price > 100000	THEN 'Cheap'
		ELSE 'Normal' 
	END) AS '상품 가치'
FROM
	tb_goods AS g
ORDER BY g.g_price DESC;

-- CASE문 연습2
SELECT
	c.Name,
	c.CountryCode,
	(CASE c.CountryCode
		WHEN 'USA' THEN 'G2'
		WHEN 'CHN' THEN 'G2'
		ELSE 'Other contries'
	END) AS 'Group of tow'
FROM
	city AS c;
	
/*
	회원의 아이디를 입력 받아 회원의 권한을 조회하는 프로시저를 생성
	IF문 사용해서
*/

ksmart51dbDELIMITER $$
CREATE PROCEDURE mem_power(IN mem_id VARCHAR(10))
BEGIN
	DECLARE mem_lv INT DEFAULT 0;
	
	SELECT
		m.m_level INTO mem_lv
	FROM
		tb_member AS m
	WHERE
		m.m_id = mem_id;
		
	IF(mem_lv = 1) THEN 
		SELECT '관리자' AS '권한';
	ELSEIF(mem_lv = 2) THEN 
		SELECT '판매자' AS '권한';
	ELSE  
		SELECT '구매자' AS '권한';
	END IF;
	
END $$
DELIMITER;
	
CALL mem_power('id001');


/*
	회원의 아이디를 입력하면 회원탈퇴(정보 삭제)
	1.판매자일 경우
		tb_login의 login_id 삭제 
		tb_goods의 g_code 삭제
		tb_order의 o_id삭제
	2.
	3.
*/
DROP PROCEDURE IF EXISTS sp_member_delete
DELIMITER $$
CREATE PROCEDURE sp_member_delete(IN mem_id VARCHAR(20))
BEGIN
	DECLARE
	SELECT
		m.m_level




	-- 판매자인 경우 판매자가 등록한 상품 데이터가 주문 테이블에 있어서
	-- 주문 테이블의 데이터 삭제 --> 상품 삭제 
	DELETE l FROM tb_member AS m INNER JOIN tb_login AS l ON l.login_id = m.m_id WHERE  m.m_id = mem_id;
	DELETE o FROM tb_goods AS g INNER JOIN tb_order AS o ON g.g_code = o.o_g_code WHERE g.g_seller_id = mem_id;
	DELETE  FROM tb_goods AS g WHERE g.g_seller_id = mem_id;
	-- 구매자인 경우 
	IF
		DELETE o FROM tb_order AS o WHERE o_id = mem_id;
	END IF






	DELETE  FROM tb_member AS m WHERE m.m_id = mem_id;
	
	
	
END $$

DELIMITER ;

CALL sp_member_delete('id007');
-- 판매자인 id007의 회원탈퇴

-- 구매자인 id008의 회원탈퇴
SELECT
	g.*
FROM
 tb_order AS o
 INNER join
 tb_goods AS g
 ON
 o.o_g_code = g.g_code
 WHERE
 	o_id = 'id008'




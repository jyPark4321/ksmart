SET GLOBAL log_bin_trust_function_creators = 1;

/*
	주문 테이블에서 상품 판매 이익을 구하는 함수를 만들어서 활용
*/

DELIMITER $$
CREATE FUNCTION sf_profit(goods_price INT)
RETURNS INT

BEGIN
	-- SQL문을 작성
	DECLARE myProfit INT;
	
	IF goods_price >= 50000 THEN
		SET myProfit = goods_price * 0.1;
		...
	END IF;
	
	RETURN myProfit;
END $$

DELIMITER ;

SELECT
	member_id,ksmart51db
	sale_price,
	sf_profit(sale_price) AS 'my profit'
FROM
	R ORDER;
	
/*
	두 수의 합을 구하는 함수를 만들어보세요	
*/
DROP FUNCTION IF EXISTS sf_sum
DELIMITER $$
CREATE FUNCTION sf_sum (num1 INT,num2 INT) -- 함수 이름과 매개변수, 데이터 타입
RETURNS INT -- 반환할 데이터 타입
BEGIN
	DECLARE mySum INT; 
	-- SQL문을 작성
	SET mySum := num1 + num2;
	RETURN mySUM;
END $$

DELIMITER ;

-- sf_sum 함수 활용
SELECT sf_sum(10,5) AS '두수의 합';

-- 회원의 이름을 입력했을 때, 이메일을 조회하는 함수.
-- 조회 결과가 없을 때, ' 조회 결과가 없습니다.' 라고 출력.
DROP FUNCTION IF EXISTS sf_mem_email
DELIMITER $$
CREATE FUNCTION sf_mem_email(mem_name VARCHAR(20))
RETURNS VARCHAR(20)
BEGIN
	DECLARE mem_email VARCHAR(20);
	
	SELECT CONCAT(m.m_name, ':', m.m_email) INTO mem_email
	FROM tb_member AS m
	WHERE m_name = mem_name;
	
	IF mem_email IS NULL THEN
		SET mem_email := '조회 결과가 없습니다.';
	END IF;	
	
	RETURN mem_email;
	
END $$
DELIMITER ;

SELECT sf_mem_email('홍02') AS 'email 조회 결과';

/*
	판매자의 아이디를 입력 받아 취급 상품 목록을 출력하는 함수 작성
	출력 결과는 한 줄로 조회 되도록.
*/
DROP FUNCTION IF EXISTS sf_seller_goods;
DELIMITER $$
CREATE FUNCTION sf_seller_goods(seller_id VARCHAR(200))
RETURNS VARCHAR(200)
BEGIN
	DECLARE goods_list VARCHAR(200);
	SELECT
	
		GROUP_CONCAT(DISTINCT g.g_name SEPARATOR ', ') INTO goods_list
	FROM
		tb_goods AS g
	WHERE
		g.g_seller_id = seller_id;
	
	RETURN goods_list;
	
END $$
DELIMITER ;


SELECT sf_seller_goods('id006')

/*
	도시 이름을 입력하면 다음과 같이 조회하는 함수 생성
	city name: seoul, country nmae: kor, city pop : 9981619
*/
DROP FUNCTION IF EXISTS city_information;
DELIMITER $$
CREATE FUNCTION city_information(c_name VARCHAR(200))
RETURNS VARCHAR(200)
BEGIN
	DECLARE city_info VARCHAR(200);
	SELECT
		CONCAT('city name : ',NAME,',',' country name: ',CountryCode,',',' city pop: ',	CAST(c.Population AS CHAR))
		 INTO city_info
	FROM
	city AS c
	WHERE
	c.Name = c_name;
	
	RETURN city_info;
	
END $$
DELIMITER ;

SELECT city_information('seoul') AS '출력결과';


	






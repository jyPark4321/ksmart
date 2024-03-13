/*
	날짜 및 시간 함수
	NOW() CURRENT_DATE() CURRENT_TIME() YEAR() MONTH();
*/ 
SELECT
	NOW(),
	CURRENT_DATE(),
	CURRENT_TIME(),
	YEAR(NOW()),
	MONTH(NOW()),
	ADDDATE('2024-03-13',INTERVAL 31 DAY),
	SUBDATE('2024-03-13',INTERVAL 31 DAY),
	DATEDIFF('2024-12-31',NOW());
/*
	기타함수
	VERSION, DATABASE
*/
SELECT
	VERSION(),
	DATABASE(),
	SLEEP(3),
	NOW();
	
/*
	형변환 (날짜)
*/

SELECT 
	DATE_FORMAT('20240313','%Y-%m-%d'),
	DATE_FORMAT('20240313','%y-%M-%D');
	
/*
	1.상품 테이블에서 전체 상품 가격의 합을 조회
	2.상품 테이블에서 판매자 별 판매 상품 가격 합계와 판매자 아이디 조회
	3.판매자 별 취급 상품 가격 합계가 300만보다 많은 판매자의 아이디, 금액 조회
	4.주문 테이블에서 최대 구매 수량, 최소 구매수량, 총 구매수량 조회
*/

-- 1.상품 테이블에서 전체 상품 가격의 합을 조회
SELECT
	SUM(g.g_price) AS '전체 상품 가격'
FROM
	tb_goods AS g;
	
-- 2.상품 테이블에서 판매자 별 판매 상품 가격 합계와 판매자 아이디 조회
SELECT
	g.g_seller_id AS '판매자 목록',
	SUM(g.g_price)AS '상품 가격 합계'
FROM
	tb_goods AS g
GROUP BY
	g.g_seller_id; 
	
-- 3.판매자 별 취급 상품 가격 합계가 300만보다 많은 판매자의 아이디, 금액 조회
SELECT
	g.g_seller_id,
	SUM(g.g_price)
FROM
	tb_goods AS g
GROUP BYworldworldworldworldworldworldworld
	g.g_seller_id
HAVING 
	SUM(g.g_price) > 3000000;
	
-- 4.주문 테이블에서 최대 구매 수량, 최소 구매수량, 총 구매수량 조회
SELECT
	MAX(o.o_amount) AS '최대 구매 수량',
	MIN(o.o_amount) AS '최소 구매 수량',
	SUM(o.o_amount) AS '총 구매 수량'
FROM
	tb_order AS o;
	
/* 윈도우 함수
*/
SELECT
	MAX(c.Population)
FROM
	city AS c
GROUP BY c.CountryCode

SELECT
	c.CountryCode,
	c.Population,
	MAX(c.Population) OVER(PARTITION BY c.CountryCode) 
FROM
	city AS c;
	
-- 
SELECT
	c.Name,
	ROW_NUMBER() OVER (ORDER BY c.Population) AS 'row_number',
	RANK() OVER (ORDER BY c.Population) AS 'RANK',
	DENSE_RANK() OVER (ORDER BY c.Population) AS 'DENSE_RANK'
FROM
	city AS c
WHERE
	c.CountryCode = 'KOR';

	
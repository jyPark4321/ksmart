-- JOIN
SELECT
	*
FROM
	tb_member AS m
	INNER JOIN
	tb_order AS o
	ON
	m.m_id = o.o_id;

-- 구매자 회원의 구매 수량, 구매자 아이디, 구매자 이름
/*
	1. 조회하려는 데이터가 어떤 테이블에 있는지?
	2. JOIN 가능한가? 기본키와 외래키로 연결되어 있는가?
*/
SELECT
	o.o_id,o.o_amount,m.m_name
FROM
	tb_member AS m
	INNER JOIN
	tb_order AS o
	ON
	m.m_id = o.o_id;
-- id중복제거 + 주문수량 합치기
SELECT
	o.o_id,
	SUM(o.o_amount) AS '구매수량',
	m.m_name
FROM
	tb_member AS m
	INNER JOIN
	tb_order AS o
	ON
	m.m_id = o.o_id
GROUP BY
	o.o_id
ORDER BY SUM(o.o_amount);	

-- continent가 EOROPE에 속한 모든 도시의 이름과 continent 를 구하시오
SELECT 
	c.Name,
	ct.Continent
FROM
	city AS c
	LEFT JOIN
	country AS ct
	ON
	c.CountryCode = ct.Code
WHERE
	ct.Continent = 'Europe';
	


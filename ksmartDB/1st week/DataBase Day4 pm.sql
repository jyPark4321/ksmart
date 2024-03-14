-- continent가 AISA인 도시의 인구수의 합을 조회
SELECT
	SUM(c.Population) AS '아시아 도시의 인구수의 합'
	
FROM 
	city AS c
	INNER JOIN
	country AS ct
	ON
	c.CountryCode = ct.Code
WHERE
	ct.Continent = 'Asia';
	
-- 회원 권한 이름이 '관리자'인 회원의 이름과 권한 이름, 회원 이메일을 조회
SELECT
	m.m_name,
	ml.level_name,
	m.m_email
FROM
	tb_member AS m
	INNER JOIN
	tb_member_level AS ml 
	ON
	m.m_level = ml.level_num
WHERE ml.level_name = '관리자';

-- 회원 중 2월에 로그인한 회원의 아이디, 이메일, 로그인 일자를 조회하세요.
SELECT
	m.m_id,
	m.m_email,
	date_format(l.login_date,'%Y-%m-%d') AS 'login_data(February)'
FROM
	tb_member AS m
	INNER JOIN
	tb_login AS l
	ON
	m.m_id = l.login_id
WHERE
	MONTH(l.login_date) = 2;
	
-- 구매자 회원의 아이디와 이름, 주소, 구매 상품 코드, 구매 상품 이름을 조회.
SELECT
	o.o_id,
	m.m_name,
	m.m_addr,
	o.o_g_code,
	g.g_name
FROM tb_member AS m INNER JOIN tb_order AS o ON m.m_id = o.o_id
						  INNER JOIN tb_goods AS g ON o.o_g_code = g.g_code;
						  
/*
	회원 중, 로그인하지 않은 회원의 아이디와 이메일, 로그인 일자를 조회하시오
	조회 시, 로그인 일자는 Login_record라는 이름으로 조회하고,
	login_record에서 조회되지 않는 값은 '로그인 기록이 없습니다.'로 조회하시오.
*/
SELECT
	m.m_id,
	m.m_email,
	IFNULL(l.login_date,'로그인한 기록이 없습니다.') AS login_record 
FROM
	tb_member AS m
	LEFT JOIN 
	tb_login AS l
	ON
	l.login_id=m.m_id
WHERE
	l.login_id IS NULL;

	
SELECT
	COUNT(1) AS "한국에 있는 도시의 수"
FROM
	city AS c
WHERE
	c.CountryCode = 'kor';

/*
*	1. 지역구 켈리포니아의 인구 평균을 구하시오
*	2. 인구수 800만 이상인 도시의 수를 구하시오
*	3. 국가 코드 개수를 구하고, 중복을 제거한 국가 코드 개수를 구해서 차이를 구하시오.
*  4. 가장 많은 인기수와 가장 적은 인구수의 차이를 구하시오
*	5. 국가 코드별 인구수 평균 구하기
*/

-- 지역구 켈리포니아의 인구 평균을 구하시오
SELECT
	AVG(c.Population)
FROM
	city AS c
WHERE
	c.District = 'California';

-- 인구수 800만 이상인 도시의 수를 구하시오
SELECT
	COUNT(c.name) AS "인구수 800만이상 도시의 수"
FROM
	city AS c
WHERE
	c.Population >= 8000000;

-- 국가 코드 개수를 구하고, 중복을 제거한 국가 코드 개수를 구해서 차이를 구하시오.
SELECT

   COUNT(c.CountryCode)-
	COUNT(DISTINCT c.CountryCode)
FROM
	city AS c;
	
-- 가장 많은 인기수와 가장 적은 인구수의 차이를 구하시오
SELECT
	MAX(c.Population)-MIN(c.Population)
FROM
	city AS c;
	
-- 국가 코드별 인구수 평균 구하기
SELECT
   c.CountryCode,
	AVG(c.Population)
FROM
	city AS c
GROUP BY c.CountryCode;	

-- 국가 코드 별 도시 개수를 조회하시오
-- 단, 속한 도시 개수가 100개 보다 많은 국가 코드와 도시개수를 조회하시오.
SELECT
   c.CountryCode,
   COUNT(c.Name)
FROM
	city AS c
GROUP BY c.CountryCode
HAVING COUNT(c.Name) > 100;

--내장함수(제어 흐름 함수) IFNULL
SELECT
	IFNULL(NULL,'NULL입니다.'),
	IFNULL(100,'NULL이 아닙니다.');
	
-- 문자함수(숫자를 반환) LENGTH(str) = byte를 반환 , CHAR_LENGTH(str) = 문자갯수를 반환
-- CONCAT, CONCAT_WS, TRIM
-- REPLACE(str1, str2, str3)
-- SUBSTR = SUBSTRING = MID
-- RIGHT, LEFT
-- UPER, LOWER
SELECT
	LENGTH('가나다'),
	LENGTH('abc'),
	CHAR_LENGTH('가나다'),
	CHAR_LENGTH('abc');

SELECT
	CONCAT('안녕','하세요'),
	CONCAT_WS('-','010','1234','5678'),
	TRIM('                안녕하세요');
	
SELECT
	REPLACE('마시는 비타민 비타1000','비타민','vitamin');
	
SELECT
	SUBSTR('안녕하세요.',1,2),
	SUBSTR('안녕하세요.',3);
	
SELECT
	RIGHT('안녕하세요',3), 
	LEFT('안녕하세요',3);
	
SELECT
	UPPER('korea'), 
	LOWER('KOREA');

/*
	1. city테이블에서 도시 이름의 글자수가 25보다 큰 도시의 이름, 국가코드, 지역구 조회
	2. 도시 이름과 이름의 길이를 조회, 도시 이름의 길이가 작은것부터 큰 순서대로 조회
	3. city테이블의 국가 코드 첫 글자와 마지막 글자를 합쳐서 소문자로 조회.
		조회하는 열 이름은 small_code라는 이름으로 조회
	4. sakila db의 Language table에서 이름에 i가 들어가는 데이터를 찾고, i를 대문자 I로 조회
		조회하는 이름은 upper_I
*/

-- 1. city테이블에서 도시 이름의 글자수가 25보다 큰 도시의 이름, 국가코드, 지역구 조회
SELECT
	c.Name,
	c.CountryCode,
	c.District
FROM
	city AS c
WHERE
	CHAR_LENGTH(c.Name)>25;

-- 2. 도시 이름과 이름의 길이를 조회, 도시 이름의 길이가 작은것부터 큰 순서대로 조회
SELECT
	c.Name,
	CHAR_LENGTH(c.Name) AS '도시이름의 길이'
FROM
	city AS c
ORDER BY CHAR_LENGTH(c.Name);

-- 3. city테이블의 국가 코드 첫 글자와 마지막 글자를 합쳐서 소문자로 조회.
--		조회하는 열 이름은 small_code라는 이름으로 조회
SELECT
	LOWER(CONCAT(
	RIGHT(c.CountryCode,1),
	LEFT(c.CountryCode,1))) AS small_code
FROM
	city AS c;

-- sakila db의 Language table에서 이름에 i가 들어가는 데이터를 찾고, i를 대문자 I로 조회
--		조회하는 이름은 upper_I
SELECT 
    REPLACE(l.name,'i','I') AS 'upper_I'
FROM 
    language AS l
WHERE 
    l.name LIKE '%i%';



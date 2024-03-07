--   24년 3월 7일 
--   데이터베이스 수업 2일차2일차
/*
	1. city table의 모든 데이터 조회
	2. city table의 모든 도시 이름 조회
	3. city table의 도시의 이름, 국가코드, 인구수 조회
	4. city table의 국가 코드가 USA인 도시의 이름과 인구수 조회
	5. city table의 도시 seoul을 찾고, '한국의 수도'라는 이름으로 조회
*/
-- 1. city table의 모든 데이터 조회
SELECT
	*
FROM
	city;
	
-- 2. city table의 모든 도시 이름 조회
SELECT
	Name
FROM
	city;
	
-- 3. city table의 도시의 이름, 국가코드, 인구수 조회
SELECT
	Name, 
	CountryCode, 
	Population
FROM
	city;

-- 4. city table의 국가 코드가 USA인 도시의 이름과 인구수 조회
SELECT
	Name, 
	Population
FROM
	city
WHERE
	CountryCode = 'USA';
	
-- 5. city table의 도시 seoul을 찾고, '한국의 수도'라는 이름으로 조회
SELECT
	NAME AS '한국의수도'
FROM
	city  
WHERE
	Name = 'Seoul';
	
	

	
	


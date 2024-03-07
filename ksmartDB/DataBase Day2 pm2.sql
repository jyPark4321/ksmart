/*
	1.국가 코드가 K,U,A로 시작하는 국가의 도시 이름, 국가 코드를 조회
	2.국가 코드가 A,E,I로 시작하지 않고, A,O,U로 끝나지 않는 국가의 도시이름, 국가코드 조회
*/
-- 1.국가 코드가 K,U,A로 시작하는 국가의 도시 이름, 국가 코드를 조회

SELECT
	c.Name,
	c.CountryCode
FROM
	city AS c
WHERE	
	c.CountryCode LIKE 'K%'
	OR
	c.CountryCode LIKE 'u%'
	OR
	c.CountryCode LIKE 'a%';
	
-- 2.국가 코드가 A,E,I로 시작하지 않고, A,O,U로 끝나지 않는 국가의 도시이름, 국가코드 조회

SELECT
	c.Name,
	c.CountryCode
FROM
	city AS c
WHERE	
	(c.CountryCode NOT LIKE 'A%'
	AND
	c.CountryCode NOT LIKE 'E%'
	AND
	c.CountryCode NOT LIKE 'I%')
	AND
	(c.CountryCode NOT LIKE '%A'
	AND
	c.CountryCode NOT LIKE '%O'
	AND
	c.CountryCode NOT LIKE '%U');
/*
	1.도시 이름을 조회하는데, 오름차순으로 조회 + 내림차순도해보기
	2.내림차순으로 조회
	3.인구수를 기준으로 오름차순 정렬하고, 도시 이름과 인구수를 조회
*/
-- 1.도시 이름을 조회하는데, 오름차순으로 조회 
-- 2.내림차순으로 조회
SELECT
	c.Name
FROM
	city AS c
ORDER BY    
	c.Name;-- (DESC); ORDER BY에서 default는 ASC 내림차순은 DESC
	
-- 3.인구수를 기준으로 오름차순 정렬하고, 도시 이름과 인구수를 조회	
SELECT
	c.Name,
	c.Population
FROM
	city AS c
ORDER BY    
	c.Population;
/*
	인구수가 100만명 이상인 도시의 이름과 인구수를 조회하고, 인구수 기준으로 오름차순으로 정렬
*/
SELECT
	c.Name,
	c.Population
FROM
	city AS c
WHERE
	c.Population >= 1000000	
ORDER BY c.Population;

/*
	국가 코드가 USA면서 인구수가 200만명보다 많은 도시의 이름과 인구수를 조회하고,
	도시 이름 기준으로 내림차순 정렬
*/
SELECT
	c.Name,
	c.Population
FROM
	city AS c
WHERE
	c.CountryCode = 'usa'
	AND
	c.Population > 2000000
ORDER BY c.Name DESC;








	
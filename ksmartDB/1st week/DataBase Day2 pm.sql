/*
	1. city에서 인구수 500만 이상인 도시의 이름, 지역구, 인구수 조회
	2. 인구수가 200만 이상이고, 한국에 속한 도시의 이름, 국가코드, 지역구, 인구수 조회
*/
-- 1. city에서 인구수 500만 이상인 도시의 이름, 지역구, 인구수 조회
SELECT
	c.Name,
	c.District,
	c.Population
FROM
	city AS c
WHERE
	c.Population > 5000000
ORDER BY 
	c.Population ASC;
	

-- 2. 인구수가 200만 이상이고, 한국에 속한 도시의 이름, 국가코드, 지역구, 인구수 조회
SELECT
	c.Name,
	c.CountryCode,
	c.District,
	c.Population	
FROM
	city AS c
WHERE 
	c.Population >= 2000000  -- 논리 연산자를 사용하는것 
	AND
	c.CountryCode = 'KOR'       -- 복합조건
ORDER BY 
	c.Population ASC;

/*
	1.인구수가 3백만 이상 5백만 이하인 도시 이름, 국가 코드, 인구수
*/	
SELECT
	c.Name,
	c.CountryCode,
	c.Population
FROM 
	city AS c
WHERE
	 c.Population >= 3000000
	 AND
	 c.Population <= 5000000;
	 
SELECT
	c.Name,
	c.CountryCode,
	c.Population
FROM 
	city AS c
WHERE
	c.Population BETWEEN 3000000 AND 5000000;
	
/*
	1.국가 코드가 KOR이거나,AFG이거나, NLD인 국가의 도시이름, 국가 코드를 조회
*/
SELECT
	c.Name,
	c.CountryCode
FROM
	city AS c
WHERE
	c.CountryCode IN ('kor','afg','nld');
	
/*
	1.도시이름이 seo로 시작하는 모든 도시 이름을 조회
	2.도시 이름에 eo가 들어가는 도시 이름을 조회하시오
	3.도시 이름에 eo가 들어가는데, 앞에 1글자, 뒤에 어떤문자 전부 가능하도록 조회
*/
-- 1.도시이름이 seo로 시작하는 모든 도시 이름을 조회
SELECT
	c.name
FROM
	city AS c
WHERE
	c.name LIKE 'seo%';

-- 2.도시 이름에 eo가 들어가는 도시 이름을 조회하시오
SELECT
	c.name
FROM
	city AS c
WHERE
	c.name LIKE '%eo%';
	
-- 3.도시 이름에 eo가 들어가는데, 앞에 1글자, 뒤에 어떤문자 전부 가능하도록 조회
SELECT
	c.name
FROM
	city AS c
WHERE
	c.name LIKE '_eo%';
	  
	 
	
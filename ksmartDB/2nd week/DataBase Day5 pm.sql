-- USA의 도시중, 한국의 도시 ULSAN의 인구수 보다 하나라도 큰 도시의 이름과 인구수
SELECT
	c.Name,
	c.Population
FROM
	city AS c
WHERE
	c.CountryCode = 'usa' and
	c.Population >ANY (SELECT
								c.population
							FROM
								city AS c
							WHERE
								c.Name='ulsan');
								
-- 한국에 속한 모든 도시의 인구수보다 작은 도시의 이름과 인구수 조회							
SELECT
	c.name,
	c.Population
FROM
	city AS c
WHERE
	c.Population < ALL(
								SELECT
									c.Population
								FROM
									city AS c
								WHERE
									c.CountryCode = 'kor'
	);
	
	
	
	


	
	


	 
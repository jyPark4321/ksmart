-- ALTER
-- 칼럼이름 변경하기
-- ALTER TABLE tb_user CHANGE COLUMN u_date u_reg_date DATE;

-- 칼럼 순서 변경
ALTER TABLE tb_user MODIFY u_mobile1 VARCHAR(100) AFTER u_mobile2;

-- 칼럼의 데이터 타입을 변경
ALTER TABLE tb_user MODIFY u_name CHAR(50);

--새로운 컬럼 추가하기(성별)
ALTER TABLE tb_user ADD COLUMN u_gen CHAR(10) AFTER u_birth;

-- 삭제하기
ALTER TABLE tb_user DROP COLUMN u_gen;

-- 테이블 이름 변경
ALTER TABLE tb_user RENAME TO tb_member;

-- 데이터베이스 지우기
DROP DATABASE 데이터베이스_이름;

-- 테이블 지우기
DROP TABLE 테이블_이름;

-- 만약 존재한다면, 삭제하기 = 존재한다면, 지우기
DROP TABLE IF EXISTS 테이블_이름;

-- 새로운 튜플을 삽입한다.
INSERT INTO tb_member
	(u_id, u_pw, u_name, u_birth, u_addr, u_mobile2, u_mobile1, u_reg_date)
	VALUES 
	('id004', 'pw004', '사길동', NOW(), '송천동', '0104441', '0104442', NOW()),
	('id005', 'pw005', '오길동', NOW(), '효자동', '0105551', '0105552', NOW()),
	('id006', 'pw006', '육길동', NOW(), '팔복동', '0106661', '0106662', NOW());
-- 조건에 맞는 튜플을 조회한다.
UPDATE tb_member
SET
	u_addr = '삼천동'
WHERE -- 조건
	-- 컬럼_이름(유일한 값) = 값
	u_mobile2 = '0105555';

-- 조건에 맞는 튜플을 삭제한다.
DELETE
FROM
	tb_member
WHERE
	u_id = "id005";
	
-- 테이블 복제하기
CREATE TABLE tb_member_backup2(
	SELECT 
		*
	FROM
		tb_member
);

-- 테이블에서 데이터를 조회한다.
-- 가져오고 싶은 데이터를 선택한다.
-- 회원테이블에서 아이디,이름,주소를 조회하세요
SELECT
	-- 조회하려는_열_이름1,
	-- 조회하려는_열_이름2
	u_id,
	u_name,
	u_addr
FROM
	-- 테이블_이름;
	tb_member;

--회원테이블에서 회원의 아이디, 이름, 연락처1을 조회하세요
SELECT
	u_id,
	u_name,
	u_mobile1
FROM
	tb_member; 

-- 원하는 데이터만 검색하기
-- WHERE절을 사용한다. 
SELECT
	u_id,
	u_name,
	u_addr
FROM
	tb_member
WHERE
	u_id = 'id002';
	








-- 트리거
/*
DROP TRIGGER IF EXISTS
DELIMITER $$
CREATE TRIGGER 트리거 이름
트리거_타임 트리거_이벤트
AFTER DELETE -- DELETE 문이 발생하면, 트리거가 작동한다는 의미
ON 테이블_이름 -- 부착할 테이블 이름
FOR EACH ROW --테이블 안에 각 행마다 적용 하겠다 라는 의미
BEGIN
END $$
DELIMITER ;
*/
DROP TRIGGER IF EXISTS member_delete_trigger;
DELIMITER $$
CREATE TRIGGER member_delete_trigger
AFTER DELETE
ON tb_member2
FOR EACH ROW
BEGIN
	INSERT INTO tb_member2_backup
	(mem_id, mem_name, mem_addr, mod_type, mod_date, mod_user)
	VALUES (OLD.m_id,OLD.m_name,OLD.m_addr,'삭제', CURDATE(),CURRENT_USER() );
END $$
DELIMITER ;

DELETE
FROM
	tb_member2
WHERE
	m_id = 'id005';
	
-- 회원의 이름이 변경되면 발동하는 트리거를 만들고 테스트
DROP TRIGGER IF EXISTS member_update_trigger;
DELIMITER $$
CREATE TRIGGER member_update_trigger
AFTER UPDATE
ON tb_member2
FOR EACH ROW
BEGIN
	IF OLD.m_name <> NEW.m_name THEN
	INSERT INTO tb_member2_backup
	(mem_id, mem_name, mem_addr, mod_type, mod_date, mod_user)
	VALUES (OLD.m_id,OLD.m_name,OLD.m_addr,'수정', CURDATE(),CURRENT_USER() );
	END IF;
END $$
DELIMITER ;

UPDATE tb_member2 SET m_name = '홍02020202' WHERE m_id = 'id002';

/*
	트랜잭션 실습을 위한 오토커밋 확인과 변경 
	SELECT @@AUTOCOMMIT;
	SET @@AUTOCOMMIT := 1;

*/

START TRANSACTION;
SELECT
	m.m_id,
	m.m_name
FROM
	tb_member2 AS m
WHERE
	m.m_id = 'id015';
	
UPDATE
	tb_member2 AS m
SET
	m.m_name = '홍1515'
WHERE
	m.m_id = 'id015';
	
SAVEPOINT save;

DELETE
FROM
	tb_member2 AS m
WHERE
	m.m_id = 'id015';
	

COMMIT;



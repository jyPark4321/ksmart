/*
	회원의 이름으로 회원 아이디, 이름, 이메일을 조회하는
	프로시저를 생성하세요
*/
DELIMITER $$
CREATE PROCEDURE sp_test1(IN mem_name VARCHAR(10))
BEGIN
	SELECT
		m.m_id,
		m.m_name,
		m.m_email
	fROM
		tb_member AS m
	WHERE
		m.m_name = mem_name;
END $$
DELIMITER ;

CALL sp_test1('홍02');




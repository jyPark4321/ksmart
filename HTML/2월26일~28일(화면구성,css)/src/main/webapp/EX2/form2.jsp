<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<form action="<%= request.getContextPath() %>/EX2/action2.jsp" method="post">
아이디 : <input type="text" name="uid">			<br/>
비 번 : <input type="password" name="upw">		<br/>
권 한 : <select name="ulevel">
		  <option value="관리자">관리자</option>
		  <option value="판매자">판매자</option>
		  <option value="구매자">구매자</option>
		</select><br/>
이 름 : <input type="text" name="uname">			<br/>
이메일 : <input type="text" name="uemail">		<br/>
<input type="submit" value="회원가입버튼">
</form>	       
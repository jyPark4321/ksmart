<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<form action="<%= request.getContextPath() %>/EX2/action2.jsp" method="post">
���̵� : <input type="text" name="uid">			<br/>
�� �� : <input type="password" name="upw">		<br/>
�� �� : <select name="ulevel">
		  <option value="������">������</option>
		  <option value="�Ǹ���">�Ǹ���</option>
		  <option value="������">������</option>
		</select><br/>
�� �� : <input type="text" name="uname">			<br/>
�̸��� : <input type="text" name="uemail">		<br/>
<input type="submit" value="ȸ�����Թ�ư">
</form>	       
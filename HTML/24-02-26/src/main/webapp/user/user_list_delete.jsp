<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
table, th, td {
  border:1px solid black;
  border-collapse: collapse;
}
</style>
<!-- 
������
http://localhost:8007/layoutMG51/css/main.css
/layoutMG51/css/main.css
�����
css/main.css
./css/main.css
-->
<!-- <link rel="stylesheet" type="text/css" href="http://localhost:8007/layoutMG51/css/main.css" /> -->
<!-- <link rel="stylesheet" type="text/css" href="/layoutMG51/css/main.css" /> -->
<!-- <link rel="stylesheet" type="text/css" href="css/main.css" /> -->
<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/main.css" />
</head>

<body>

   <!-- Begin Wrapper -->
   <div id="wrapper">
   
         <!-- Begin Header -->
         <div id="header">
<a href="<%= request.getContextPath() %>/user/user_insert_form.jsp">01ȸ������</a>					 
<a href="<%= request.getContextPath() %>/user/user_list.jsp">02ȸ���˻�</a>					 
<a href="#">03��ǰ���</a>					 
<a href="#">04��ǰ�˻�</a>					 
		 
			   
		 </div>
		 <!-- End Header -->
		 
		 <!-- Begin Left Column -->
		 <div id="leftcolumn">
		 
		       Left Column
		 
		 </div>
		 <!-- End Left Column -->
		 
		 <!-- Begin Right Column -->
		 <div id="rightcolumn">

<h2>2-4 ���� �� ȸ�� ����Ʈ(1��)</h2>

<table style="width:100%">
  <tr>
    <th>��ȣ</th>
    <th>���̵�</th> 
    <th>���</th>		<!-- Ctrl + Alt + ����Ű �Ʒ�ȭ��ǥ -->
    <th>����</th>
    <th>�̸�</th>
    <th>�̸���</th>
    <th>����</th>
  </tr>
  
  <tr>
    <td>1</td>
    <td>id001</td>
    <td>pw001</td>
    <td>������</td>
    <td>�ϱ浿</td>
    <td>email1@naver.com</td>
    <td>������ư</td>
  </tr>
  <%-- <tr>
    <td>2</td>
    <td>id002</td>
    <td>������_pw002</td>
    <td>������_�Ǹ���</td>
    <td>������_�̱浿</td>
    <td>������_email2@naver.com</td>
    <td>
<a href="<%= request.getContextPath() %>/user/user_update_form.jsp">������ư</a></td>
<td><a href="<%= request.getContextPath() %>/user/user_list_delete.jsp">����</a></td>
  </tr>   --%>
</table>
		 
		 </div>
		 <!-- End Right Column -->
		 
		 <!-- Begin Footer -->
		 <div id="footer">
		       
			   This is the Footer		
			    
	     </div>
		 <!-- End Footer -->
		 
   </div>
   <!-- End Wrapper -->
   
</body>
</html>

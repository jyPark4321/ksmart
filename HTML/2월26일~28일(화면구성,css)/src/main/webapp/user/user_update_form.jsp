<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

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
<a href="<%= request.getContextPath() %>/item/Item_insert_form.jsp">03��ǰ���</a>					 
<a href="<%= request.getContextPath() %>/item/Item_list.jsp">04��ǰ�˻�</a>				 
		 
			   
		 </div>
		 <!-- End Header -->
		 
		 <!-- Begin Left Column -->
		 <div id="leftcolumn">
		 
		       Left Column
		 
		 </div>
		 <!-- End Left Column -->
<%
String uid = request.getParameter("uid");
String upw = request.getParameter("upw");
String ulevel = request.getParameter("ulevel");
String uname = request.getParameter("uname");
String uemail = request.getParameter("uemail");


System.out.println(uid + "<---uid");
System.out.println(upw + "<---upw");
System.out.println(ulevel + "<---ulevel");
System.out.println(uname + "<---uname");
System.out.println(uemail + "<---uemail");
%>		 
		 <!-- Begin Right Column -->
		 <div id="rightcolumn">
<h2>ȸ������ ȭ��</h2> 	
<form action="<%= request.getContextPath() %>/user/user_list_update.jsp" method="post">
���̵� : <input type="text" name="uid" value="<%= uid %>" readonly>			<br/>
�� �� : <input type="password" name="upw" value="<%= upw%>">		<br/>
�� �� : <select name="ulevel">
<%if(ulevel.equals("������")){ %>
		  <option value="������">������</option>
		  <option value="�Ǹ���">�Ǹ���</option>
		  <option value="������">������</option>
<%}else if(ulevel.equals("�Ǹ���")){ %>
		  <option value="�Ǹ���">�Ǹ���</option>
		  <option value="������">������</option>
		  <option value="������">������</option>
<%}else if(ulevel.equals("������")){ %>
          <option value="������">������</option>
		  <option value="�Ǹ���">�Ǹ���</option>
		  <option value="������">������</option>
<%} %>
		</select><br/>
�� �� : <input type="text" name="uname" value="<%= uname%>">			<br/>
�̸��� : <input type="text" name="uemail" value="<%= uemail%>">		<br/>
<input type="submit" value="ȸ��������ư">
</form>	       
		 
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

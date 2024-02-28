<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

<!-- 
절대경로
http://localhost:8007/layoutMG51/css/main.css
/layoutMG51/css/main.css
상대경로
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
<a href="<%= request.getContextPath() %>/user/user_insert_form.jsp">01회원가입</a>					 
<a href="<%= request.getContextPath() %>/user/user_list.jsp">02회원검색</a>					 
<a href="<%= request.getContextPath() %>/item/Item_insert_form.jsp">03상품등록</a>					 
<a href="<%= request.getContextPath() %>/item/Item_list.jsp">04상품검색</a>				 
		 
			   
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
<h2>회원수정 화면</h2> 	
<form action="<%= request.getContextPath() %>/user/user_list_update.jsp" method="post">
아이디 : <input type="text" name="uid" value="<%= uid %>" readonly>			<br/>
비 번 : <input type="password" name="upw" value="<%= upw%>">		<br/>
권 한 : <select name="ulevel">
<%if(ulevel.equals("관리자")){ %>
		  <option value="관리자">관리자</option>
		  <option value="판매자">판매자</option>
		  <option value="구매자">구매자</option>
<%}else if(ulevel.equals("판매자")){ %>
		  <option value="판매자">판매자</option>
		  <option value="관리자">관리자</option>
		  <option value="구매자">구매자</option>
<%}else if(ulevel.equals("구매자")){ %>
          <option value="구매자">구매자</option>
		  <option value="판매자">판매자</option>
		  <option value="관리자">관리자</option>
<%} %>
		</select><br/>
이 름 : <input type="text" name="uname" value="<%= uname%>">			<br/>
이메일 : <input type="text" name="uemail" value="<%= uemail%>">		<br/>
<input type="submit" value="회원수정버튼">
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

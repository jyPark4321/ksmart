<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<%
%>
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
<a href="<%= request.getContextPath() %>/user/user_list_insert.jsp">02회원검색</a>					 
<a href="<%= request.getContextPath() %>/item/Item_insert_form.jsp">03상품등록</a>						 
<a href="<%= request.getContextPath() %>/item/Item_list.jsp">04상품검색</a>				 
		 
			   
		 </div>
		 <!-- End Header -->
		 
		 <!-- Begin Left Column -->
		 <div id="leftcolumn">
		 
		       Left Column
		 
		 </div>
		 <!-- End Left Column -->
		 
		 <!-- Begin Right Column -->
		 <div id="rightcolumn">

<h2>2-2 입력 후 회원 리스트(2명)</h2>

<table style="width:100%">
  <tr>
    <th>번호</th>
    <th>아이디</th> 
    <th>비번</th>		<!-- Ctrl + Alt + 방향키 아래화살표 -->
    <th>권한</th>
    <th>이름</th>
    <th>이메일</th>
    <th>수정</th>
    <th>삭제</th>
  </tr>
  <tr>
    <td>1</td>
    <td>id001</td>
    <td>pw001</td>
    <td>관리자</td>
    <td>일길동</td>
    <td>email1@naver.com</td>
    <td><a href="<%= request.getContextPath() %>/user/user_update_form.jsp">수정</a></td>
    <td><a href="<%= request.getContextPath() %>/user/user_list_delete.jsp">삭제</a></td>
  </tr>
  <%
request.setCharacterEncoding("euc-kr");
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
  <tr>
    <td>2</td>
    <td><%= uid%></td>
    <td><%= upw%></td>
    <td><%= ulevel%></td>
    <td><%= uname%></td>
    <td><%= uemail%></td>
    <td>
    
<a href="<%= request.getContextPath() %>/user/user_update_form.jsp?uid=<%= uid%>&upw=<%= upw%>&ulevel=<%= ulevel%>&uname=<%= uname%>&uemail=<%= uemail%>">수정버튼</a>					 
    </td>
    <td><a href="<%= request.getContextPath() %>/user/user_list_delete.jsp">삭제</a></td>
  </tr>  
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

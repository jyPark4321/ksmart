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
		 
		 <!-- Begin Right Column -->
		 <div id="rightcolumn">

<h2>3-1 최초 상품 리스트(1건)</h2>

<table style="width:100%">
  <tr>
    <th>번호</th>
    <th>상품명</th> 
    <th>가격</th>		<!-- Ctrl + Alt + 방향키 아래화살표 -->
    <th>종류</th>
    <th>수량</th>
    <th>판매자</th>
    
  </tr>
  <tr>
    <td>1</td>
    <td>코트</td>
    <td>1000</td>
    <td>의류</td>
    <td>5</td>
    <td>사길동</td>
   
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

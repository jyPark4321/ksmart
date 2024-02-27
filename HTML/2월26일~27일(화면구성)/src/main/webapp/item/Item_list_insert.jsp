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
<a href="<%= request.getContextPath() %>/item/Item_list_insert.jsp">04상품검색</a>					 
		 
			   
		 </div>
		 <!-- End Header -->
		 
		 <!-- Begin Left Column -->
		 <div id="leftcolumn">
		 
		       Left Column
		 
		 </div>
		 <!-- End Left Column -->
		 
		 <!-- Begin Right Column -->
		 <div id="rightcolumn">

<h2>3-2 상품 추가 후 상품 리스트(2건)</h2>

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
    <td>100000</td>
    <td>의류</td>
    <td>5</td>
    <td>사길동</td>
    
  
  </tr>
  <%
request.setCharacterEncoding("euc-kr");
String item_id = request.getParameter("item_id");
String item_price = request.getParameter("item_price");
String item_type = request.getParameter("item_type");
String item_value = request.getParameter("item_value");
String item_seller = request.getParameter("item_seller");


%>
 
  <tr>
    <td>2</td>
    <td><%= item_id %></td>
    <td><%= item_price %></td>
    <td><%= item_type %></td>
    <td><%= item_value %></td>
    <td><%= item_seller %></td>
    <td><a href="<%= request.getContextPath() %>/item/item_update_form.jsp?item_id=<%= item_id%>&item_price=<%= item_price%>&item_type=<%= item_type%>&item_value=<%= item_value%>&item_seller=<%= item_seller%>">수정</a></td>
    <td><a href="<%= request.getContextPath() %>/item/item_list_delete.jsp">삭제</a></td>
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

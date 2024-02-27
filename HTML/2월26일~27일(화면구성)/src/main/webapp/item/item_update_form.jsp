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
String item_id = request.getParameter("item_id");
String item_price = request.getParameter("item_price");
String item_type = request.getParameter("item_type");
String item_value = request.getParameter("item_value");
String item_seller = request.getParameter("item_seller");
%>		 
		 <!-- Begin Right Column -->
		 <div id="rightcolumn">
<h2>상품수정 화면</h2> 	
<form action="<%= request.getContextPath() %>/item/item_list_update.jsp" method="post">
상품명 : <input type="text" name="item_id" value="<%= item_id %>" >			<br/>
가 격 : <input type="text" name="item_price" value="<%= item_price %>">		<br/>
종  류 : <select name="item_type">
<%if(item_type.equals("의류")){ %>
		  <option value="의류">의류</option>
		  <option value="식음료">식음료</option>
		  <option value="잡화">잡화</option>
		  <option value="가전">가전</option>
 <%}else if(item_type.equals("식음료")){ %>
 		  <option value="식음료">식음료</option>
		  <option value="의류">의류</option>
		  <option value="잡화">잡화</option>
		  <option value="가전">가전</option>
<%}else if(item_type.equals("잡화")){ %>
 		  <option value="잡화">잡화</option>
		  <option value="의류">의류</option>
		  <option value="식음료">식음료</option>
		  <option value="가전">가전</option>
<%}else if(item_type.equals("가전")){ %>
 		  <option value="가전">가전</option>
		  <option value="의류">의류</option>
		  <option value="잡화">잡화</option>
		  <option value="식음료">식음료</option>
<%} %>		 
		</select><br/>
수  량 : <select name="item_value">
	<%if(item_value.equals("1")){ %>
		  <option value="1">1</option>
		  <option value="2">2</option>
		  <option value="3">3</option>
		  <option value="4">4</option>
		  <option value="5">5</option>
	<%}else if(item_value.equals("2")){ %>	
		  <option value="2">2</option>
		  <option value="1">1</option>
		  <option value="3">3</option>
		  <option value="4">4</option>
		  <option value="5">5</option> 
	<%}else if(item_value.equals("3")){ %>	
		  <option value="2">3</option>
		  <option value="1">1</option>
		  <option value="3">2</option>
		  <option value="4">4</option>
		  <option value="5">5</option>  
	<%}else if(item_value.equals("4")){ %>	
		  <option value="2">4</option>
		  <option value="1">1</option>
		  <option value="3">2</option>
		  <option value="4">3</option>
		  <option value="5">5</option>   
	<%}else if(item_value.equals("5")){ %>	
		  <option value="5">5</option>
		  <option value="1">1</option>
		  <option value="2">2</option>
		  <option value="3">2</option>
		  <option value="4">4</option>  
	<%}%>
		  	</select><br/>
판매자 : <input type="text" name="item_seller" value="<%= item_seller %>">	<br/>
<input type="submit" value="상품수정버튼"><br/>
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

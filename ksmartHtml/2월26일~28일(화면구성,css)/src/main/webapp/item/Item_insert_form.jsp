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
<a href="<%= request.getContextPath() %>/item/item_list_update.jsp">03상품등록</a>					 
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
상품등록 화면 	
<form action="<%= request.getContextPath() %>/item/Item_list_insert.jsp" method="post">
상품명 : <input type="text" name="item_id">			<br/>
가  격 : <input type="text" name="item_price">		<br/>
종  류 : <select name="item_type">
		  <option value="의류">의 류</option>
		  <option value="식음료">식음료</option>
		  <option value="잡화">잡화</option>
		  <option value="가전">가전</option>
		 
		</select><br/>
수  량 : <select name="item_value">
		  <option value="1">1</option>
		  <option value="2">2</option>
		  <option value="3">3</option>
		  <option value="4">4</option>
		  <option value="5">5</option>
		 
		  
		</select><br/>
판매자 : <input type="text" name="item_seller">			<br/>

<input type="submit" value="상품등록">
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

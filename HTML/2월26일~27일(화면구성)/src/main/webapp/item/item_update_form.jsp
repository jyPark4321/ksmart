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
String item_id = request.getParameter("item_id");
String item_price = request.getParameter("item_price");
String item_type = request.getParameter("item_type");
String item_value = request.getParameter("item_value");
String item_seller = request.getParameter("item_seller");
%>		 
		 <!-- Begin Right Column -->
		 <div id="rightcolumn">
<h2>��ǰ���� ȭ��</h2> 	
<form action="<%= request.getContextPath() %>/item/item_list_update.jsp" method="post">
��ǰ�� : <input type="text" name="item_id" value="<%= item_id %>" >			<br/>
�� �� : <input type="text" name="item_price" value="<%= item_price %>">		<br/>
��  �� : <select name="item_type">
<%if(item_type.equals("�Ƿ�")){ %>
		  <option value="�Ƿ�">�Ƿ�</option>
		  <option value="������">������</option>
		  <option value="��ȭ">��ȭ</option>
		  <option value="����">����</option>
 <%}else if(item_type.equals("������")){ %>
 		  <option value="������">������</option>
		  <option value="�Ƿ�">�Ƿ�</option>
		  <option value="��ȭ">��ȭ</option>
		  <option value="����">����</option>
<%}else if(item_type.equals("��ȭ")){ %>
 		  <option value="��ȭ">��ȭ</option>
		  <option value="�Ƿ�">�Ƿ�</option>
		  <option value="������">������</option>
		  <option value="����">����</option>
<%}else if(item_type.equals("����")){ %>
 		  <option value="����">����</option>
		  <option value="�Ƿ�">�Ƿ�</option>
		  <option value="��ȭ">��ȭ</option>
		  <option value="������">������</option>
<%} %>		 
		</select><br/>
��  �� : <select name="item_value">
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
�Ǹ��� : <input type="text" name="item_seller" value="<%= item_seller %>">	<br/>
<input type="submit" value="��ǰ������ư"><br/>
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

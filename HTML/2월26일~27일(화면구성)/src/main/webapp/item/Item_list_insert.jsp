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
<a href="<%= request.getContextPath() %>/item/Item_insert_form.jsp">03��ǰ���</a>				 
<a href="<%= request.getContextPath() %>/item/Item_list_insert.jsp">04��ǰ�˻�</a>					 
		 
			   
		 </div>
		 <!-- End Header -->
		 
		 <!-- Begin Left Column -->
		 <div id="leftcolumn">
		 
		       Left Column
		 
		 </div>
		 <!-- End Left Column -->
		 
		 <!-- Begin Right Column -->
		 <div id="rightcolumn">

<h2>3-2 ��ǰ �߰� �� ��ǰ ����Ʈ(2��)</h2>

<table style="width:100%">
  <tr>
    <th>��ȣ</th>
    <th>��ǰ��</th> 
    <th>����</th>		<!-- Ctrl + Alt + ����Ű �Ʒ�ȭ��ǥ -->
    <th>����</th>
    <th>����</th>
    <th>�Ǹ���</th>
    
  </tr>
  <tr>
    <td>1</td>
    <td>��Ʈ</td>
    <td>100000</td>
    <td>�Ƿ�</td>
    <td>5</td>
    <td>��浿</td>
    
  
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
    <td><a href="<%= request.getContextPath() %>/item/item_update_form.jsp?item_id=<%= item_id%>&item_price=<%= item_price%>&item_type=<%= item_type%>&item_value=<%= item_value%>&item_seller=<%= item_seller%>">����</a></td>
    <td><a href="<%= request.getContextPath() %>/item/item_list_delete.jsp">����</a></td>
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

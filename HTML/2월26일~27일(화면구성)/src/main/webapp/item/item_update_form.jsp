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
		 
		 <!-- Begin Right Column -->
		 <div id="rightcolumn">
��ǰ���� ȭ�� 	
<form action="<%= request.getContextPath() %>/item/item_list_update.jsp" method="post">
��ǰ�� : <input type="text" name="uid" value="" >			<br/>
�� �� : <input type="text" name="upw" value="">		<br/>
��  �� : <select name="ulevel">
		  <option value="�Ƿ�">�� ��</option>
		  <option value="������">������</option>
		  <option value="��ȭ">��ȭ</option>
		  <option value="����">����</option>
		 
		</select><br/>
��  �� : <select name="ulevel">
		  <option value="1">1</option>
		  <option value="1">2</option>
		  <option value="1">3</option>
		  <option value="1">4</option>
		  <option value="1">5</option>	</select><br/>
�Ǹ��� : <input type="text" name="" value="">	<br/>
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

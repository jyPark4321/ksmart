<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import = "java.sql.DriverManager" %>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.PreparedStatement" %>
<%@ page import = "java.sql.SQLException" %>

<%
	request.setCharacterEncoding("euc-kr");
	Connection conn = null;
	PreparedStatement pstmt = null;
//ȭ�鿡�� �Է��ڷ� �޾Ƽ� �ܼ�â�� ��� ����
	String m_id = request.getParameter("m_id");
	String m_pw = request.getParameter("m_pw");
	String m_level = request.getParameter("m_level");
	String m_name = request.getParameter("m_name");
	String m_email = request.getParameter("m_email");
	System.out.println(m_id + "<-- m_id /minsert/m_insert_pro.jsp");
	System.out.println(m_pw + "<-- m_pw /minsert/m_insert_pro.jsp");
	System.out.println(m_level + "<-- m_level /minsert/m_insert_pro.jsp");
	System.out.println(m_name + "<-- m_name /minsert/m_insert_pro.jsp");
	System.out.println(m_email + "<-- m_email /minsert/m_insert_pro.jsp");
//ȭ�鿡�� �Է��ڷ� �޾Ƽ� �ܼ�â�� ��� ��	
	//JDBC ���α׷� ����
	//01�ܰ� :����̹� �ε� ����
	Class.forName("com.mysql.jdbc.Driver");
	//01�ܰ� :����̹� �ε� ��
	
	try{
//02�ܰ� :DB����(Connection)����
		String jdbcDriver = "jdbc:mysql://localhost:3306/dev51db?" +
				"useUnicode=true&characterEncoding=euckr";
		String dbUser = "dev51id";
		String dbPass = "dev51pw";
		
		conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
		System.out.println(conn + "<-- conn");
		System.out.println(conn.getClass() + "<-- conn.getClass()");
		
		
//02�ܰ� :DB����(Connection)��
//03�ܰ� :Query������ ���� statement �Ǵ� prepareStatement��ü���� ����
		pstmt = conn.prepareStatement(
				"INSERT INTO tb_member VALUES (?, ?, ?, ?, ?)");
		System.out.println(pstmt + "<-- pstmt 1");
		System.out.println(pstmt.getClass() + "<-- pstmt.getClass() 1");
//insert into tb_member values('id001','pw001','������','ȫ01','email01');
		pstmt.setString(1, m_id);
		pstmt.setString(2, m_pw);
		pstmt.setString(3, m_level);
		pstmt.setString(4, m_name);
		pstmt.setString(5, m_email);

		System.out.println(pstmt + "<-- pstmt 2");
		
//03�ܰ� :Query������ ���� statement �Ǵ� prepareStatement��ü���� ��
//04�ܰ� :Query���� ����
		int result = pstmt.executeUpdate();
		System.out.println(result + "<-- result");
//04�ܰ� :Query���� ��
//05�ܰ� :Query������ ��� (insert�� ��� ���� ���ɴܰ�)

	}finally{
		//06�ܰ� :statement �Ǵ� prepareStatement��ü ����(close())
		if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
		//07�ܰ� :Connection ��ü ����(close())
		if (conn != null) try { conn.close(); } catch(SQLException ex) {}
	}

%>
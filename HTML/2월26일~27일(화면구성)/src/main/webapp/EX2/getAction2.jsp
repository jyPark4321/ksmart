<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
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

out.println(uid + "<---uid <br/>");
out.println(upw + "<---upw <br/>");
out.println(ulevel + "<---ulevel <br/>");
out.println(uname + "<---uname <br/>");
out.println(uemail + "<---uemail <br/>");

%>
uid ������ ��� �ִ� ���� ȭ����� ���̵� : <%= uid%>		<br/>
upw ������ ��� �ִ� ���� ȭ����� ���̵� : <%= upw%>		<br/>
ulevel ������ ��� �ִ� ���� ȭ����� ���̵� : <%= ulevel%>		<br/>
uname ������ ��� �ִ� ���� ȭ����� ���̵� : <%= uname%>		<br/>
uemail ������ ��� �ִ� ���� ȭ����� ���̵� : <%= uemail%>		<br/>
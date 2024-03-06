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
uid 변수에 담겨 있는 값을 화면출력 아이디 : <%= uid%>		<br/>
upw 변수에 담겨 있는 값을 화면출력 아이디 : <%= upw%>		<br/>
ulevel 변수에 담겨 있는 값을 화면출력 아이디 : <%= ulevel%>		<br/>
uname 변수에 담겨 있는 값을 화면출력 아이디 : <%= uname%>		<br/>
uemail 변수에 담겨 있는 값을 화면출력 아이디 : <%= uemail%>		<br/>
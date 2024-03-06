<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<% 
request.setCharacterEncoding("euc-kr");
String uid = request.getParameter("uid");		//String타입의 uid를 받아오는 메서드
String upw = request.getParameter("upw");
String ulevel = request.getParameter("ulevel");
String uname = request.getParameter("uname");
String uemail = request.getParameter("uemail");
//data type 변수 = 값;	//uid변수를 선언하고 화면에서 입력한 예> id002를 uid변수에 담는다.

//Java에서 기본문법 (타입) (내가사용할이름) = (값); 
//String(데이터타입) uid(내가 사용 할 변수 이름) = 값;

//String은 문자열을 저장할 때 써요(자세한 내용은 Java data type 검색!!)

//String uid = request.getParameter("uid"); ->>>> 해석해보기!!

//String uid ->>>>String(문자열 타입으로 저장할) uid라는 변수에  request.getParameter("uid")라는 값을 넣은것!

System.out.println(uid + "<- uid");     //콘솔창에 uid출력
System.out.println(upw + "<- upw");     //콘솔창에 upw출력
System.out.println(ulevel + "<- ulevel");     //콘솔창에 ulevel출력
System.out.println(uname + "<- uname");     //콘솔창에 uname출력
System.out.println(uemail + "<- uemail");     //콘솔창에 uemail출력

out.println(uid + "<- uid <br/>"); 
out.println(upw + "<- upw <br/>"); 
out.println(ulevel + "<- ulevel <br/>"); 
out.println(uname + "<- uname <br/>"); 
out.println(uemail + "<- uemail <br/>"); 

%>

uid 변수에 담겨 있는 값을 화면출력 아이디 : <%= uid%>		<br/>
upw 변수에 담겨 있는 값을 화면출력 아이디 : <%= upw%>		<br/>
ulevel 변수에 담겨 있는 값을 화면출력 아이디 : <%= ulevel%>		<br/>
uname 변수에 담겨 있는 값을 화면출력 아이디 : <%= uname%>		<br/>
uemail 변수에 담겨 있는 값을 화면출력 아이디 : <%= uemail%>		<br/>
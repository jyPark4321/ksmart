<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<% 
request.setCharacterEncoding("euc-kr");
String uid = request.getParameter("uid");		//StringŸ���� uid�� �޾ƿ��� �޼���
String upw = request.getParameter("upw");
String ulevel = request.getParameter("ulevel");
String uname = request.getParameter("uname");
String uemail = request.getParameter("uemail");
//data type ���� = ��;	//uid������ �����ϰ� ȭ�鿡�� �Է��� ��> id002�� uid������ ��´�.

//Java���� �⺻���� (Ÿ��) (����������̸�) = (��); 
//String(������Ÿ��) uid(���� ��� �� ���� �̸�) = ��;

//String�� ���ڿ��� ������ �� ���(�ڼ��� ������ Java data type �˻�!!)

//String uid = request.getParameter("uid"); ->>>> �ؼ��غ���!!

//String uid ->>>>String(���ڿ� Ÿ������ ������) uid��� ������  request.getParameter("uid")��� ���� ������!

System.out.println(uid + "<- uid");     //�ܼ�â�� uid���
System.out.println(upw + "<- upw");     //�ܼ�â�� upw���
System.out.println(ulevel + "<- ulevel");     //�ܼ�â�� ulevel���
System.out.println(uname + "<- uname");     //�ܼ�â�� uname���
System.out.println(uemail + "<- uemail");     //�ܼ�â�� uemail���

out.println(uid + "<- uid <br/>"); 
out.println(upw + "<- upw <br/>"); 
out.println(ulevel + "<- ulevel <br/>"); 
out.println(uname + "<- uname <br/>"); 
out.println(uemail + "<- uemail <br/>"); 

%>

uid ������ ��� �ִ� ���� ȭ����� ���̵� : <%= uid%>		<br/>
upw ������ ��� �ִ� ���� ȭ����� ���̵� : <%= upw%>		<br/>
ulevel ������ ��� �ִ� ���� ȭ����� ���̵� : <%= ulevel%>		<br/>
uname ������ ��� �ִ� ���� ȭ����� ���̵� : <%= uname%>		<br/>
uemail ������ ��� �ִ� ���� ȭ����� ���̵� : <%= uemail%>		<br/>
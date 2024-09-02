<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내장객체 Response</title>
</head>
<body>
<%
String id = request.getParameter("user_id");
String pwd = request.getParameter("user_pwd");
if(id.equalsIgnoreCase("must") && pwd.equalsIgnoreCase("1234")){
// if(id.equals("must") && pwd.equals("1234")) equalsIgnoreCase는 대소문자 다 가리지 않고 똑같기만 하면됨.
	response.sendRedirect("ResponseWelcome.jsp");
}else{
	request.getRequestDispatcher("ResponseMain.jsp?loginErr=1").forward(request,response);
	// .getRequestDispatcher("ResponseMain.jsp?loginErr=1")
}
%>
</body>
</html>
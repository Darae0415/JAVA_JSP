<%@ page import = 'java.text.SimpleDateFormat' %>
<%@ page import = 'java.util.Date' %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
SimpleDateFormat dateFormat = new SimpleDateFormat("HH:mm:ss");

//최초 요청시간
long createTime = session.getCreationTime();
String creationTimeStr = dateFormat.format(new Date(createTime));

//마지막 요청시간
long lastTime = session.getLastAccessedTime();
String lastTimeStr = dateFormat.format(new Date(lastTime));
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<p>세션 유지시간 : <%=session.getMaxInactiveInterval() %></p>
<p>세션 아이디 : <%=session.getId() %></p>
<p>최초시간 : <%=creationTimeStr %></p>
<p>마지막시간 : <%=lastTimeStr %></p>
</body>
</html>
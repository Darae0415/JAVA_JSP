<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    
    %>
<%@ page import="java.text.SimpleDateFormat" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>page 지시어 - import 속성</title>
</head>
<body>
<%
Date today =new Date();
SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
String strToday = dateFormat.format(today);
out.println("오늘날짜 : " + strToday);
%>
</body>
</html>

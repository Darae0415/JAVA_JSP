<%@ page import="common.JDBConnect"%> 

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head><title>JDBC</title></head>
<body>
    <h2>JDBC 테스트 1</h2>
    <%
    JDBConnect jdbc1 = new JDBConnect(); 
    jdbc1.close(); 
    %>
    <h2>JDBC 테스트 2</h2>
    <%
    String driver = application.getInitParameter("OracleDriver"); 
    String url = application.getInitParameter("OracleURL");
    String id = application.getInitParameter("OracleId");
    String pwd = application.getInitParameter("OraclePwd");

    JDBConnect jdbc2 = new JDBConnect(driver, url, id, pwd); 
    jdbc2.close();
    %>
</body>
</html>
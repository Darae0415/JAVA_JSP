<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" butter="1kb" autoFlush="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
for (int i=1; i<=100; i++){
	out.println("abcde12345");
}

// autoFlush: 버퍼가 모두 채워졌을 때 방법을 정하는데에 쓰임
// true: 버퍼가 채워지면 자동으로 flush (데이터를 목적지로 정하고 버퍼 비우기)
// false: 버퍼가 채워지면 예외 발생
%>

</body>
</html>



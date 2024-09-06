<%@page import="membership.MemberDTO"%>
<%@page import="membership.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
// request로 아이디 비밀번호 추출
String userId = request.getParameter("user_id");
String userPwd = request.getParameter("user_pw");
// DAO객체 회원정보 얻어
//DB접속정보 얻어오기
String oracleDriver = application.getInitParameter("OracleDriver");
String oracleURL    = application.getInitParameter("OracleURL");
String oracleId     = application.getInitParameter("OracleId");
String oraclePwd    = application.getInitParameter("OraclePwd");

//회원데이블DAO를 이용해서 회원정보DTO 얻기
MemberDAO dao = new MemberDAO(oracleDriver,oracleURL,oracleId,oraclePwd);
MemberDTO memberDTO = dao.getMemberDTO(userId, userPwd);
dao.close();

System.out.print("로그인 아이디:"+memberDTO.getId());

// 회원의 아이디 값으로 로그인 성공실패처리
if(memberDTO.getId() != null){
	//로그인 성공
	//세션에 아이디, 이름 보관
	session.setAttribute("UserId", memberDTO.getId());
	session.setAttribute("UserName", memberDTO.getName());
	//로그인폼으로 이동
	response.sendRedirect("LoginForm.jsp");
} else {
	//로그인 실패
	//request에 에러메세지 등록하기
	//로그인폼으로 포워드
	System.out.print("로그인 실패");
	request.setAttribute("LoginErrMsg", "사용자정보가 일치하지 않습니다.");
	RequestDispatcher dispatcher = request.getRequestDispatcher("LoginForm.jsp");
	dispatcher.forward(request,response);	
}
%>
아이디
<%=userId %><br/>
비밀번호
<%=userPwd %><br/>
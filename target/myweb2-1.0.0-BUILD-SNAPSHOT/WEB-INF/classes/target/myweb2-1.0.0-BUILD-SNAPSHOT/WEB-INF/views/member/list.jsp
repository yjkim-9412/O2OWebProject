<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp4/list.jsp</title>
</head>
<body>
<%
//session "id" 가져오기
String id=(String)session.getAttribute("id");
// 세션값이 없으면 => loginForm.jsp이동
// if(id==null){
// 	response.sendRedirect("loginForm.jsp");
// }else{
// 	if(!(id.equals("admin"))){
// 		response.sendRedirect("main.jsp");
// 	}
// }

// //1단계  JDBC 프로그램 드라이버 로더 
// Class.forName("com.mysql.cj.jdbc.Driver");
// //2단계  디비연결  DriverManager 디비주소, 디비접속아이디, 디비접속비밀번호 
// //      연결정보 저장 => Connection
// String dbUrl="jdbc:mysql://localhost:3306/jspdb7?serverTimezone=Asia/Seoul";
// String dbUser="root";
// String dbPass="1234";
// Connection con =DriverManager.getConnection(dbUrl, dbUser, dbPass);
// //3단계  연결정보를 이용해서 sql구문 만들기 =>  PreparedStatement
// // 문자열 => sql구문 변경, 실행할수 있는 내장객체 => PreparedStatement
// String sql="select * from member";
// PreparedStatement pstmt=con.prepareStatement(sql);
// // 4단계   PreparedStatement sql구문 실행 (insert,update,delete) ,
// //        select 결과 저장 => ResultSet
// ResultSet rs=pstmt.executeQuery();
// // 5단계  ResultSet 저장된 내용을 출력, 저장
// // while 결과값 행접근 다음행 next() 다음행 => 데이터 있으면 true / 데이터 없으면 false
// // 열접근 => 출력
%>
<table border="1">
<tr><td>아이디</td><td>비밀번호</td><td>이름</td><td>가입날짜</td></tr>
<%
// while(rs.next()){
	%>
	<tr><td><%//=rs.getString("id") %></td><td><%//=rs.getString("pass") %></td>
	    <td><%//=rs.getString("name") %></td><td><%//=rs.getTimestamp("date") %></td></tr>
	<%
// }
%>
</table>
</body>
</html>
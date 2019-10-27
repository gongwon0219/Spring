<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<%
		String id = request.getParameter("id");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String write = request.getParameter("write");
	
	%>

	<%
		//1. 드라이버 설정
		Class.forName("com.mysql.jdbc.Driver");
		out.println("1. 드라이버 설정 성공!");
		
		//2. DB 연결
		String url = "jdbc:mysql://localhost:3306/spring"; //연결할 DB
		String user = "root"; //id
		String password = "1234"; //pw
		Connection con = DriverManager.getConnection(url, user, password);
		out.println("2. DB 연결 성공!");
		
		//3. SQL 결정
		String sql = "insert into bbs values(?,?,?,?)";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, id);
		ps.setString(2, title);
		ps.setString(3, content);
		ps.setString(4, write);
		out.println("3. SQL 결정 성공!");
		
		//4. SQL 전송
		ps.executeUpdate();		
		out.println("4. SQL 전송 성공!");
	%>

</body>
</html>
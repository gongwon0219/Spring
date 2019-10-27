<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<form action="dbConnector2.jsp" method="get">
		아이디 <input type="text" name="id"> <br>
		제목 <input type="text" name="title"> <br>
		내용 <input type="text" name="content"> <br>
		작성자 <input type="text" name="write"> <br>
		<input type="submit" value="서버로 전송">
	</form>

</body>
</html>
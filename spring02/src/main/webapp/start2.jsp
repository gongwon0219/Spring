<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<form action="insert2" method="get">
		아이디 <input type="text" name="id"> <br>
		제목 <input type="text" name="title"> <br>
		내용 <input type="text" name="content"> <br>
		작성자 <input type="text" name="write"> <br>
		<input type="submit" value="서버로 전송">
	</form>
	<hr color="red">
	
	<form action="delete2" method="post">
		아이디 <input type="text" name="id"> <br>
		<input type="submit" value="ID로 삭제">
	</form>
	<hr color="red">

	<form action="select2" method="post">
		아이디 <input type="text" name="id"> <br>
		<input type="submit" value="ID로 검색">
	</form>
	<hr color="red">

</body>
</html>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body style="background-color:yellow;">

	<h3>북마크 검색</h3>
	<hr color="red">
	
	<a href="selectAll">전체 검색</a>
	<hr color="green"> <br>
	
	
	<h3>아이디 검색</h3>
	<hr color="red">
	<form action="selectOne">
	검색할 아아디: <input type="text" name="id"> <br>
	<input type="submit" value="검색할 데이터 전송">
	</form>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body style="background: pink;">

	검색결과 입니다. <br>
	<hr color =  "red">
	
	검색한 id: ${ result.id } <br> <!-- result.getId() => EL -->
	검색한 name: ${ result.name } <br>
	검색한 site: ${ result.site } <br>

</body>
</html>
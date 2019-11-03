<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <!-- 지시자 -->    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body style="background: pink;">

	검색결과 입니다. <br>
	<hr color =  "red">
	
	<c:forEach var="result" items="${ list }">
	검색한 id: ${ result.id } <br> <!-- result.getId() => EL -->
	검색한 name: ${ result.name } <br>
	검색한 site: ${ result.site } <br>
	<hr color="lime">
	</c:forEach>
	
</body>
</html>
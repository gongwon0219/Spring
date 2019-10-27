<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="resources/css/out.css"> <!-- css 링크 작업 -->
<script type="text/javascript" src="resources/js/jquery-3.4.1.js"></script> <!-- JS 링크 작업 -->
<script type="text/javascript">
	//jquery를 이용한다.
	//body를 먼저 읽고 자바스크립트를 실행시켜주세요

	$(function() {
		//input에 입력한 것 가지고 오세요!
		//var inputValue = $('input').val() //input, #id, .in는 선택자
		//alert('입력되어있는 값은 '+inputValue)
		
		var idValue = $('#id').val()
		alert('입력되어 있는 id는 '+idValue)
		
		var pwValue = $('#pw').val()
		alert('입력되어 있는 pw는 '+pwValue)
		
		//var classValue = $('.in')
		
	});

</script>
</head>
<body>
	오늘은 3일차 입니다. <br>
	아이디 입력: <input type="text" name="id" value="root" id="id" class="in"> <br> <!-- name은 서버, id는 JS -->
	패스워드 입력: <input type="text" name="pw" value="1234" id="pw" class="in"> <br>
</body>
</html>
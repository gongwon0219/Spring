<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src="resources/js/jquery-3.4.1.js"></script>
<script type="text/javascript">
	$(function() { //body먼저 인식하고, 자바 스크립트해주세요.
		$('.btn1').click(function() {
			console.log('이미지 추가 버튼 클릭됨.')
			$('.d1').append('<img src=resources/img/가위.gif width=150 height=150>')
		});
	
		$('.btn2').click(function() {
			console.log('텍스트 추가 버튼 클릭됨.')
			//$('.d1').append('<font color=blue size=6>내가 추가됨.</font>')
			$('.d1').append('<span style=color:blue; font-size: xx-large;>내가 추가됨.</span>')
		});
		
	});
</script>
</head>
<body>
<input type="button" class="btn1" value="이미지 추가"> 
<input type="button" class="btn2" value="텍스트 추가"><br>

<div class="d1"> </div>






</body>
</html>
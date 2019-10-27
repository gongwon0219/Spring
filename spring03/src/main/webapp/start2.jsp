<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src="resources/js/jquery-3.4.1.js"></script> <!-- JS 링크 작업 -->
<script type="text/javascript">
	
	$(function() {
		
		//1. btn클래스의 버튼을 누르면
		$('.btn').click(function() {
			//2. id, pw 클래스의 값을 가지고 오세요
			idValue = $('.id').val()
			pwValue = $('.pw').val()
			//3. id, pw값 확인 출력
			console.log('입력한 ID>> '+idValue)
			console.log('입력한 PW>> '+pwValue)
			console.log('입력한 ID의 길이는>> '+idValue.length)
			
			if(idValue.length >= 5) {
				location.href="insert.do?id="+idValue+"&pw="+pwValue
			}
			else {
				//alert('입력한 ID가 너무 짧습니다. 5글자 이상 입력해주세요')
				$('.d1').text('입력한 ID가 너무 짧습니다. 5글자 이상 입력해주세요')
			}
			
			if(pwValue.length >= 5) {
				location.href="insert.do?id="+idValue+"&pw="+pwValue
			}
			else {
				//alert('입력한 PW가 너무 짧습니다. 5글자 이상 입력해주세요')
				$('.d2').text('입력한 PW가 너무 짧습니다. 5글자 이상 입력해주세요')
			}
			
		});
	});

</script>
</head>
<body>
	아이디 입력: <input type="text" name="id" class="id"> <br>
	<div class="d1" style="color: red;"></div> <br>
	패스워드 입력: <input type="text" name="pw" class="pw"> <br>
	<div class="d2" style="color: blue;"></div> <br>
	<input type="button" value="입력값 체크" class="btn">
</body>
</html>
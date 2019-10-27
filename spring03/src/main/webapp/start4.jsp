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
		$('.answer').keyup(function() {
			
			idValue = $('.id').val()
			if(idValue.length >= 5) {
				$('.d1').text('입력한 ID가 적당합니다')
			} //if
			else {
				$('.d1').text('입력한 ID가 너무 짧습니다. 5글자 이상 입력해주세요')
			} //else
				
			answer = $('.answer').val()
			correct = 'apple'
			if(correct == answer){
				$('.d2').text('정답입니다')
			}
			else{
				$('.d2').text('오답입니다.')
			}
				
		}); //keyup
	}); //$

</script>
</head>
<body>
	아이디 입력: <input type="text" name="id" class="id"> <br>
	<div class="d1" style="color: red;"></div> <br>
	과일이름 입력: <input type="text" name="answer" class="answer"> <br>
	<div class="d2" style="color: blue;"></div> <br>
</body>
</html>
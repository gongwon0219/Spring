<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="resources/css/out2.css"> <!-- css 링크 작업 -->
<script type="text/javascript" src="resources/js/jquery-3.4.1.js"></script> <!-- JS 링크 작업 -->
<script type="text/javascript">

	$(function() {
		var titleValue = $('.title').val()
		alert('입력되어있는 제목은 '+titleValue)
		
		var contentValue = $('.content').val()
		alert('입력되어있는 내용은 '+contentValue)
		
		var writerValue = $('.writer').val()
		alert('입력되어있는 작성자은 '+writerValue)
		
	});


</script>
</head>
<body>

	제목 <input type="text" name="title" class="title" value="spring"> <br>
	내용 <input type="text" name="content" class="content" value="funspring"> <br>
	작성자 <input type="text" name="writer" class="writer" value="park"> <br>

</body>
</html>
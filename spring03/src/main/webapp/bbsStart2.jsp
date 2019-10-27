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

		$('.btn').click(function() {
			
			titleValue = $('.title').val()
			contentValue = $('.content').val()
			writerValue = $('.writer').val()
			
			location.href="insert2.do?title="+titleValue+"&content="+contentValue+"&writer="+writerValue
			
		});
		
	});
	

</script>
</head>
<body>

	제목 <input type="text" name="title" class="title"> <br>
	내용 <input type="text" name="content" class="content"> <br>
	작성자 <input type="text" name="writer" class="writer"> <br>
	<input type="button" value="입력완료" class="btn">

</body>
</html>
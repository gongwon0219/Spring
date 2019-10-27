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
			$.ajax({
				url : " https://api.rss2json.com/v1/api.json?rss_url=http%3A%2F%2Fwww.chosun.com%2Fsite%2Fdata%2Frss%2Fent.xml&api_key=bqa5cnqbb6m2s438bpeexastzbfex4ic83unsago",
				date : {
					url: "http://www.chosun.com/site/data/rss/ent.xml",
					api_key: "bqa5cnqbb6m2s438bpeexastzbfex4ic83unsago",
					count: 20
				},						
				success : function(result) { 
					alert("조선일보 사이트와 연결 성공")
					alert(result)
				}
			});
		});
	});
</script>
</head>
<body>

<input type="button" class="btn1" value="신문기사 긁어오기"> 
<div class="d1"> </div>

</body>
</html>
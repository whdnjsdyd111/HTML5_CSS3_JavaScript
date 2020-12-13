<html> <!-- 이 파일을 톰캣 디렉토리의 webapps/Hello 에 둔다 -->
<head>
<title>Hello World</title>
</head>
<body>
	<%
		java.util.Date date = new java.util.Date(); 
	%>
	안녕하세요? 현재 시각은 <%= date %>입니다.
</body>
</html>
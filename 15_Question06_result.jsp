<!DOCTYPE html>
<html>
<head>
</head>
<body>
	<%	
		request.setCharacterEncoding("utf-8");
		String name = request.getParameter("name");
	%>
	텍스트 박스 안의 값은 <%= name %> 입니다.
</body>
</html>
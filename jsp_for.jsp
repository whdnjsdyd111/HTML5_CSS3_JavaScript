<%! int fontSize; %>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
	<%
		for( fontSize = 1; fontSize <= 6; fontSize++){
	%>
	<font color="red" size="<%= fontSize %>">
	�ȳ��ϼ���?
	</font><br/>
	<% } %>
</body>
</html>
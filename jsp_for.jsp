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
	안녕하세요?
	</font><br/>
	<% } %>
</body>
</html>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
	<%
		double r = Math.random();

		if(r > 0.60) {
	%>
			<h2 style="color: red"> ������ ����� ���Դϴ�!</h2>
			<p>Ȯ��: <%= r %></p>
	<%	} else {	%>
			<h2>������ ����� ���Դϴ�.</h2><p>Ȯ��: <%= r %></p>
	<%	} %>

	<a href="<%= request.getRequestURI() %>"><h3>�ٽýõ�</h3></a>
</body>
</html>
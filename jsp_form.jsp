<!DOCTYPE html>
<html>
<head>
</head>
<body>
	<h3>�����ϴ� ������ �����Ͻÿ�(���� ���� ����):</h3>
	<form method="get">
		<input type="checkbox" name="fruit" value="Apple">Apple
		<input type="checkbox" name="fruit" value="Banana">Banana
		<input type="checkbox" name="fruit" value="Strawberry">Strawberry
		<input type="submit" value="����">
	</form>

	<%	String[] fruits = request.getParameterValues("fruit");
		if(fruits != null) {	%>
			<h3> ����� ������ ������: </h3>
			<ul>
	<%			for(int i = 0; i < fruits.length; i++) {	%>
					<li><%= fruits[i] %></li>
	<%			}	%>
			</ul>
			<a href="<%= request.getRequestURI() %>">�ٽýõ�</a>
	<%	}	%>
</body>
</html>
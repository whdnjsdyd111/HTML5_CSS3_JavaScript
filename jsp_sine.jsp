<%@ page import="java.util.*, java.lang.*" %>
<%! int angles[] = {0, 30, 60, 90}; %>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
	<h1 align="center">
	�����Լ�
	</h>

	<table border="1" align="center">
		<th>����</th>
		<th>���ΰ�</th>
	<%	for(int i = 0; i < 4; i++) {	%>
			<tr>
				<td><%= angles[i] %></td>
				<td><%= Math.sin(Math.toRadians((double)angles[i])) %>
			</tr>
	<%	}	%>
	</table>
</body>
</html>
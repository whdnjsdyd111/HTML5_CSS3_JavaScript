<%@ page language="java" contentType="text/html; charset=utf-8"
			pageEncoding="utf-8" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<title>�Խñ� �Է�</title>
</head>
<body>
	<h3>�Խñ� �Է� ȭ��</h3>
	<form action="insert.jsp" method="post">
		<table border="2">
			<tr>
				<td>����</td>
				<td><input type="text" name="subject" size="60"></td>
			</tr>
			<tr>
				<td>�ۼ���</td>
				<td><input type="text" name="name" size="60"></td>
			</tr>
			<tr>
				<td>����</td>
				<td><textarea name="memo" cols="50" rows="5"></textarea></td>
			</tr>
			<tr>
			</tr>
			<tr>
				<td>�ۼ���¥</td>
				<td><input type="text" name="time" size="60"></td>
			</tr>
		</table>
		<br> <br> <input type="submit" value="�Խñ� ���"> <input type="reset" value="�ٽ� ����">
	</form>

	<a href="list.jsp"> �Խñ� ����Ʈ ���� </a>
	<br>
</body>
</html>
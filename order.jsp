<%@ page import="java.util.*, java.util.lang.*" %>
<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
			pageEncoding="utf-8" %>
<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>
<title>�¶��� ���� ����</title>
</head>
<body>
	<h1>���ͳ� ���α׷��� ����</h1>
	<h3>������ �Է��ϼ���:</h3>
	<form method="post">
		å ����: <input type="text" name="title"><br>
		<input type="submit" value="�˻�">
	</form>

	<%	String title = request.getParameter("title");

		if(title != null) {	%>
	<%		Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection conn = DriverManager.getConnection(
				"jdbc:oracle:thin:@localhost:1521:xe", "insa", "insa"
			);
			Statement stmt = conn.createStatement();

			String sqlStr = "SELECT * FROM books WHERE title LIKE ";
			sqlStr += "'%" + title + "%'";
			sqlStr += "ORDER BY title ASC";
			ResultSet rset = stmt.executeQuery(sqlStr);
	%>

	<hr>
	<form method="post" action="order_proc.jsp">
		<table border=1 cellpadding=5>
			<tr>
				<th>�ֹ�</th>
				<th>����</th>
				<th>����</th>
				<th>����</th>
				<th>�����ִ� ����</th>
			</tr>
	<%		while(rset.next()) {
				int id = rset.getInt("id");	%>
				<tr>
					<td><input type="checkbox" name="id" value="<%= id %>"></td>
					<td><%= rset.getString("author") %></td>
					<td><%= rset.getString("title") %></td>
					<td><%= rset.getString("price") %>��</td>
					<td><%= rset.getString("qty") %>��</td>
				</tr>
	<%		}	%>
	</table>
		<br> <input type="submit" value="�ֹ�"> <input type="reset" value="�ʱ�ȭ">
	</form>
	<a href="<%= request.getRequestURI() %>"><h3>�ٽ� �ֹ��ϱ�</h3></a>
	<%
			rset.close();
			stmt.close();
			conn.close();
		}
	%>
</body>
</html>
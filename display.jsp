<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
			pageEncoding="utf-8" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<title>�Խñ� ǥ��</title>
</head>
<body>
	<h3>�Խñ� ����</h3>
	<%
		String subject = "", memo = "", name = "", time = "", email = "";
		int id = Integer.parseInt(request.getParameter("id"));

		Connection conn = null;
		Statement stmt = null;

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			conn = DriverManager.getConnection(url, "insa", "insa");
		} catch(Exception e) {
			out.println("�����ͺ��̽� ���ӿ� ������ �ֽ��ϴ�.<hr>");
			out.println(e.getMessage());
			e.printStackTrace();
		}

		stmt = conn.createStatement();
		String sql = "SELECT * FROM message WHERE id = " + id;
		ResultSet rs = stmt.executeQuery(sql);

		while(rs.next()) {
			subject = rs.getString("subject");
			memo = rs.getString("memo");
			name = rs.getString("name");
			time = rs.getString("time");
			email = rs.getString("email");
		}
	%>

	<table border="2">
		<tr>
			<td>����</td>
			<td><%= subject %></td>
		</tr>
		<tr>
			<td>�ۼ���</td>
			<td><%= name %></td>
		</tr>
		<tr>
			<td>����</td>
			<td><%= memo %></td>
		</tr>
		<tr>
		</tr>
		<tr>
			<td>��¥</td>
			<td><%= time %></td>
		</tr>
		<tr>
			<td>�̸���</td>
			<td><%= email %></td>
		</tr>
	</table>
	<br> <br>
	<a href="list.jsp"> �Խ�Ŭ ����Ʈ ���� </a>
</body>
</html>
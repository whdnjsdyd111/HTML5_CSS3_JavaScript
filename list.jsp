<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
			pageEncoding="utf-8" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<title>�Խñ�</title>
</head>
<body>
	<h3>�Խñ� ����Ʈ<h3>
	<table border="2">
		<tr>
			<td>��ȣ</td>
			<td>����</td>
			<td>�ۼ���</td>
			<td>��¥</td>
			<td>�̸���</td>
		</tr>

	<%
		Connection conn = null;
		Statement stmt = null;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			conn = DriverManager.getConnection(url, "insa", "insa");
		} catch(Exception e){
			out.println("�����ͺ��̽� ���ӿ� ������ �ֽ��ϴ�. <hr>");
			out.println(e.getMessage());
			e.printStackTrace();
		}
		stmt = conn.createStatement();
		String sql = "SELECT * FROM message ORDER BY id ASC";
		ResultSet rs = stmt.executeQuery(sql);

		if(rs != null) {
			while(rs.next()) {
				int id = Integer.parseInt(rs.getString("id"));	%>
		
				<tr>
					<td><%= id %></td>
					<td><a href=display.jsp?id=<%= id %>>
						<%= rs.getString("subject") %></a></td>
					<td><%= rs.getString("name") %></td>
					<td><%= rs.getString("time") %></td>
					<td><%= rs.getString("email") %></td>
				</tr>
	<%		}
		}
	%>
	</table>

	<a href="write.jsp"> �Խñ� ���� </a>
	<%
		if(stmt != null)
			stmt.close();
		if(conn != null)
			conn.close();
	%>
</body>
</html>
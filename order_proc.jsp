<html>
<head>
<title>�ֹ�ó��ȭ��</title>
</head>
<body>
	<h1>���ͳ� ���α׷��� ����</h1>
	<h2>�ֹ����ּż� �����մϴ�.</h2>

	<%	String[] ids = request.getParameterValues("id");
		if(ids != null) {
	%>
	<%@ page import="java.sql.*" %>

	<%		Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection conn = DriverManager.getConnection(
				"jdbc:oracle:thin:@localhost:1521:xe", "insa", "insa"
			);
			Statement stmt = conn.createStatement();
			String sqlStr;
			int recordUpdated;
			ResultSet rset;
	%>

	<table border=2>
		<tr>
			<th>����</th>
			<th>����</th>
			<th>����</th>
			<th>����</th>
		</tr>
	<%		for(int i = 0; i < ids.length; i++) {
				sqlStr = "UPDATE books SET qty = qty - 1 WHERE id = " + ids[i];
				recordUpdated = stmt.executeUpdate(sqlStr);
				sqlStr = "SELECT * FROM books WHERE id = " + ids[i];
				rset = stmt.executeQuery(sqlStr);
				while(rset.next()) {	%>
					<tr>
						<td><%= rset.getString("author") %></td>
						<td><%= rset.getString("title") %></td>
						<td><%= rset.getInt("price") %></td>
						<td><%= rset.getInt("qty") %></td>
					</tr>
	<%			}
				rset.close();
			}
			stmt.close();
			conn.close();
		}
	%>
	</table>
	<a href="order.jsp"><h3>�ֹ�ȭ������ ���ư���</h3></a>
</body>
</html>
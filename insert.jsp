<%@ page import="java.sql.*" %>
<%@ page import="java.text.*" %>
<%@ page language="java" contentType="text/html; charset=utf-8" 
			pageEncoding="utf-8" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<title>Hello World</title>
</head>
<body>
	<%
		String name, email, subject, memo, time;
		name = request.getParameter("name");
		email = request.getParameter("email");
		time = request.getParameter("time");
		subject = request.getParameter("subject");
		memo = request.getParameter("memo");

		ResultSet rs = null;
		String sql;
		Connection conn = null;
		Statement stmt = null;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			conn = DriverManager.getConnection(url, "insa", "insa");
		} catch (Exception e) {
			out.println("�����ͺ��̽� ���ӿ� ������ �ֽ��ϴ�.");
			out.println(e.getMessage());
			e.printStackTrace();
		}
		stmt = conn.createStatement();

		int id = 1;
		sql = "SELECT id FROM message";

		ResultSet rset = stmt.executeQuery(sql);
		while(rset.next()) {
			id++;
		}

		sql = "INSERT INTO message " +
			  "(subject, name, time, memo, email, id) " +
			  "VALUES (" + "'" + subject + "', '" + name + "', '" + 
			  time + "', '" + memo + "', '" + email + "', '" + id + "')";

		try {
			stmt.executeUpdate(sql);
		} catch (Exception e) {
			out.println("�����ͺ��̽� ���� ������ �����Ͽ����ϴ�.");
			out.println(e.getMessage());
			e.printStackTrace();
		}
	%>

	<h3>�Խñ��� ��ϵǾ����ϴ�.</h3>
	<a href="list.jsp"> �Խñ� ����Ʈ ���� </a>
</body>
</html>
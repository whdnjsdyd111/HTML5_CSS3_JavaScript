<%@ page contentType="text/html; charset=utf-8" language="java" %>
<%@ page import="java.util.ArrayList" language="java" %>

<%
	ArrayList ar = new ArrayList();
	ar.add("ȫ�浿");
	ar.add("��ö��");
	ar.add("�迵��");
%>

<!DOCTYPE html>
<html>
<head>
</head>
<body>
	<%
		int i = 0;
		for(; i < ar.size(); i++) {
			out.println("���� ���: " + ar.get(i) + "<br/>");
		}
	%>
</body>
</html>
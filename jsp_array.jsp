<%@ page contentType="text/html; charset=utf-8" language="java" %>
<%
	String[] array = {"ȫ�浿", "��ö��", "�迵��"};
%>

<!DOCTYPE html>
<html>
<head>
</head>
<body>
	<%
		int i = 0;
		for(; i < array.length; i++) {
			out.println("�迭���: " + array[i] + "<br/>");
		}
	%>
</body>
</html>
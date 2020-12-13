<%@ page contentType="text/html; charset=utf-8" language="java" %>
<%
	String[] array = {"È«±æµ¿", "±èÃ¶¼ö", "±è¿µÈñ"};
%>

<!DOCTYPE html>
<html>
<head>
</head>
<body>
	<%
		int i = 0;
		for(; i < array.length; i++) {
			out.println("¹è¿­¿ä¼Ò: " + array[i] + "<br/>");
		}
	%>
</body>
</html>
<%@ page contentType="text/html; charset=utf-8" language="java" %>
<%@ page import="java.util.ArrayList" language="java" %>

<%
	ArrayList ar = new ArrayList();
	ar.add("È«±æµ¿");
	ar.add("±èÃ¶¼ö");
	ar.add("±è¿µÈñ");
%>

<!DOCTYPE html>
<html>
<head>
</head>
<body>
	<%
		int i = 0;
		for(; i < ar.size(); i++) {
			out.println("º£¿­ ¿ä¼Ò: " + ar.get(i) + "<br/>");
		}
	%>
</body>
</html>
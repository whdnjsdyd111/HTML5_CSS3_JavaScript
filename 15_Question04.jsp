<!DOCTYPE html>
<html>
<head>
</head>
<body>
	<%
		for(int i = 1; i <= 10; i++) {
			int sum = 0;
			for(int j = 1; j <= i; j++) {
				if(j == i) {
					out.print(j + "*" + j + "=");
				} else {
					out.print(j + "*" + j + "+");`
				}
				sum += j * j;
			}
			out.println(sum + "<br>");
		}
	%>
</body>
</html>
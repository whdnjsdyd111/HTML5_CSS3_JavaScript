<!DOCTYPE html>
<html>
<head>
	<style>
		p {
			background-color: yellow;
		}
	</style>
</head>
<body>
	<%
		for(int i = 1; i <= 10; i++) {
			int sum = 0;
			String p = "";
			for(int j = 1; j <= i; j++) {
				if(j == i) {
					p += j + "*" + j + "=";
				} else {
					p += j + "*" + j + "+";
				}
				sum += j * j;
			}
			p += sum;	%>
			<p><%= p %></p>
	<%
		}
	%>
</body>
</html>
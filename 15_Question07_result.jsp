<!DOCTYPE html>
<html>
<head>
</head>
<body>
	<%	
		request.setCharacterEncoding("utf-8");
		String name = request.getParameter("calcul");
		int first = Integer.parseInt(request.getParameter("first"));
		int second = Integer.parseInt(request.getParameter("second"));
		int result;

		if(name.equals("add")) {
			result = first + second;
		} else if(name.equals("multi")) {
			result = first * second;
		} else {
			result = first / second;
		}
	%>
	연산의 결과는 <%= result %> 입니다.
</body>
</html>
<html> <!-- �� ������ ��Ĺ ���丮�� webapps/Hello �� �д� -->
<head>
<title>Hello World</title>
</head>
<body>
	<%
		System.out.println( "��¥�� ����Ͽ� ����." );
		java.util.Date date = new java.util.Date();
	%> 
	�ȳ��ϼ���? ���� �ð���
	<%
		out.println( String.valueof( date ) );
	%>
	�Դϴ�.
</body>
</html>
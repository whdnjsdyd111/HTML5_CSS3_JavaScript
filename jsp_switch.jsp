<%! int day = 2; %>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
	<%
		switch(day){
			case 0:
				out.println("������ �Ͽ����Դϴ�.");
				break;
			case 1:
				out.println("������ �������Դϴ�.");
				break;
			case 2:
				out.println("������ ȭ�����Դϴ�.");
				break;
			case 3:
				out.println("������ �������Դϴ�.");
				break;
			case 4:
				out.println("������ ������Դϴ�.");
				break;
			case 5:
				out.println("������ �ݿ����Դϴ�.");
				break;
			case 6:
				out.println("������ ������Դϴ�.");
				break;
			default:
				out.println("�߸��� �����Դϴ�.");
		}
	%>
</body>
</html>
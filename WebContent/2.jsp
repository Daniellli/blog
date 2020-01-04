<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    				<a onclick="zilei();">查看消息</a>
    				<script>
						var c=null;
						function zilei(){
							c=window.open("Serverchart.jsp","","width=600 height=400 top=200 left=400");
						}
						function ziclose(){
							c.close();
						}
					</script>
</body>
</html>
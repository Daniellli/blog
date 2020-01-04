<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
				<c:if test="${sessionScope.currentUser.userName!=null}">		
					<a onclick="zilei()">查看消息</a>
					<script>
						var b=null;
							function zilei(){
								b=window.open("Clientchart.jsp","","width=750 height=550");
							}
							function ziclose(){
								b.close();
							
							}
					</script>
				</c:if>
				<c:if test="${sessionScope.currentUser.userName==null}">
					<a href="content/login.jsp" onclick="confirm('你好,请先登录')">查看消息<br></a>
				</c:if>
				<!-- 结束 -->
</body>
</html>
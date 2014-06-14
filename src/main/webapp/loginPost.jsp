<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="user" class="com.example.servletjspdemo.domain.User" scope="session" />
<jsp:useBean id="userService" class="com.example.servletjspdemo.service.UserService" scope="application"/>
<jsp:setProperty property="*" name="user"/>

<%
	if(userService.authenticate(user))
		response.sendRedirect("getPersonData.jsp");
	else
		response.sendRedirect("login.jsp");
%>

</body>
</html>
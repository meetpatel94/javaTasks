<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Dashboard</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<h1>Admin Dashboard</h1><br>
<h3>Welcome, ${user.firstName } </h3><br><br>
<a href="logout">Log Out</a><br>
<a href="newstate">Add New State</a>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
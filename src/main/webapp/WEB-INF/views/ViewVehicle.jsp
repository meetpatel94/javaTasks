<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ViewVehicle</title>
</head>
<body>
<h2>View Vehicle</h2>

<table border="1">

		<tr>
			<th>ParkingCode</th>
			<th>VehicleNo</th>
			<th>VehicleType</th>
			<th>FirstName</th>
			<th>LastName</th>
		</tr>
		<c:forEach items="${vehicle}" var="v">
			<tr>
				<td>${v[1]}</td>
				<td>${v[3]}</td>
				<td>${v[4]}</td>
				<td>${v[5]}</td>
				<td>${v[6]}</td>
			</tr>
		</c:forEach>
	</table>
	<br><br>
       
   <a href="listvehicle">Back</a>    
        
</body>
</html>
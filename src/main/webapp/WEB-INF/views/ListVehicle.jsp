<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List Vehicle</title>
</head>
<body>
	<h2>List Vehicle</h2>

	<table border="1">

		<tr>
			<th>ParkingCode</th>
			<th>VehicleNo</th>
			<th>VehicleType</th>
			<th>FirstName</th>
			<th>LastName</th>
		</tr>
		<c:forEach items="${allVehicle}" var="v">
			<tr>
				<td>${v[1]}</td>
				<td>${v[3]}</td>
				<td>${v[4]}</td>
				<td>${v[5]}</td>
				<td>${v[6]}</td>
				<td><a href="viewvehicle?vehicleId=${v[0] }">View</a> |
				<a href="editvehicle?vehicleId=${v[0] }">Edit</a></td>
			</tr>
		</c:forEach>
	</table>
	<br><br>
	<a href="newvehicle">New Vehicle</a>
</body>
</html>
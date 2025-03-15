<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="updatevehicle" method="post">
		ParkingCode : <input type="text" name="parkingCode" value="${vehicle.parkingCode }" /><br>
		<br> VehicleNo : <input type="text" name="vehicleNo" value="${vehicle.vehicleNo }" /><br>
		<br> VehicleType: <input type="text" name="vehicleType" value="${vehicle.vehicleType }" /><br>
		<input type="hidden" name="vehicleId" value="${vehicle.vehicleId }" />
		<br> <input type="submit" value="Add Vehicle" />
	</form>
</body>
</html>
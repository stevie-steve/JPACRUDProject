<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="addBoondock.do" method="POST">

	Boondock Name:
	<input type="text" name="name">
	<br> Is it Free?:
	<input type="text" name="free">
	<br> Location:
	<input type="text" name="location" value="City, State">
	<br> GPS Latitude:
	<input type="text" name="gpsLatitude">
	<br> GPS Longitude:
	<input type="text" name="gpsLongitude">
	<br> Elevation:
	<input type="text" name="elevation">
	<br> Land Management:
	<input type="text" name="management">
	<br> Activities
	<input type="text" name="activities">
	<br> Average Rating of Boondock:
	<input type="text" name="averageRating">
	<br> Number of Reviews:
	<input type="text" name="numberOfReviews">
	<br> Insert Map Image:
	<input type="text" name="mapImage">
	<br> Insert Link for Local Weather:
	<input type="text" name="currentWeather">
	<br> Length of Allowed Stay:
	<input type="text" name="lengthOfAllowedStay">
	<br> Insert a Photo:
	<input type="text" name="photo">
<br>
	<input type="submit" value="Create your Boondock" />
</form>
</body>
</html>
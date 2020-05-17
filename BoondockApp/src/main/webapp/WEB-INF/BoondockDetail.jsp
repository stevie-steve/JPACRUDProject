<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Boondock Spot Details</title>
<br>
<a href="/" button type="button" class="btn btn-outline-primary">Home</a>
</head>
<body>

	<h1>${boondock.name}</h1>
	<h4>Free Camping: ${boondock.free}</h4>
	<h4>Location: ${boondock.location}</h4>
	<h4>Latitude: ${boondock.gpsLatitude} N</h4>
	<h4>Longitude: ${boondock.gpsLongitude} W</h4>
	<h4>Elevation: ${boondock.elevation}' above sea level</h4>
	<h4>Location Manager: ${boondock.management}</h4>
	<h4>Amenities/things to do: ${boondock.activities}</h4>
	<h4>Average Rating: ${boondock.averageRating}</h4>
	<h4>Amount of Reviews: ${boondock.numberOfReviews}</h4>
	<h4>
		Map: <img src="${boondock.mapImage}"></img>
	</h4>
	<h4>
		Current Weather: <img src="${boondock.currentWeather}"></img>
	</h4>
	<h4>Length of Allowed Stay: ${boondock.lengthOfAllowedStay}</h4>
	<h4>
		Photo: <img src="${boondock.photo}"></img>
	</h4>
	<br>
	<a href="/" button type="button" class="btn btn-outline-primary">Home</a>
</body>
</html>
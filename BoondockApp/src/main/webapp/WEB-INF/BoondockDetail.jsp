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

	<form action="updateBoondock.do" method="POST">

		<div class="form-group">
			<label for="name">Boondock Spot Name</label><br> <input
				type="text" name="name" id="name" value="${boondock.name}" /><br>
		</div>
		<br> <br>
		<div class="form-group">
			<label for="free">Free Boondocking:</label><br> <input
				type="text" name="free" id="name" value="${boondock.free}" /><br>
		</div>
		<br> <br>
		<div class="form-group">
			<label for="location">Location:</label><br> <input type="text"
				name="location" id="location" value="${boondock.location}" /><br>
		</div>
		<br> <br>
		<div class="form-group">
			<label for="gpsLatitude">GPS Latitude</label><br> <input
				type="text" name="gpsLatitude" id="gpsLatitude"
				value="${boondock.gpsLatitude}" /><br>
		</div>
		<br> <br>
		<div class="form-group">
			<label for="gpsLongitude">GPS Longitude</label><br> <input
				type="text" name="gpsLongitude" id="gpsLongitude"
				value="${boondock.gpsLongitude}" /><br>
		</div>
		<br> <br>
		<div class="form-group">
			<label for="elevation">Elevation(in feet)</label><br> <input
				type="text" name="elevation" id="elevation"
				value="${boondock.elevation}" /><br>
		</div>
		<br> <br>

		<div class="form-group">
			<label for="management">Land Management</label><br> <input
				type="text" name="management" id="management"
				value="${boondock.management}" /><br>
		</div>
		<br> <br>
		<div class="form-group">
			<label for="activities">Activities</label><br> <input
				type="text" name="activities" id="activities"
				value="${boondock.activities}" /><br>
		</div>
		<br> <br>
		<div class="form-group">
			<label for="averageRating">Average Rating(1-5)</label><br> <input
				type="text" name="averageRating" id="averageRating"
				value="${boondock.averageRating}" /><br>
		</div>
		<br> <br>
		<div class="form-group">
			<label for="numberOfReviews">Amount Of Reviews</label><br> <input
				type="text" name="numberOfReviews" id="numberOfReviews"
				value="${boondock.numberOfReviews}" /><br>
		</div>
		<br> <br>
		<div class="form-group">
			<label for="mapImage">Map:</label> <br> <input type="text"
				name="mapImage" id="mapImage" value="${boondock.mapImage}" /><br>
			Add Google Maps URL to above field to change/add Mapped location
		</div>
		<br> <br>

		<div class="form-group">
			<label for="currentWeather">Current Weather <br> <img
				src="${boondock.currentWeather}"></img><br>
			</label><br> <input type="text" name="currentWeather"
				id="currentWeather" value="${boondock.currentWeather}" /><br>
			Add URL to above filed to change/add weather source
		</div>
		<br> <br>
		<div class="form-group">
			<label for="lengthOfAllowedStay">length Of Allowed Stay(in
				days)</label><br> <input type="text" name="lengthOfAllowedStay"
				id="lengthOfAllowedStay" value="${boondock.lengthOfAllowedStay}" /><br>
		</div>
		<br> <br>
		<div class="form-group">
			Photo<br> <img src="${boondock.photo}"><br> <label
				for="photo"> </label> <input type="text" name="photo" id="photo"
				value="${boondock.photo}" /><br> Add URL to above field to
			add/change photo
		</div>
		<br> <br> <input type="hidden" value="${boondock.id}"
			name="id" /> <input type="submit" value="Update Boondock" />

	</form>
<br> <br> 
	<form action="destroyBoondock.do" method="POST">
		<strong><em>${boondock.name}</em></strong> <input type="hidden"
			name="id" value="${boondock.id}" /> <input type="submit" button
			type="button" value="Delete This Boondock Location" class="btn btn-outline-primary" />
	</form>
	<br>
	<br>

</body>
</html>